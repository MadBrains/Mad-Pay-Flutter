import PassKit

class PaymentNetworkHelper {
    private static func decodePaymentNetwork(_ paymentNetwork: PaymentNetwork) -> PKPaymentNetwork? {
        switch (paymentNetwork) {
        case PaymentNetwork.visa:
            return .visa
        case PaymentNetwork.mastercard:
            return .masterCard
        case PaymentNetwork.amex:
            return .amex
        case PaymentNetwork.interact:
            if #available(iOS 9.2, *) {
                return .interac
            }
            return nil
        case PaymentNetwork.discover:
            if #available(iOS 9.0, *) {
                return .discover
            }
            return nil
        case PaymentNetwork.jcb:
            if #available(iOS 10.1, *) {
                return .JCB
            }
            return nil
        case PaymentNetwork.maestro:
            if #available(iOS 12.0, *) {
                return .maestro
            }
            return nil
        case PaymentNetwork.electron:
            if #available(iOS 12.0, *) {
                return .electron
            }
            return nil
        case PaymentNetwork.cartesbancarries:
            if #available(iOS 10.3, *) {
                return .carteBancaire
            } else if #available(iOS 11.0, *) {
                return .carteBancaires
            } else if #available(iOS 11.2, *) {
                return .cartesBancaires
            }
            return nil
        case PaymentNetwork.unionpay:
            if #available(iOS 9.2, *) {
                return .chinaUnionPay
            }
            return nil
        case PaymentNetwork.eftpos:
            if #available(iOS 12.0, *) {
                return .eftpos
            }
            return nil
        case PaymentNetwork.elo:
            if #available(iOS 12.1.1, *) {
                return .elo
            }
            return nil
        case PaymentNetwork.idcredit:
            if #available(iOS 10.3, *) {
                return .idCredit
            }
            return nil
        case PaymentNetwork.mada:
            if #available(iOS 12.1.1, *) {
                return .mada
            }
            return nil
        case PaymentNetwork.privatelabel:
            if #available(iOS 9.0, *) {
                return .privateLabel
            }
            return nil
        case PaymentNetwork.quicpay:
            if #available(iOS 10.3, *) {
                return .quicPay
            }
            return nil
        case PaymentNetwork.suica:
            if #available(iOS 10.1, *) {
                return .suica
            }
            return nil
        case PaymentNetwork.vpay:
            if #available(iOS 12.0, *) {
                return .vPay
            }
            return nil
        default:
            return nil
        }
    }
    
    static func getPaymentNetworks(_ paymentNetwork: [PaymentNetwork]) -> [PKPaymentNetwork] {
        paymentNetwork.compactMap({ decodePaymentNetwork($0) })
    }
    
    static func getMerchantCapabilities(_ merchantCapabilities: [Apple_MerchantCapabilities]?) -> PKMerchantCapability {

        if(merchantCapabilities == nil){
            return .capability3DS;
        }

        var decodedCapabilities: PKMerchantCapability = [];

        if(merchantCapabilities!.contains(Apple_MerchantCapabilities.threeds) ){
            decodedCapabilities = decodedCapabilities.union(.capability3DS)
        }
        if(merchantCapabilities!.contains(Apple_MerchantCapabilities.emv)){
            decodedCapabilities = decodedCapabilities.union(.capabilityEMV)
        }
        if(merchantCapabilities!.contains(Apple_MerchantCapabilities.credit)){
            decodedCapabilities = decodedCapabilities.union(.capabilityCredit)
        }
        if(merchantCapabilities!.contains(Apple_MerchantCapabilities.debit)){
            decodedCapabilities = decodedCapabilities.union(.capabilityDebit)
        }
        if(!merchantCapabilities!.contains(Apple_MerchantCapabilities.threeds) && !merchantCapabilities!.contains(Apple_MerchantCapabilities.emv)){
            decodedCapabilities = decodedCapabilities.union(.capability3DS)
        }

        return decodedCapabilities;
    }
    
    static func getShippingType(_ shippingType: Apple_ShippingType) -> PKShippingType {
        switch (shippingType) {
        case Apple_ShippingType.shipping:
            return PKShippingType.shipping
        case Apple_ShippingType.delivery:
            return PKShippingType.delivery
        case Apple_ShippingType.servicePickup:
            return PKShippingType.servicePickup
        case Apple_ShippingType.storePickup:
            return PKShippingType.storePickup
        default:
            return PKShippingType.shipping
        }
    }
    
    static func getPaymentSummaryItem(_ paymentItems: Array<PaymentItem>) -> Array<PKPaymentSummaryItem> {
        var paymentSummaryItem = [PKPaymentSummaryItem]()
        paymentItems.forEach { item in
            let itemTitle = item.name
            let itemPrice = item.price
            let payment = PKPaymentSummaryItem(label: itemTitle, amount: NSDecimalNumber(floatLiteral: itemPrice))
            paymentSummaryItem.append(payment)
        }
        return paymentSummaryItem
    }
    
    static func getShippingMethods(_ methods: Array<Apple_ShippingMethod>) -> Array<PKShippingMethod>? {
        var shippingMethods = [PKShippingMethod]()
        methods.forEach { item in
            let itemTitle = item.name
            let itemPrice = item.price
            let shippingMethod = PKShippingMethod(label: itemTitle, amount: NSDecimalNumber(floatLiteral: itemPrice))
            shippingMethod.identifier = item.identifier
            shippingMethod.detail = item.detail
            shippingMethods.append(shippingMethod)
        }
        return shippingMethods
    }
    
    static func getContactFields(_ contacts: Array<String>) -> Set<PKContactField> {
        var items = Set<PKContactField>()
        contacts.forEach { item in
            items.insert(PKContactField(rawValue: item))
        }
        return items
    }
    
    static func getContact(_ appleContact: Apple_Contact) -> PKContact? {
        let contact = PKContact()
        
        contact.emailAddress = appleContact.emailAddress
        if appleContact.hasName {
            contact.name = getPersonNameComponents(appleContact.name)
        }
        if appleContact.hasPostalAddress {
            contact.postalAddress = getPostalAddress(appleContact.postalAddress)
        }
        if !appleContact.phoneNumber.isEmpty {
            contact.phoneNumber = CNPhoneNumber(stringValue: appleContact.phoneNumber)
        }
        return contact
    }
    
    private static func getPersonNameComponents(_ personName: Apple_PersonNameComponents) -> PersonNameComponents {
        var name = PersonNameComponents()
        name.namePrefix = personName.namePrefix
        name.familyName = personName.familyName
        name.givenName = personName.givenName
        name.middleName = personName.middleName
        name.nameSuffix = personName.nameSuffix
        name.nickname = personName.nickname
        if personName.hasPhoneticRepresentation {
            name.phoneticRepresentation = getPersonNameComponents(personName.phoneticRepresentation)
        }
        return name
    }
    
    private static func getPostalAddress(_ postalAddress: Apple_PostalAddress) -> CNPostalAddress {
        let address = CNMutablePostalAddress()
        address.city = postalAddress.city
        address.country = postalAddress.country
        address.isoCountryCode = postalAddress.isoCountryCode
        address.postalCode = postalAddress.postalCode
        address.state = postalAddress.state
        address.street = postalAddress.street
        if #available(iOS 10.3, *) {
            address.subAdministrativeArea = postalAddress.subAdministrativeArea
            address.subLocality = postalAddress.subLocality
        }
        
        return address
    }
}

extension PKPayment: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.token, forKey: .token)
        try container.encode(self.billingContact, forKey: .billingContact)
        try container.encode(self.shippingContact, forKey: .shippingContact)
        try container.encode(self.shippingMethod, forKey: .shippingMethod)
    }
    
    enum CodingKeys: String, CodingKey {
        case token
        case billingContact
        case shippingContact
        case shippingAddress
        case billingAddress
        case shippingMethod
    }
}

extension PKShippingMethod: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.identifier, forKey: .identifier)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.label, forKey: .label)
    }
    
    enum CodingKeys: String, CodingKey {
        case identifier
        case detail
        case label
    }
}

extension PKPaymentToken: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.paymentMethod, forKey: .paymentMethod)
        try container.encode(self.paymentData, forKey: .paymentData)
        try container.encode(self.transactionIdentifier, forKey: .transactionIdentifier)
    }
    
    enum CodingKeys: String, CodingKey {
        case paymentNetwork
        case paymentMethod
        case paymentData
        case paymentInstrumentName
        case transactionIdentifier
    }
}

extension PKPaymentMethod: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if #available(iOS 13.0, *) {
            try container.encode(self.billingAddress, forKey: .billingAddress)
        }
        try container.encode(self.displayName, forKey: .displayName)
        try container.encode(self.network?.rawValue, forKey: .network)
        try container.encode(self.paymentPass, forKey: .paymentPass)
        if #available(iOS 13.4, *) {
            try container.encode(self.secureElementPass, forKey: .secureElementPass)
        }
        try container.encode(self.type.rawValue, forKey: .type)
    }
    
    enum CodingKeys: String, CodingKey {
        case billingAddress
        case displayName
        case network
        case paymentPass
        case secureElementPass
        case type
    }
}


@available(iOS 13.4, *)
extension PKSecureElementPass: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.secureElementPass, forKey: .secureElementPass)
        try container.encode(self.paymentPass, forKey: .paymentPass)
    }
    
    enum CodingKeys: String, CodingKey {
        case secureElementPass
        case paymentPass
    }
}

extension PKContact: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.name, forKey: .name)
        if #available(iOS 9.2, *) {
            try container.encode(self.supplementarySubLocality, forKey: .supplementarySubLocality)
        }
        try container.encode(self.postalAddress, forKey: .postalAddress)
        try container.encode(self.phoneNumber, forKey: .phoneNumber)
        try container.encode(self.emailAddress, forKey: .emailAddress)
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case supplementarySubLocality
        case postalAddress
        case phoneNumber
        case emailAddress
    }
}

extension CNPostalAddress: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if #available(iOS 10.3, *) {
            try container.encode(self.subLocality, forKey: .subLocality)
            try container.encode(self.subAdministrativeArea, forKey: .subAdministrativeArea)
        }
        try container.encode(self.street, forKey: .street)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.postalCode, forKey: .postalCode)
        try container.encode(self.isoCountryCode, forKey: .isoCountryCode)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.city, forKey: .city)
    }
    
    enum CodingKeys: String, CodingKey {
        case subLocality
        case subAdministrativeArea
        case street
        case state
        case postalCode
        case isoCountryCode
        case country
        case city
    }
}

extension CNPhoneNumber: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.stringValue, forKey: .stringValue)
    }
    
    enum CodingKeys: String, CodingKey {
        case stringValue
    }
}

extension CNContact: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.identifier, forKey: .identifier)
        try container.encode(self.contactType.rawValue, forKey: .contactType)
        try container.encode(self.namePrefix, forKey: .namePrefix)
        try container.encode(self.givenName, forKey: .givenName)
        try container.encode(self.middleName, forKey: .middleName)
        try container.encode(self.familyName, forKey: .familyName)
        try container.encode(self.previousFamilyName, forKey: .previousFamilyName)
        try container.encode(self.nameSuffix, forKey: .nameSuffix)
        try container.encode(self.nickname, forKey: .nickname)
        try container.encode(self.organizationName, forKey: .organizationName)
        try container.encode(self.departmentName, forKey: .departmentName)
        try container.encode(self.jobTitle, forKey: .jobTitle)
        try container.encode(self.phoneticGivenName, forKey: .phoneticGivenName)
        try container.encode(self.phoneticMiddleName, forKey: .phoneticMiddleName)
        try container.encode(self.phoneticFamilyName, forKey: .phoneticFamilyName)
        try container.encode(self.note, forKey: .note)
        try container.encode(self.imageData, forKey: .imageData)
        try container.encode(self.thumbnailImageData, forKey: .thumbnailImageData)
        try container.encode(self.imageDataAvailable, forKey: .imageDataAvailable)
        //        try container.encode(self.phoneNumbers, forKey: .phoneNumbers)
        //        try container.encode(self.emailAddresses, forKey: .emailAddresses)
        //        try container.encode(self.postalAddresses, forKey: .postalAddresses)
        //        try container.encode(self.urlAddresses, forKey: .urlAddresses)
        //        try container.encode(self.contactRelations, forKey: .contactRelations)
        //        try container.encode(self.socialProfiles, forKey: .socialProfiles)
        //        try container.encode(self.instantMessageAddresses, forKey: .instantMessageAddresses)
        try container.encode(self.birthday, forKey: .birthday)
        try container.encode(self.nonGregorianBirthday, forKey: .nonGregorianBirthday)
        //        try container.encode(self.dates, forKey: .dates)
    }
    
    enum CodingKeys: String, CodingKey {
        case identifier
        case contactType
        case namePrefix
        case givenName
        case middleName
        case familyName
        case previousFamilyName
        case nameSuffix
        case nickname
        case organizationName
        case departmentName
        case jobTitle
        case phoneticGivenName
        case phoneticMiddleName
        case phoneticFamilyName
        case phoneticOrganizationName
        case note
        case imageData
        case thumbnailImageData
        case imageDataAvailable
        case phoneNumbers
        case emailAddresses
        case postalAddresses
        case urlAddresses
        case contactRelations
        case socialProfiles
        case instantMessageAddresses
        case birthday
        case nonGregorianBirthday
        case dates
    }
}
