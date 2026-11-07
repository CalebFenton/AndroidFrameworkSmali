.class public Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;
.super Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.source "X509DefaultEntryConverter.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_30

    .line 38
    :try_start_10
    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;->convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p0

    .line 42
    :catch_15
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t recode value for oid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_42

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_42

    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 51
    :cond_42
    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_8e

    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_53

    goto :goto_8e

    .line 55
    :cond_53
    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 57
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 59
    :cond_61
    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_88

    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_88

    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_88

    sget-object p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_82

    goto :goto_88

    .line 66
    :cond_82
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 62
    :cond_88
    :goto_88
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 53
    :cond_8e
    :goto_8e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
