.PHONY: version doctor

PANA_SCRIPT=../../tool/verify_pub_score.sh 100

PACKAGES_PATH= packages/mad_pay_platform_interface packages/mad_pay_ios packages/mad_pay_android packages/mad_pay
PACKAGES_WITH_EXAMPLE_PATH= $(PACKAGES_PATH) example

FVM = fvm
FVM_FLUTTER = $(FVM) flutter
FVM_DART = $(FVM) dart


init:
	$(FVM) use 3.3.5 --force; $(FVM_DART) pub global activate protoc_plugin; $(FVM_DART) pub global activate pana;

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

pub_get:
	$(foreach v, $(PACKAGES_WITH_EXAMPLE_PATH), cd $(v); $(FVM_FLUTTER) packages get; cd ../..;)

clean:
	$(foreach v, $(PACKAGES_WITH_EXAMPLE_PATH), cd $(v); $(FVM_FLUTTER) clean; cd ../..;)

format:
	$(foreach v, $(PACKAGES_WITH_EXAMPLE_PATH), cd $(v); $(FVM_FLUTTER) format .; cd ../..;)

analyze:
	$(foreach v, $(PACKAGES_PATH), cd $(v); $(FVM_FLUTTER) analyze . --fatal-infos; cd ../..;)

pana:
	$(foreach v, $(PACKAGES_PATH), cd $(v); $(PANA_SCRIPT); cd ../..;)