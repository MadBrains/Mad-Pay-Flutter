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

    static func getMerchantCapabilities(_ merchantCapabilities: MerchantCapabilities) -> PKMerchantCapability {
        switch (merchantCapabilities) {
        case MerchantCapabilities.threeds:
            return PKMerchantCapability.capability3DS
        case MerchantCapabilities.credit:
            return PKMerchantCapability.capabilityCredit
        case MerchantCapabilities.debit:
            return PKMerchantCapability.capabilityDebit
        case MerchantCapabilities.emv:
            return PKMerchantCapability.capabilityEMV
        default:
            return PKMerchantCapability.capability3DS
        }
    }

    static func getShippingType(_ shippingType: ShippingType) -> PKShippingType {
        switch (shippingType) {
        case ShippingType.shipping:
            return PKShippingType.shipping
        case ShippingType.delivery:
            return PKShippingType.delivery
        case ShippingType.servicePickup:
            return PKShippingType.servicePickup
        case ShippingType.storePickup:
            return PKShippingType.storePickup
        default:
            return PKShippingType.shipping
        }
    }
}
