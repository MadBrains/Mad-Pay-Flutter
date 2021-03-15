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

    static func getMerchantCapabilities(_ merchantCapabilities: Apple_MerchantCapabilities) -> PKMerchantCapability {
        switch (merchantCapabilities) {
        case Apple_MerchantCapabilities.threeds:
            return PKMerchantCapability.capability3DS
        case Apple_MerchantCapabilities.credit:
            return PKMerchantCapability.capabilityCredit
        case Apple_MerchantCapabilities.debit:
            return PKMerchantCapability.capabilityDebit
        case Apple_MerchantCapabilities.emv:
            return PKMerchantCapability.capabilityEMV
        default:
            return PKMerchantCapability.capability3DS
        }
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

        contact.emailAddress = appleContact.emailAddres
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
