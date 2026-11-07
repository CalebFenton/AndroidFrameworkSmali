.class public Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;
.super Ljava/lang/Object;
.source "X509ExtensionUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3
    .param p0, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 40
    .local v0, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getAlternativeNames([B)Ljava/util/Collection;
    .registers 8
    .param p0, "extVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 68
    if-nez p0, :cond_5

    .line 70
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 74
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "temp":Ljava/util/Collection;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 76
    .local v1, "it":Ljava/util/Enumeration;
    :goto_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 78
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 79
    .local v2, "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "list":Ljava/util/List;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_b8

    .line 103
    new-instance v4, Ljava/io/IOException;

    goto :goto_8d

    .line 97
    :pswitch_3e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_88

    .line 100
    :pswitch_4e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_88

    .line 89
    :pswitch_5e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_88

    .line 94
    :pswitch_6e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_88

    .line 86
    :pswitch_7c
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    nop

    .line 106
    :goto_88
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    nop

    .end local v2    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "list":Ljava/util/List;
    goto :goto_16

    .line 103
    .restart local v2    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v3    # "list":Ljava/util/List;
    :goto_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad tag number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "extVal":[B
    throw v4

    .line 108
    .end local v2    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "list":Ljava/util/List;
    .restart local p0    # "extVal":[B
    :cond_a8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ac} :catch_ad

    return-object v2

    .line 110
    .end local v0    # "temp":Ljava/util/Collection;
    .end local v1    # "it":Ljava/util/Enumeration;
    :catch_ad
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_6e
        :pswitch_6e
        :pswitch_7c
        :pswitch_5e
        :pswitch_7c
        :pswitch_6e
        :pswitch_4e
        :pswitch_3e
    .end packed-switch
.end method

.method public static blacklist getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, "extVal":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 62
    .local v0, "extVal":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
