.class abstract Lcom/android/org/bouncycastle/x509/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# static fields
.field private static blacklist algorithms:Ljava/util/Hashtable;

.field private static blacklist noParams:Ljava/util/Set;

.field private static blacklist params:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MD5WITHRSAENCRYPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v2, "MD5WITHRSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA1WITHRSAENCRYPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v2, "SHA1WITHRSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224WITHRSAENCRYPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v2, "SHA224WITHRSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256WITHRSAENCRYPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v2, "SHA256WITHRSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA384WITHRSAENCRYPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v2, "SHA384WITHRSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512WITHRSAENCRYPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v2, "SHA512WITHRSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA1WITHRSAANDMGF1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v3, "SHA224WITHRSAANDMGF1"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v4, "SHA256WITHRSAANDMGF1"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHRSAANDMGF1"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAANDMGF1"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA1WITHDSA"

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v7, "DSAWITHSHA1"

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA224WITHDSA"

    invoke-virtual {v0, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA256WITHDSA"

    invoke-virtual {v0, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v9, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHA384WITHDSA"

    invoke-virtual {v0, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v10, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "SHA512WITHDSA"

    invoke-virtual {v0, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v11, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "SHA1WITHECDSA"

    invoke-virtual {v0, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v12, "ECDSAWITHSHA1"

    invoke-virtual {v0, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v12, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "SHA224WITHECDSA"

    invoke-virtual {v0, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v13, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "SHA256WITHECDSA"

    invoke-virtual {v0, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v14, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SHA384WITHECDSA"

    invoke-virtual {v0, v15, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    sget-object v15, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v6

    const-string v6, "SHA512WITHECDSA"

    invoke-virtual {v0, v6, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    sget-object v1, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const/16 v7, 0x14

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    sget-object v1, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const/16 v2, 0x1c

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    sget-object v1, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 137
    sget-object v1, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const/16 v2, 0x30

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    sget-object v1, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static blacklist calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 6

    if-eqz p0, :cond_21

    .line 268
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/x509/X509Util;->getSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    if-eqz p4, :cond_c

    .line 272
    invoke-virtual {p0, p3, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_f

    .line 276
    :cond_c
    invoke-virtual {p0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 279
    :goto_f
    invoke-interface {p5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string p2, "DER"

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    .line 281
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0

    .line 265
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no signature algorithm specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 5

    if-eqz p0, :cond_21

    .line 236
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSignatureInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    if-eqz p3, :cond_c

    .line 240
    invoke-virtual {p0, p2, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_f

    .line 244
    :cond_c
    invoke-virtual {p0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 247
    :goto_f
    invoke-interface {p4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string p2, "DER"

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    .line 249
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0

    .line 233
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no signature algorithm specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .registers 7

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {p1, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method

.method static blacklist getAlgNames()Ljava/util/Iterator;
    .registers 3

    .line 188
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 193
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 196
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 155
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 159
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 162
    :cond_15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist getSigAlgID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 4

    .line 169
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    new-instance p1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object p1

    .line 174
    :cond_e
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 178
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 182
    :cond_28
    new-instance p1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {p1, p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1
.end method

.method static blacklist getSignatureInstance(Ljava/lang/String;)Ljava/security/Signature;
    .registers 1

    .line 203
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    if-eqz p1, :cond_7

    .line 213
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    .line 217
    :cond_7
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
