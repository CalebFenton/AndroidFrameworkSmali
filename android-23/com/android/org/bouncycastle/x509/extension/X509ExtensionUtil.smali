.class public Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;
.super Ljava/lang/Object;
.source "X509ExtensionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p0, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@6
    .line 32
    .local v0, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method private static getAlternativeNames([B)Ljava/util/Collection;
    .locals 8
    .param p0, "extVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    if-nez p0, :cond_0

    #@2
    .line 56
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@4
    return-object v5

    #@5
    .line 60
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 61
    .local v4, "temp":Ljava/util/Collection;
    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v5

    #@e
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@15
    move-result-object v2

    #@16
    .line 62
    .local v2, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 64
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@23
    move-result-object v1

    #@24
    .line 65
    .local v1, "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v3, Ljava/util/ArrayList;

    #@26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 66
    .local v3, "list":Ljava/util/List;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@2c
    move-result v5

    #@2d
    invoke-static {v5}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v5

    #@31
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 67
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@37
    move-result v5

    #@38
    packed-switch v5, :pswitch_data_0

    #@3b
    .line 89
    new-instance v5, Ljava/io/IOException;

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "Bad tag number: "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@4c
    move-result v7

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@58
    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 97
    .end local v1    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v2    # "it":Ljava/util/Enumeration;
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "temp":Ljava/util/Collection;
    :catch_0
    move-exception v0

    #@5a
    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@5c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@63
    throw v5

    #@64
    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v2    # "it":Ljava/util/Enumeration;
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "temp":Ljava/util/Collection;
    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@67
    move-result-object v5

    #@68
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6b
    move-result-object v5

    #@6c
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    .line 92
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_0

    #@73
    .line 75
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@76
    move-result-object v5

    #@77
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@82
    goto :goto_1

    #@83
    .line 80
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@86
    move-result-object v5

    #@87
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@89
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    goto :goto_1

    #@91
    .line 83
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@94
    move-result-object v5

    #@95
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    goto :goto_1

    #@a1
    .line 86
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a4
    move-result-object v5

    #@a5
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@ac
    move-result-object v5

    #@ad
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b0
    goto :goto_1

    #@b1
    .line 94
    .end local v1    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "list":Ljava/util/List;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@b4
    move-result-object v5

    #@b5
    return-object v5

    #@b6
    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    .line 40
    .local v0, "extVal":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->getAlternativeNames([B)Ljava/util/Collection;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    .line 48
    .local v0, "extVal":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->getAlternativeNames([B)Ljava/util/Collection;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method
