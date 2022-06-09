.PHONY: version doctor

PANA_SCRIPT=../../tool/verify_pub_score.sh 100

PI_PATH= packages/mad_pay_platform_interface
IOS_PATH= packages/mad_pay_ios
ANDROID_PATH= packages/mad_pay_android
PAY_PATH= packages/mad_pay
EXAMPLE_PATH= example

FVM = fvm
FVM_FLUTTER = $(FVM) flutter
FVM_DART = $(FVM) dart


init:
	$(FVM) use 3.0.1 --force; $(FVM_DART) pub global activate protoc_plugin; $(FVM_DART) pub global activate pana;

version:
	$(FVM_FLUTTER) --version; $(FVM_DART) --version;

doctor:
	$(FVM_FLUTTER) doctor;

ifeq (bump, $(firstword $(MAKECMDGOALS)))
  runargs := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))
  $(eval $(runargs):;@true)
endif
bump:
	./tool/bump-version.sh $(filter-out $@,$(MAKECMDGOALS))

proto:
	./tool/gen.sh

pub_get: pub_get_pi pub_get_ios pub_get_android pub_get_pay pub_get_example

pub_get_pi: 
	cd $(PI_PATH); $(FVM_FLUTTER) packages get;

pub_get_ios: 
	cd $(IOS_PATH); $(FVM_FLUTTER) packages get;

pub_get_android: 
	cd $(ANDROID_PATH); $(FVM_FLUTTER) packages get;

pub_get_pay: 
	cd $(PAY_PATH); $(FVM_FLUTTER) packages get;

pub_get_example: 
	cd $(EXAMPLE_PATH); $(FVM_FLUTTER) packages get;

clean: clean_pi clean_ios clean_android clean_pay clean_example

clean_pi:
	cd $(PI_PATH); $(FVM_FLUTTER) clean;

clean_ios:
	cd $(IOS_PATH); $(FVM_FLUTTER) clean;

clean_android:
	cd $(ANDROID_PATH); $(FVM_FLUTTER) clean;

clean_pay:
	cd $(PAY_PATH); $(FVM_FLUTTER) clean;

clean_example:
	cd $(EXAMPLE_PATH); $(FVM_FLUTTER) clean;

fix: fix_pi fix_ios fix_android fix_pay fix_example

fix_pi:
	cd $(PI_PATH); $(FVM_FLUTTER) format .;

fix_ios:
	cd $(IOS_PATH); $(FVM_FLUTTER) format .;

fix_android:
	cd $(ANDROID_PATH); $(FVM_FLUTTER) format .;

fix_pay:
	cd $(PAY_PATH); $(FVM_FLUTTER) format .;

fix_example:
	cd $(EXAMPLE_PATH); $(FVM_FLUTTER) format .;

analyze: analyze_pi analyze_ios analyze_android analyze_pay analyze_example

analyze_pi:
	cd $(PI_PATH); $(FVM_FLUTTER) analyze . --fatal-infos;

analyze_ios:
	cd $(IOS_PATH); $(FVM_FLUTTER) analyze . --fatal-infos;

analyze_android:
	cd $(ANDROID_PATH); $(FVM_FLUTTER) analyze . --fatal-infos;

analyze_pay:
	cd $(PAY_PATH); $(FVM_FLUTTER) analyze . --fatal-infos;

analyze_example:
	cd $(EXAMPLE_PATH); $(FVM_FLUTTER) analyze . --fatal-infos;

pana: pana_pi pana_ios pana_android pana_pay

pana_pi:
	cd $(PI_PATH); $(PANA_SCRIPT);

pana_ios:
	cd $(IOS_PATH); $(PANA_SCRIPT);

pana_android:
	cd $(ANDROID_PATH); $(PANA_SCRIPT);

pana_pay:
	cd $(PAY_PATH); $(PANA_SCRIPT);