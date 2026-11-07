.class public Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;
.super Ljava/lang/Object;
.source "DefaultCMSSignatureAlgorithmNameGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;


# instance fields
.field private final blacklist digestAlgs:Ljava/util/Map;

.field private final blacklist encryptionAlgs:Ljava/util/Map;

.field private final blacklist simpleAlgs:Ljava/util/Map;


# direct methods
.method public constructor blacklist <init>()V
    .registers 11

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->simpleAlgs:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA224"

    const-string v2, "DSA"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256"

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA384"

    invoke-direct {p0, v0, v4, v2}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "SHA512"

    invoke-direct {p0, v0, v5, v2}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SHA1"

    invoke-direct {p0, v0, v6, v2}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "MD5"

    const-string v8, "RSA"

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v6, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v6, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v3, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v4, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v5, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA512(224)"

    invoke-direct {p0, v0, v9, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA512(256)"

    invoke-direct {p0, v0, v9, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA3-224"

    invoke-direct {p0, v0, v9, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA3-256"

    invoke-direct {p0, v0, v9, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA3-384"

    invoke-direct {p0, v0, v9, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA3-512"

    invoke-direct {p0, v0, v9, v8}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "ECDSA"

    invoke-direct {p0, v0, v6, v9}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v9}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v3, v9}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v4, v9}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v5, v9}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v6, v2}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "RSAandMGF1"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method private blacklist addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "alias"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digest"    # Ljava/lang/String;
    .param p3, "encryption"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private blacklist getDigestAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 4
    .param p1, "digestAlgOID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 243
    return-object v0

    .line 246
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getEncryptionAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 4
    .param p1, "encryptionAlgOID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 257
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 261
    return-object v0

    .line 264
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .registers 9
    .param p1, "digestAlg"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "encryptionAlg"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 311
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 313
    .local v0, "encryptionAlgOID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->simpleAlgs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "simpleAlgName":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 316
    return-object v1

    .line 319
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->getDigestAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "digestName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "with"

    if-nez v3, :cond_3a

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->getEncryptionAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->getDigestAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->getEncryptionAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected blacklist setSigningDigestAlgorithmMapping(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "algorithmName"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->digestAlgs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method protected blacklist setSigningEncryptionAlgorithmMapping(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "algorithmName"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;->encryptionAlgs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method
