.class public Lorg/apache/harmony/security/utils/AlgNameMapper;
.super Ljava/lang/Object;
.source "AlgNameMapper.java"


# static fields
.field private static final alg2OidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final algAliasesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cacheVersion:I

.field private static final knownAlgMappings:[[Ljava/lang/String;

.field private static final oid2AlgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serviceName:[Ljava/lang/String;

.field private static source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 41
    const/4 v2, 0x0

    #@5
    sput-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    #@7
    .line 43
    const/4 v2, -0x1

    #@8
    sput v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->cacheVersion:I

    #@a
    .line 46
    new-array v2, v7, [Ljava/lang/String;

    #@c
    .line 47
    const-string/jumbo v4, "Cipher"

    #@f
    aput-object v4, v2, v3

    #@11
    .line 48
    const-string/jumbo v4, "AlgorithmParameters"

    #@14
    aput-object v4, v2, v8

    #@16
    .line 49
    const-string/jumbo v4, "Signature"

    #@19
    aput-object v4, v2, v6

    #@1b
    .line 46
    sput-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    #@1d
    .line 56
    const/16 v2, 0x13

    #@1f
    new-array v2, v2, [[Ljava/lang/String;

    #@21
    .line 57
    new-array v4, v6, [Ljava/lang/String;

    #@23
    const-string/jumbo v5, "1.2.840.10040.4.1"

    #@26
    aput-object v5, v4, v3

    #@28
    const-string/jumbo v5, "DSA"

    #@2b
    aput-object v5, v4, v8

    #@2d
    aput-object v4, v2, v3

    #@2f
    .line 58
    new-array v4, v6, [Ljava/lang/String;

    #@31
    const-string/jumbo v5, "1.2.840.10040.4.3"

    #@34
    aput-object v5, v4, v3

    #@36
    const-string/jumbo v5, "SHA1withDSA"

    #@39
    aput-object v5, v4, v8

    #@3b
    aput-object v4, v2, v8

    #@3d
    .line 59
    new-array v4, v6, [Ljava/lang/String;

    #@3f
    const-string/jumbo v5, "1.2.840.113549.1.1.1"

    #@42
    aput-object v5, v4, v3

    #@44
    const-string/jumbo v5, "RSA"

    #@47
    aput-object v5, v4, v8

    #@49
    aput-object v4, v2, v6

    #@4b
    .line 64
    new-array v4, v6, [Ljava/lang/String;

    #@4d
    const-string/jumbo v5, "1.2.840.113549.1.1.4"

    #@50
    aput-object v5, v4, v3

    #@52
    const-string/jumbo v5, "MD5withRSA"

    #@55
    aput-object v5, v4, v8

    #@57
    aput-object v4, v2, v7

    #@59
    .line 65
    new-array v4, v6, [Ljava/lang/String;

    #@5b
    const-string/jumbo v5, "1.2.840.113549.1.1.5"

    #@5e
    aput-object v5, v4, v3

    #@60
    const-string/jumbo v5, "SHA1withRSA"

    #@63
    aput-object v5, v4, v8

    #@65
    const/4 v5, 0x4

    #@66
    aput-object v4, v2, v5

    #@68
    .line 66
    new-array v4, v6, [Ljava/lang/String;

    #@6a
    const-string/jumbo v5, "1.2.840.113549.1.3.1"

    #@6d
    aput-object v5, v4, v3

    #@6f
    const-string/jumbo v5, "DiffieHellman"

    #@72
    aput-object v5, v4, v8

    #@74
    const/4 v5, 0x5

    #@75
    aput-object v4, v2, v5

    #@77
    .line 67
    new-array v4, v6, [Ljava/lang/String;

    #@79
    const-string/jumbo v5, "1.2.840.113549.1.5.3"

    #@7c
    aput-object v5, v4, v3

    #@7e
    const-string/jumbo v5, "pbeWithMD5AndDES-CBC"

    #@81
    aput-object v5, v4, v8

    #@83
    const/4 v5, 0x6

    #@84
    aput-object v4, v2, v5

    #@86
    .line 68
    new-array v4, v6, [Ljava/lang/String;

    #@88
    const-string/jumbo v5, "1.2.840.113549.1.12.1.3"

    #@8b
    aput-object v5, v4, v3

    #@8d
    const-string/jumbo v5, "pbeWithSHAAnd3-KeyTripleDES-CBC"

    #@90
    aput-object v5, v4, v8

    #@92
    const/4 v5, 0x7

    #@93
    aput-object v4, v2, v5

    #@95
    .line 69
    new-array v4, v6, [Ljava/lang/String;

    #@97
    const-string/jumbo v5, "1.2.840.113549.1.12.1.6"

    #@9a
    aput-object v5, v4, v3

    #@9c
    const-string/jumbo v5, "pbeWithSHAAnd40BitRC2-CBC"

    #@9f
    aput-object v5, v4, v8

    #@a1
    const/16 v5, 0x8

    #@a3
    aput-object v4, v2, v5

    #@a5
    .line 70
    new-array v4, v6, [Ljava/lang/String;

    #@a7
    const-string/jumbo v5, "1.2.840.113549.3.2"

    #@aa
    aput-object v5, v4, v3

    #@ac
    const-string/jumbo v5, "RC2-CBC"

    #@af
    aput-object v5, v4, v8

    #@b1
    const/16 v5, 0x9

    #@b3
    aput-object v4, v2, v5

    #@b5
    .line 71
    new-array v4, v6, [Ljava/lang/String;

    #@b7
    const-string/jumbo v5, "1.2.840.113549.3.3"

    #@ba
    aput-object v5, v4, v3

    #@bc
    const-string/jumbo v5, "RC2-EBC"

    #@bf
    aput-object v5, v4, v8

    #@c1
    const/16 v5, 0xa

    #@c3
    aput-object v4, v2, v5

    #@c5
    .line 72
    new-array v4, v6, [Ljava/lang/String;

    #@c7
    const-string/jumbo v5, "1.2.840.113549.3.4"

    #@ca
    aput-object v5, v4, v3

    #@cc
    const-string/jumbo v5, "RC4"

    #@cf
    aput-object v5, v4, v8

    #@d1
    const/16 v5, 0xb

    #@d3
    aput-object v4, v2, v5

    #@d5
    .line 73
    new-array v4, v6, [Ljava/lang/String;

    #@d7
    const-string/jumbo v5, "1.2.840.113549.3.5"

    #@da
    aput-object v5, v4, v3

    #@dc
    const-string/jumbo v5, "RC4WithMAC"

    #@df
    aput-object v5, v4, v8

    #@e1
    const/16 v5, 0xc

    #@e3
    aput-object v4, v2, v5

    #@e5
    .line 74
    new-array v4, v6, [Ljava/lang/String;

    #@e7
    const-string/jumbo v5, "1.2.840.113549.3.6"

    #@ea
    aput-object v5, v4, v3

    #@ec
    const-string/jumbo v5, "DESx-CBC"

    #@ef
    aput-object v5, v4, v8

    #@f1
    const/16 v5, 0xd

    #@f3
    aput-object v4, v2, v5

    #@f5
    .line 75
    new-array v4, v6, [Ljava/lang/String;

    #@f7
    const-string/jumbo v5, "1.2.840.113549.3.7"

    #@fa
    aput-object v5, v4, v3

    #@fc
    const-string/jumbo v5, "TripleDES-CBC"

    #@ff
    aput-object v5, v4, v8

    #@101
    const/16 v5, 0xe

    #@103
    aput-object v4, v2, v5

    #@105
    .line 76
    new-array v4, v6, [Ljava/lang/String;

    #@107
    const-string/jumbo v5, "1.2.840.113549.3.8"

    #@10a
    aput-object v5, v4, v3

    #@10c
    const-string/jumbo v5, "rc5CBC"

    #@10f
    aput-object v5, v4, v8

    #@111
    const/16 v5, 0xf

    #@113
    aput-object v4, v2, v5

    #@115
    .line 77
    new-array v4, v6, [Ljava/lang/String;

    #@117
    const-string/jumbo v5, "1.2.840.113549.3.9"

    #@11a
    aput-object v5, v4, v3

    #@11c
    const-string/jumbo v5, "RC5-CBC"

    #@11f
    aput-object v5, v4, v8

    #@121
    const/16 v5, 0x10

    #@123
    aput-object v4, v2, v5

    #@125
    .line 78
    new-array v4, v6, [Ljava/lang/String;

    #@127
    const-string/jumbo v5, "1.2.840.113549.3.10"

    #@12a
    aput-object v5, v4, v3

    #@12c
    const-string/jumbo v5, "DESCDMF"

    #@12f
    aput-object v5, v4, v8

    #@131
    const/16 v5, 0x11

    #@133
    aput-object v4, v2, v5

    #@135
    .line 79
    new-array v4, v6, [Ljava/lang/String;

    #@137
    const-string/jumbo v5, "2.23.42.9.11.4.1"

    #@13a
    aput-object v5, v4, v3

    #@13c
    const-string/jumbo v5, "ECDSA"

    #@13f
    aput-object v5, v4, v8

    #@141
    const/16 v5, 0x12

    #@143
    aput-object v4, v2, v5

    #@145
    .line 56
    sput-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    #@147
    .line 82
    new-instance v2, Ljava/util/HashMap;

    #@149
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@14c
    sput-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    #@14e
    .line 84
    new-instance v2, Ljava/util/HashMap;

    #@150
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@153
    sput-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    #@155
    .line 86
    new-instance v2, Ljava/util/HashMap;

    #@157
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@15a
    sput-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@15c
    .line 89
    sget-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    #@15e
    array-length v5, v4

    #@15f
    move v2, v3

    #@160
    .local v0, "algUC":Ljava/lang/String;
    .local v1, "element":[Ljava/lang/String;
    :goto_0
    if-ge v2, v5, :cond_0

    #@162
    aget-object v1, v4, v2

    #@164
    .line 90
    .end local v0    # "algUC":Ljava/lang/String;
    aget-object v6, v1, v8

    #@166
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@168
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16b
    move-result-object v0

    #@16c
    .line 91
    .restart local v0    # "algUC":Ljava/lang/String;
    sget-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    #@16e
    aget-object v7, v1, v3

    #@170
    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@173
    .line 92
    sget-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    #@175
    aget-object v7, v1, v3

    #@177
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 94
    sget-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@17c
    aget-object v7, v1, v8

    #@17e
    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@181
    .line 89
    add-int/lit8 v2, v2, 0x1

    #@183
    goto :goto_0

    #@184
    .line 40
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static declared-synchronized checkCacheVersion()V
    .locals 6

    #@0
    .prologue
    const-class v4, Lorg/apache/harmony/security/utils/AlgNameMapper;

    #@2
    monitor-enter v4

    #@3
    .line 103
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    #@6
    move-result v1

    #@7
    .line 104
    .local v1, "newCacheVersion":I
    sget v3, Lorg/apache/harmony/security/utils/AlgNameMapper;->cacheVersion:I

    #@9
    if-eq v1, v3, :cond_1

    #@b
    .line 111
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@e
    move-result-object v2

    #@f
    .line 112
    .local v2, "pl":[Ljava/security/Provider;
    const/4 v3, 0x0

    #@10
    array-length v5, v2

    #@11
    :goto_0
    if-ge v3, v5, :cond_0

    #@13
    aget-object v0, v2, v3

    #@15
    .line 113
    .local v0, "element":Ljava/security/Provider;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->selectEntries(Ljava/security/Provider;)V

    #@18
    .line 112
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 115
    .end local v0    # "element":Ljava/security/Provider;
    :cond_0
    sput v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->cacheVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .end local v2    # "pl":[Ljava/security/Provider;
    :cond_1
    monitor-exit v4

    #@1e
    .line 102
    return-void

    #@1f
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v4

    #@21
    throw v3
.end method

.method public static getStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "algName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@4
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public static isOID(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    invoke-static {p0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->isOID(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static map2AlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 150
    invoke-static {}, Lorg/apache/harmony/security/utils/AlgNameMapper;->checkCacheVersion()V

    #@4
    .line 153
    sget-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    #@6
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 155
    .local v0, "algUC":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 156
    sget-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@10
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    return-object v2

    #@17
    .line 160
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    #@19
    .line 161
    .local v1, "s":Lorg/apache/harmony/security/utils/AlgNameMapperSource;
    if-eqz v1, :cond_1

    #@1b
    .line 162
    invoke-interface {v1, p0}, Lorg/apache/harmony/security/utils/AlgNameMapperSource;->mapOidToName(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 165
    :cond_1
    return-object v3
.end method

.method public static map2OID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "algName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 126
    invoke-static {}, Lorg/apache/harmony/security/utils/AlgNameMapper;->checkCacheVersion()V

    #@4
    .line 129
    sget-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    #@6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@8
    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 130
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@14
    .line 131
    return-object v0

    #@15
    .line 135
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    #@17
    .line 136
    .local v1, "s":Lorg/apache/harmony/security/utils/AlgNameMapperSource;
    if-eqz v1, :cond_1

    #@19
    .line 137
    invoke-interface {v1, p0}, Lorg/apache/harmony/security/utils/AlgNameMapperSource;->mapNameToOid(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 140
    :cond_1
    return-object v4
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    const-string/jumbo v0, "OID."

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 237
    const/4 v0, 0x4

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    .line 236
    .end local p0    # "oid":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static selectEntries(Ljava/security/Provider;)V
    .locals 16
    .param p0, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    .line 185
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    sget-object v12, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    #@6
    const/4 v11, 0x0

    #@7
    array-length v13, v12

    #@8
    :goto_0
    if-ge v11, v13, :cond_7

    #@a
    aget-object v10, v12, v11

    #@c
    .line 186
    .local v10, "service":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v15, "Alg.Alias."

    #@14
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v14

    #@18
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v14

    #@1c
    const-string/jumbo v15, "."

    #@1f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v14

    #@23
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    .line 187
    .local v6, "keyPrfix2find":Ljava/lang/String;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v8

    #@2b
    .local v8, "me$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v14

    #@2f
    if-eqz v14, :cond_6

    #@31
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Ljava/util/Map$Entry;

    #@37
    .line 188
    .local v7, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3a
    move-result-object v5

    #@3b
    check-cast v5, Ljava/lang/String;

    #@3d
    .line 189
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@40
    move-result v14

    #@41
    if-eqz v14, :cond_0

    #@43
    .line 190
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@46
    move-result v14

    #@47
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 191
    .local v3, "alias":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Ljava/lang/String;

    #@51
    .line 192
    .local v0, "alg":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@53
    invoke-virtual {v0, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 193
    .local v2, "algUC":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    #@5a
    move-result v14

    #@5b
    if-eqz v14, :cond_5

    #@5d
    .line 194
    const-string/jumbo v14, "OID."

    #@60
    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@63
    move-result v14

    #@64
    if-eqz v14, :cond_1

    #@66
    .line 195
    const/4 v14, 0x4

    #@67
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 198
    :cond_1
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    #@6d
    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@70
    move-result v9

    #@71
    .line 199
    .local v9, "oid2AlgContains":Z
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    #@73
    invoke-interface {v14, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    .line 200
    .local v1, "alg2OidContains":Z
    if-eqz v9, :cond_2

    #@79
    if-nez v1, :cond_0

    #@7b
    .line 201
    :cond_2
    if-nez v9, :cond_3

    #@7d
    .line 202
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    #@7f
    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 204
    :cond_3
    if-nez v1, :cond_4

    #@84
    .line 205
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    #@86
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 208
    :cond_4
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@8b
    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    goto :goto_1

    #@8f
    .line 211
    .end local v1    # "alg2OidContains":Z
    .end local v9    # "oid2AlgContains":Z
    :cond_5
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@91
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@93
    invoke-virtual {v3, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@96
    move-result-object v15

    #@97
    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9a
    move-result v14

    #@9b
    if-nez v14, :cond_0

    #@9d
    .line 212
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    #@9f
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@a1
    invoke-virtual {v3, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@a4
    move-result-object v15

    #@a5
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    goto :goto_1

    #@a9
    .line 185
    .end local v0    # "alg":Ljava/lang/String;
    .end local v2    # "algUC":Ljava/lang/String;
    .end local v3    # "alias":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_6
    add-int/lit8 v11, v11, 0x1

    #@ab
    goto/16 :goto_0

    #@ad
    .line 183
    .end local v6    # "keyPrfix2find":Ljava/lang/String;
    .end local v8    # "me$iterator":Ljava/util/Iterator;
    .end local v10    # "service":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public static setSource(Lorg/apache/harmony/security/utils/AlgNameMapperSource;)V
    .locals 0
    .param p0, "source"    # Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    #@0
    .prologue
    .line 242
    sput-object p0, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    #@2
    .line 241
    return-void
.end method
