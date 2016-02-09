.class public Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;
.super Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.source "AuthorityKeyIdentifierStructure.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@0
    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@0
    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromKey(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@7
    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@7
    .line 134
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 36
    return-void
.end method

.method private static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 9
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x3

    #@5
    if-eq v5, v6, :cond_0

    #@7
    .line 72
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@9
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@c
    move-result-object v5

    #@d
    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@10
    .line 73
    .local v2, "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@12
    .line 74
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@14
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@17
    move-result-object v6

    #@18
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    #@1b
    move-result-object v6

    #@1c
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@1f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@25
    .line 73
    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@28
    .line 76
    .local v3, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@2a
    .line 77
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@2c
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@2f
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@32
    move-result-object v7

    #@33
    .line 76
    invoke-direct {v5, v3, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@36
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@39
    move-result-object v5

    #@3a
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3c
    return-object v5

    #@3d
    .line 81
    .end local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3f
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@46
    .line 83
    .restart local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@4f
    move-result-object v1

    #@50
    .line 85
    .local v1, "ext":[B
    if-eqz v1, :cond_1

    #@52
    .line 87
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@55
    move-result-object v4

    #@56
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@58
    .line 89
    .local v4, "str":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@5a
    .line 90
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5d
    move-result-object v6

    #@5e
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@60
    invoke-direct {v7, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@63
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@66
    move-result-object v8

    #@67
    .line 89
    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@6a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6d
    move-result-object v5

    #@6e
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@70
    return-object v5

    #@71
    .line 94
    .end local v4    # "str":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@73
    .line 95
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@75
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@78
    move-result-object v6

    #@79
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    #@7c
    move-result-object v6

    #@7d
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@80
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@83
    move-result-object v5

    #@84
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@86
    .line 94
    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@89
    .line 97
    .restart local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@8b
    .line 98
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8d
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@90
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@93
    move-result-object v7

    #@94
    .line 97
    invoke-direct {v5, v3, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@97
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9a
    move-result-object v5

    #@9b
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9d
    return-object v5

    #@9e
    .line 103
    .end local v1    # "ext":[B
    .end local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@9f
    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@a1
    new-instance v6, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v7, "Exception extracting certificate details: "

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v6

    #@b9
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v5
.end method

.method private static fromKey(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    .line 115
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@4
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@11
    .line 114
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@14
    .line 117
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@16
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@19
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    return-object v2

    #@20
    .line 120
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@21
    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "can\'t process key: "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2
.end method
