.class final Lsun/security/ssl/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;,
        Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    }
.end annotation


# static fields
.field private static final SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_ALG_PRIORITY_MAX_NUM:I = 0xf0

.field private static final priorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field private hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field private id:I

.field private priority:I

.field private signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 71
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    #@2
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@5
    move-result-object v1

    #@6
    .line 70
    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    #@8
    .line 409
    new-instance v1, Ljava/util/TreeMap;

    #@a
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@d
    .line 408
    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    #@10
    move-result-object v1

    #@11
    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    #@13
    .line 411
    new-instance v1, Ljava/util/TreeMap;

    #@15
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@18
    .line 410
    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    #@1b
    move-result-object v1

    #@1c
    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    #@1e
    .line 413
    sget-object v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    #@20
    monitor-enter v2

    #@21
    .line 415
    :try_start_0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@23
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@25
    .line 416
    const-string/jumbo v4, "MD5withRSA"

    #@28
    const/16 v0, 0xef

    #@2a
    .line 415
    .local v0, "p":I
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@2d
    .line 417
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@2f
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@31
    .line 418
    const-string/jumbo v4, "SHA1withDSA"

    #@34
    add-int/lit8 v0, v0, -0x1

    #@36
    .line 417
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@39
    .line 419
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@3b
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@3d
    .line 420
    const-string/jumbo v4, "SHA1withRSA"

    #@40
    add-int/lit8 v0, v0, -0x1

    #@42
    .line 419
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@45
    .line 421
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@47
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@49
    .line 422
    const-string/jumbo v4, "SHA1withECDSA"

    #@4c
    add-int/lit8 v0, v0, -0x1

    #@4e
    .line 421
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@51
    .line 423
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@53
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@55
    .line 424
    const-string/jumbo v4, "SHA224withRSA"

    #@58
    add-int/lit8 v0, v0, -0x1

    #@5a
    .line 423
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@5d
    .line 425
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@5f
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@61
    .line 426
    const-string/jumbo v4, "SHA224withECDSA"

    #@64
    add-int/lit8 v0, v0, -0x1

    #@66
    .line 425
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@69
    .line 427
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@6b
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@6d
    .line 428
    const-string/jumbo v4, "SHA256withRSA"

    #@70
    add-int/lit8 v0, v0, -0x1

    #@72
    .line 427
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@75
    .line 429
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@77
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@79
    .line 430
    const-string/jumbo v4, "SHA256withECDSA"

    #@7c
    add-int/lit8 v0, v0, -0x1

    #@7e
    .line 429
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@81
    .line 431
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@83
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@85
    .line 432
    const-string/jumbo v4, "SHA384withRSA"

    #@88
    add-int/lit8 v0, v0, -0x1

    #@8a
    .line 431
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@8d
    .line 433
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@8f
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@91
    .line 434
    const-string/jumbo v4, "SHA384withECDSA"

    #@94
    add-int/lit8 v0, v0, -0x1

    #@96
    .line 433
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@99
    .line 435
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@9b
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@9d
    .line 436
    const-string/jumbo v4, "SHA512withRSA"

    #@a0
    add-int/lit8 v0, v0, -0x1

    #@a2
    .line 435
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@a5
    .line 437
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@a7
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@a9
    .line 438
    const-string/jumbo v4, "SHA512withECDSA"

    #@ac
    add-int/lit8 v0, v0, -0x1

    #@ae
    .line 437
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b1
    monitor-exit v2

    #@b2
    .line 64
    return-void

    #@b3
    .line 413
    :catchall_0
    move-exception v1

    #@b4
    monitor-exit v2

    #@b5
    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "sequence"    # I

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    shr-int/lit8 v0, p2, 0x8

    #@5
    and-int/lit16 v0, v0, 0xff

    #@7
    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@d
    .line 108
    and-int/lit16 v0, p2, 0xff

    #@f
    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@15
    .line 109
    iput-object p1, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    #@17
    .line 110
    iput p2, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@19
    .line 113
    add-int/lit16 v0, p3, 0xf0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@1f
    .line 106
    return-void
.end method

.method private constructor <init>(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    .locals 2
    .param p1, "hash"    # Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .param p2, "signature"    # Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "priority"    # I

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iput-object p1, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@5
    .line 99
    iput-object p2, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@7
    .line 100
    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    #@9
    .line 101
    iget v0, p1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    #@b
    and-int/lit16 v0, v0, 0xff

    #@d
    shl-int/lit8 v0, v0, 0x8

    #@f
    iget v1, p2, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    or-int/2addr v0, v1

    #@14
    iput v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@16
    .line 102
    iput p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@18
    .line 97
    return-void
.end method

.method static getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 188
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 189
    .local v0, "algorithmNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    #@7
    .line 190
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .local v3, "sigAlg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@17
    .line 191
    .local v2, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v4, v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_0

    #@1d
    .line 195
    .end local v2    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v3    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v4

    #@21
    new-array v1, v4, [Ljava/lang/String;

    #@23
    .line 196
    .local v1, "array":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, [Ljava/lang/String;

    #@29
    return-object v4
.end method

.method static getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;
    .locals 1
    .param p0, "algorithm"    # Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@2
    iget-object v0, v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method static getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 202
    .local v0, "algorithmNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    #@7
    .line 203
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@17
    .line 204
    .local v1, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v3, v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@19
    iget v3, v3, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    #@1b
    if-lez v3, :cond_0

    #@1d
    .line 205
    iget-object v3, v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@1f
    iget-object v3, v3, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    #@21
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 210
    .end local v1    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v2    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 1
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    const/4 v0, 0x0

    #@1
    .line 237
    invoke-static {p0, p1, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 12
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ")",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    const/16 v11, 0x300

    #@2
    const/16 v10, 0x200

    #@4
    const/4 v9, 0x0

    #@5
    .line 245
    if-nez p1, :cond_0

    #@7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    .line 255
    :cond_0
    if-nez p1, :cond_4

    #@f
    .line 256
    return-object v9

    #@10
    .line 246
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v5

    #@14
    .local v5, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_3

    #@1a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@20
    .line 247
    .local v4, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v7, v4, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@22
    const/16 v8, 0xf0

    #@24
    if-gt v7, v8, :cond_2

    #@26
    .line 248
    return-object v4

    #@27
    .line 252
    .end local v4    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_3
    return-object v9

    #@28
    .line 262
    .end local v5    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_4
    const v3, 0x7fffffff

    #@2b
    .line 263
    .local v3, "maxDigestLength":I
    if-eqz p2, :cond_5

    #@2d
    .line 264
    const-string/jumbo v7, "rsa"

    #@30
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@37
    move-result v7

    #@38
    .line 263
    if-eqz v7, :cond_5

    #@3a
    .line 265
    const-string/jumbo v7, "rsa"

    #@3d
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v7

    #@41
    .line 263
    if-eqz v7, :cond_5

    #@43
    .line 282
    invoke-static {p2}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    #@46
    move-result v2

    #@47
    .line 283
    .local v2, "keySize":I
    if-lt v2, v11, :cond_7

    #@49
    .line 284
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@4b
    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    #@4d
    .line 293
    .end local v2    # "keySize":I
    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v1

    #@51
    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_d

    #@57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@5d
    .line 294
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v7, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@5f
    and-int/lit16 v6, v7, 0xff

    #@61
    .line 295
    .local v6, "signValue":I
    const-string/jumbo v7, "rsa"

    #@64
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_9

    #@6a
    .line 296
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@6c
    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@6e
    if-ne v6, v7, :cond_9

    #@70
    .line 297
    iget-object v7, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@72
    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    #@74
    if-gt v7, v3, :cond_6

    #@76
    .line 298
    return-object v0

    #@77
    .line 285
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "algorithm$iterator":Ljava/util/Iterator;
    .end local v6    # "signValue":I
    .restart local v2    # "keySize":I
    :cond_7
    if-lt v2, v10, :cond_8

    #@79
    if-ge v2, v11, :cond_8

    #@7b
    .line 286
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@7d
    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    #@7f
    goto :goto_0

    #@80
    .line 287
    :cond_8
    if-lez v2, :cond_5

    #@82
    if-ge v2, v10, :cond_5

    #@84
    .line 288
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@86
    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    #@88
    goto :goto_0

    #@89
    .line 301
    .end local v2    # "keySize":I
    .restart local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .restart local v1    # "algorithm$iterator":Ljava/util/Iterator;
    .restart local v6    # "signValue":I
    :cond_9
    const-string/jumbo v7, "dsa"

    #@8c
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8f
    move-result v7

    #@90
    if-eqz v7, :cond_b

    #@92
    .line 302
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@94
    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@96
    if-ne v6, v7, :cond_b

    #@98
    .line 307
    :cond_a
    :goto_1
    return-object v0

    #@99
    .line 303
    :cond_b
    const-string/jumbo v7, "ecdsa"

    #@9c
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9f
    move-result v7

    #@a0
    if-eqz v7, :cond_c

    #@a2
    .line 304
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@a4
    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@a6
    if-eq v6, v7, :cond_a

    #@a8
    .line 305
    :cond_c
    const-string/jumbo v7, "ec"

    #@ab
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ae
    move-result v7

    #@af
    if-eqz v7, :cond_6

    #@b1
    .line 306
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@b3
    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@b5
    if-ne v6, v7, :cond_6

    #@b7
    goto :goto_1

    #@b8
    .line 311
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v6    # "signValue":I
    :cond_d
    return-object v9
.end method

.method static getSupportedAlgorithms(Ljava/security/AlgorithmConstraints;)Ljava/util/Collection;
    .locals 7
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 160
    .local v2, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    #@7
    monitor-enter v4

    #@8
    .line 161
    :try_start_0
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    #@a
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@1e
    .line 162
    .local v0, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@20
    const/16 v5, 0xf0

    #@22
    if-gt v3, v5, :cond_0

    #@24
    .line 163
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    #@26
    .line 164
    iget-object v5, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    #@28
    const/4 v6, 0x0

    #@29
    .line 163
    invoke-interface {p0, v3, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@2c
    move-result v3

    #@2d
    .line 162
    if-eqz v3, :cond_0

    #@2f
    .line 165
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 160
    .end local v0    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "sigAlg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3

    #@36
    .restart local v1    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    #@37
    .line 170
    return-object v2
.end method

.method static getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 177
    .local v2, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@15
    .line 178
    .local v0, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@17
    const/16 v4, 0xf0

    #@19
    if-gt v3, v4, :cond_0

    #@1b
    .line 179
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 183
    .end local v0    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_1
    return-object v2
.end method

.method static sizeInRecord()I
    .locals 1

    #@0
    .prologue
    .line 151
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method private static supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    .locals 4
    .param p0, "hash"    # Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .param p1, "signature"    # Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "priority"    # I

    #@0
    .prologue
    .line 221
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lsun/security/ssl/SignatureAndHashAlgorithm;-><init>(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    #@5
    .line 222
    .local v0, "pair":Lsun/security/ssl/SignatureAndHashAlgorithm;
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    #@7
    iget v2, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Duplicate SignatureAndHashAlgorithm definition, id: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 225
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@23
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 223
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 227
    :cond_0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    #@31
    iget v2, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v2

    #@37
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    #@3f
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "Duplicate SignatureAndHashAlgorithm definition, priority: "

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 230
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    #@4d
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 228
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 218
    :cond_1
    return-void
.end method

.method static valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 5
    .param p0, "hash"    # I
    .param p1, "signature"    # I
    .param p2, "sequence"    # I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 121
    and-int/lit16 p0, p0, 0xff

    #@4
    .line 122
    and-int/lit16 p1, p1, 0xff

    #@6
    .line 124
    shl-int/lit8 v2, p0, 0x8

    #@8
    or-int v0, v2, p1

    #@a
    .line 125
    .local v0, "id":I
    sget-object v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    #@c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@16
    .line 126
    .local v1, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-nez v1, :cond_0

    #@18
    .line 128
    new-instance v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@1a
    .line 129
    .end local v1    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Unknown (hash:0x"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-static {p0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 130
    const-string/jumbo v3, ", signature:0x"

    #@31
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 130
    invoke-static {p1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 130
    const-string/jumbo v3, ")"

    #@40
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 128
    invoke-direct {v1, v2, v0, p2}, Lsun/security/ssl/SignatureAndHashAlgorithm;-><init>(Ljava/lang/String;II)V

    #@4b
    .line 134
    .restart local v1    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_0
    return-object v1
.end method


# virtual methods
.method getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getHashValue()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@2
    shr-int/lit8 v0, v0, 0x8

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    return v0
.end method

.method getSignatureValue()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method
