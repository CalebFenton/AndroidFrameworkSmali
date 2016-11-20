.class public Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;
.super Ljava/lang/Object;
.source "DigestFactory.java"


# static fields
.field private static md5:Ljava/util/Set;

.field private static oids:Ljava/util/Map;

.field private static sha1:Ljava/util/Set;

.field private static sha224:Ljava/util/Set;

.field private static sha256:Ljava/util/Set;

.field private static sha384:Ljava/util/Set;

.field private static sha512:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    #@7
    .line 30
    new-instance v0, Ljava/util/HashSet;

    #@9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@e
    .line 31
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@15
    .line 32
    new-instance v0, Ljava/util/HashSet;

    #@17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@1c
    .line 33
    new-instance v0, Ljava/util/HashSet;

    #@1e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@21
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@23
    .line 34
    new-instance v0, Ljava/util/HashSet;

    #@25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@2a
    .line 40
    new-instance v0, Ljava/util/HashMap;

    #@2c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2f
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@31
    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    #@33
    const-string/jumbo v1, "MD5"

    #@36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    #@3b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@44
    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@46
    const-string/jumbo v1, "SHA1"

    #@49
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4c
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@4e
    const-string/jumbo v1, "SHA-1"

    #@51
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54
    .line 49
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@56
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@58
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@61
    const-string/jumbo v1, "SHA224"

    #@64
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@67
    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@69
    const-string/jumbo v1, "SHA-224"

    #@6c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6f
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@71
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@73
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7a
    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@7c
    const-string/jumbo v1, "SHA256"

    #@7f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@82
    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@84
    const-string/jumbo v1, "SHA-256"

    #@87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8a
    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@8c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@95
    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@97
    const-string/jumbo v1, "SHA384"

    #@9a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9d
    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@9f
    const-string/jumbo v1, "SHA-384"

    #@a2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a5
    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@a7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b0
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@b2
    const-string/jumbo v1, "SHA512"

    #@b5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b8
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@ba
    const-string/jumbo v1, "SHA-512"

    #@bd
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c0
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@c2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@cb
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@cd
    const-string/jumbo v1, "MD5"

    #@d0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@d7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@dc
    move-result-object v1

    #@dd
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@df
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@e4
    const-string/jumbo v1, "SHA1"

    #@e7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ec
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@ee
    const-string/jumbo v1, "SHA-1"

    #@f1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@f8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fa
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@fd
    move-result-object v1

    #@fe
    sget-object v2, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@105
    const-string/jumbo v1, "SHA224"

    #@108
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10d
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@10f
    const-string/jumbo v1, "SHA-224"

    #@112
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@119
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@11e
    move-result-object v1

    #@11f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@126
    const-string/jumbo v1, "SHA256"

    #@129
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12e
    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@130
    const-string/jumbo v1, "SHA-256"

    #@133
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@13a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@142
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@145
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@147
    const-string/jumbo v1, "SHA384"

    #@14a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14f
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@151
    const-string/jumbo v1, "SHA-384"

    #@154
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@159
    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@15b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@160
    move-result-object v1

    #@161
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@163
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@166
    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@168
    const-string/jumbo v1, "SHA512"

    #@16b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@170
    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@172
    const-string/jumbo v1, "SHA-512"

    #@175
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@177
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@17c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@181
    move-result-object v1

    #@182
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@187
    .line 100
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@189
    const-string/jumbo v1, "SHA512(224)"

    #@18c
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@191
    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@193
    const-string/jumbo v1, "SHA-512(224)"

    #@196
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@198
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19b
    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@19d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1a2
    move-result-object v1

    #@1a3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a8
    .line 104
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@1aa
    const-string/jumbo v1, "SHA512(256)"

    #@1ad
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1af
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b2
    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@1b4
    const-string/jumbo v1, "SHA-512(256)"

    #@1b7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bc
    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@1be
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1c3
    move-result-object v1

    #@1c4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c9
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1
    .param p0, "digestName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 114
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@6
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 117
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 120
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    #@13
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 123
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 126
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@20
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 129
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    .line 132
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@2d
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 135
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 138
    :cond_3
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@3a
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_4

    #@40
    .line 141
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    #@43
    move-result-object v0

    #@44
    return-object v0

    #@45
    .line 144
    :cond_4
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@47
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_5

    #@4d
    .line 147
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 161
    :cond_5
    const/4 v0, 0x0

    #@53
    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "digestName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    return-object v0
.end method

.method public static isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "digest1"    # Ljava/lang/String;
    .param p1, "digest2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_5

    #@10
    .line 169
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@12
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    #@1a
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    .line 168
    if-nez v0, :cond_5

    #@20
    .line 170
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@22
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    #@2a
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    .line 168
    if-nez v0, :cond_5

    #@30
    .line 171
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@32
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3

    #@38
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    #@3a
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    .line 168
    if-nez v0, :cond_5

    #@40
    .line 172
    :cond_3
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@42
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_4

    #@48
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    #@4a
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4d
    move-result v0

    #@4e
    .line 168
    if-nez v0, :cond_5

    #@50
    .line 177
    :cond_4
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    #@52
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_6

    #@58
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    #@5a
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5d
    move-result v0

    #@5e
    .line 168
    :goto_0
    return v0

    #@5f
    :cond_5
    const/4 v0, 0x1

    #@60
    goto :goto_0

    #@61
    .line 177
    :cond_6
    const/4 v0, 0x0

    #@62
    goto :goto_0
.end method
