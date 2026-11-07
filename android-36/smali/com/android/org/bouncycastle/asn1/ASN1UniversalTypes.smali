.class abstract Lcom/android/org/bouncycastle/asn1/ASN1UniversalTypes;
.super Ljava/lang/Object;
.source "ASN1UniversalTypes.java"


# direct methods
.method static blacklist get(I)Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
    .registers 1

    packed-switch p0, :pswitch_data_50

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    .line 63
    :pswitch_5
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 61
    :pswitch_8
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 59
    :pswitch_b
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 57
    :pswitch_e
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 55
    :pswitch_11
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 53
    :pswitch_14
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 51
    :pswitch_17
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 49
    :pswitch_1a
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 47
    :pswitch_1d
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 45
    :pswitch_20
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1T61String;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 43
    :pswitch_23
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 41
    :pswitch_26
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1NumericString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 39
    :pswitch_29
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 37
    :pswitch_2c
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 35
    :pswitch_2f
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 33
    :pswitch_32
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1UTF8String;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 31
    :pswitch_35
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 29
    :pswitch_38
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 27
    :pswitch_3b
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 25
    :pswitch_3e
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 23
    :pswitch_41
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Null;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 21
    :pswitch_44
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 19
    :pswitch_47
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 17
    :pswitch_4a
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    .line 15
    :pswitch_4d
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_3
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_3
        :pswitch_3
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
