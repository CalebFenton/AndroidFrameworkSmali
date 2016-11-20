.class public Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;
.super Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.source "AuthorityKeyIdentifierStructure.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@0
    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 46
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
    .line 145
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromKey(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@7
    .line 143
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
    .line 131
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@7
    .line 129
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
    .line 36
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 34
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
    .line 68
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x3

    #@5
    if-eq v5, v6, :cond_0

    #@7
    .line 70
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@9
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@c
    move-result-object v5

    #@d
    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@10
    .line 71
    .local v2, "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    #@17
    move-result-object v5

    #@18
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@1b
    move-result-object v3

    #@1c
    .line 73
    .local v3, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@1e
    .line 74
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@20
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@23
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@26
    move-result-object v7

    #@27
    .line 73
    invoke-direct {v5, v3, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@2a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@30
    return-object v5

    #@31
    .line 78
    .end local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@33
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@36
    move-result-object v5

    #@37
    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@3a
    .line 80
    .restart local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@43
    move-result-object v1

    #@44
    .line 82
    .local v1, "ext":[B
    if-eqz v1, :cond_1

    #@46
    .line 84
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@4c
    .line 86
    .local v4, "str":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@4e
    .line 87
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@51
    move-result-object v6

    #@52
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@54
    invoke-direct {v7, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@57
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@5a
    move-result-object v8

    #@5b
    .line 86
    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@5e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@64
    return-object v5

    #@65
    .line 91
    .end local v4    # "str":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@68
    move-result-object v5

    #@69
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    #@6c
    move-result-object v5

    #@6d
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@70
    move-result-object v3

    #@71
    .line 93
    .restart local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@73
    .line 94
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@75
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@78
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@7b
    move-result-object v7

    #@7c
    .line 93
    invoke-direct {v5, v3, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@7f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@82
    move-result-object v5

    #@83
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    return-object v5

    #@86
    .line 99
    .end local v1    # "ext":[B
    .end local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@87
    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@89
    new-instance v6, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v7, "Exception extracting certificate details: "

    #@91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@a4
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
    .line 110
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@7
    move-result-object v1

    #@8
    .line 112
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@a
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@d
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    return-object v2

    #@14
    .line 115
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@15
    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "can\'t process key: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2
.end method
