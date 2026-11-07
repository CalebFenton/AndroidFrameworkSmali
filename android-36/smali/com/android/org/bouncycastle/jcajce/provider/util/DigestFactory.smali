.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;
.super Ljava/lang/Object;
.source "DigestFactory.java"


# static fields
.field private static blacklist md5:Ljava/util/Set;

.field private static blacklist oids:Ljava/util/Map;

.field private static blacklist sha1:Ljava/util/Set;

.field private static blacklist sha224:Ljava/util/Set;

.field private static blacklist sha256:Ljava/util/Set;

.field private static blacklist sha384:Ljava/util/Set;

.field private static blacklist sha512:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    const-string v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    const-string v3, "SHA1"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    const-string v4, "SHA-1"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    const-string v6, "SHA224"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    const-string v7, "SHA-224"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    const-string v9, "SHA256"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    const-string v10, "SHA-256"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    sget-object v11, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    const-string v12, "SHA384"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    const-string v13, "SHA-384"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    sget-object v14, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    const-string v15, "SHA512"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    move-object/from16 v16, v15

    const-string v15, "SHA-512"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    move-object/from16 v17, v15

    sget-object v15, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512(224)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    const-string v2, "SHA-512(224)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512(256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    const-string v2, "SHA-512(256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 154
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 162
    :cond_11
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 166
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 168
    :cond_1e
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 172
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 174
    :cond_2b
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 178
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 180
    :cond_38
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 184
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 186
    :cond_45
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 190
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 258
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method
