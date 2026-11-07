.class public Lcom/android/internal/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;
.super Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.source "AuthorityKeyIdentifierStructure.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V
    .registers 3
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;)V
    .registers 3
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    .line 50
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromKey(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 134
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 39
    return-void
.end method

.method private static blacklist fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 8
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    .line 73
    .local v0, "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 75
    .local v1, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 76
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 75
    return-object v2

    .line 80
    .end local v0    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v1    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    .line 82
    .restart local v0    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 84
    .local v1, "ext":[B
    if-eqz v1, :cond_65

    .line 86
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 88
    .local v2, "str":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .line 89
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v5, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 88
    return-object v3

    .line 93
    .end local v2    # "str":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_65
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 95
    .local v2, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 96
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    .line 95
    return-object v3

    .line 100
    .end local v0    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v1    # "ext":[B
    .end local v2    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_86
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception extracting certificate details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist fromKey(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 114
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 116
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_14
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
