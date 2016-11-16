.class public Ljava/security/KeyFactory;
.super Ljava/lang/Object;
.source "KeyFactory.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile spi:Ljava/security/KeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 122
    const-string/jumbo v0, "jca"

    #@3
    const-string/jumbo v1, "KeyFactory"

    #@6
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    .line 121
    sput-object v0, Ljava/security/KeyFactory;->debug:Lsun/security/util/Debug;

    #@c
    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 134
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    #@b
    .line 156
    iput-object p1, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    #@d
    .line 157
    const-string/jumbo v1, "KeyFactory"

    #@10
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 158
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@1a
    .line 160
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    #@1d
    move-result-object v1

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 161
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@22
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " KeyFactory not available"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 161
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 155
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyFacSpi"    # Ljava/security/KeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    #@a
    .line 150
    iput-object p1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@c
    .line 151
    iput-object p2, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    #@e
    .line 152
    iput-object p3, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    #@10
    .line 149
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/security/KeyFactory;

    #@2
    invoke-direct {v0, p0}, Ljava/security/KeyFactory;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    const-string/jumbo v1, "KeyFactory"

    #@3
    .line 235
    const-class v2, Ljava/security/KeyFactorySpi;

    #@5
    .line 234
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 236
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/KeyFactory;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/security/KeyFactorySpi;

    #@f
    .line 237
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 236
    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    const-string/jumbo v1, "KeyFactory"

    #@3
    .line 272
    const-class v2, Ljava/security/KeyFactorySpi;

    #@5
    .line 271
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 273
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/KeyFactory;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/security/KeyFactorySpi;

    #@f
    .line 274
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 273
    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method private nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;
    .locals 8
    .param p1, "oldSpi"    # Ljava/security/KeyFactorySpi;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 308
    iget-object v6, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 311
    if-eqz p1, :cond_0

    #@6
    :try_start_0
    iget-object v5, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@8
    if-eq p1, v5, :cond_0

    #@a
    .line 312
    iget-object v5, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v6

    #@d
    return-object v5

    #@e
    .line 314
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-nez v5, :cond_1

    #@12
    monitor-exit v6

    #@13
    .line 315
    return-object v7

    #@14
    .line 317
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 318
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 320
    .local v3, "s":Ljava/security/Provider$Service;
    const/4 v5, 0x0

    #@25
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 321
    .local v2, "obj":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/KeyFactorySpi;

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 324
    move-object v0, v2

    #@2e
    check-cast v0, Ljava/security/KeyFactorySpi;

    #@30
    move-object v4, v0

    #@31
    .line 325
    .local v4, "spi":Ljava/security/KeyFactorySpi;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@34
    move-result-object v5

    #@35
    iput-object v5, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    #@37
    .line 326
    iput-object v4, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    monitor-exit v6

    #@3a
    .line 327
    return-object v4

    #@3b
    .line 332
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljava/security/KeyFactorySpi;
    :cond_2
    const/4 v5, 0x0

    #@3c
    :try_start_4
    iput-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    monitor-exit v6

    #@3f
    .line 333
    return-object v7

    #@40
    .line 308
    :catchall_0
    move-exception v5

    #@41
    monitor-exit v6

    #@42
    throw v5

    #@43
    .line 328
    .restart local v3    # "s":Ljava/security/Provider$Service;
    :catch_0
    move-exception v1

    #@44
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method


# virtual methods
.method public final generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 389
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@6
    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 391
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 392
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@e
    .line 395
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 396
    :catch_0
    move-exception v0

    #@14
    .line 397
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 398
    move-object v1, v0

    #@17
    .line 400
    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 402
    if-nez v2, :cond_1

    #@1d
    .line 403
    instance-of v3, v1, Ljava/lang/RuntimeException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 404
    check-cast v1, Ljava/lang/RuntimeException;

    #@23
    throw v1

    #@24
    .line 406
    :cond_3
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    #@26
    if-eqz v3, :cond_4

    #@28
    .line 407
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    #@2a
    throw v1

    #@2b
    .line 409
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@2d
    .line 410
    const-string/jumbo v4, "Could not generate private key"

    #@30
    .line 409
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method public final generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 351
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@6
    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 353
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 354
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@e
    .line 357
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 358
    :catch_0
    move-exception v0

    #@14
    .line 359
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 360
    move-object v1, v0

    #@17
    .line 362
    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 364
    if-nez v2, :cond_1

    #@1d
    .line 365
    instance-of v3, v1, Ljava/lang/RuntimeException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 366
    check-cast v1, Ljava/lang/RuntimeException;

    #@23
    throw v1

    #@24
    .line 368
    :cond_3
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    #@26
    if-eqz v3, :cond_4

    #@28
    .line 369
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    #@2a
    throw v1

    #@2b
    .line 371
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@2d
    .line 372
    const-string/jumbo v4, "Could not generate public key"

    #@30
    .line 371
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 436
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@6
    invoke-virtual {v3, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 438
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 439
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@e
    .line 442
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 443
    :catch_0
    move-exception v0

    #@14
    .line 444
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 445
    move-object v1, v0

    #@17
    .line 447
    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 449
    if-nez v2, :cond_1

    #@1d
    .line 450
    instance-of v3, v1, Ljava/lang/RuntimeException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 451
    check-cast v1, Ljava/lang/RuntimeException;

    #@23
    throw v1

    #@24
    .line 453
    :cond_3
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    #@26
    if-eqz v3, :cond_4

    #@28
    .line 454
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    #@2a
    throw v1

    #@2b
    .line 456
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@2d
    .line 457
    const-string/jumbo v4, "Could not get key spec"

    #@30
    .line 456
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    #@0
    .prologue
    .line 283
    iget-object v1, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 285
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@6
    .line 286
    iget-object v0, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 283
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public final translateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 472
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 473
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@6
    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 475
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 476
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    #@e
    .line 479
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 480
    :catch_0
    move-exception v0

    #@14
    .line 481
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 482
    move-object v1, v0

    #@17
    .line 484
    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 486
    if-nez v2, :cond_1

    #@1d
    .line 487
    instance-of v3, v1, Ljava/lang/RuntimeException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 488
    check-cast v1, Ljava/lang/RuntimeException;

    #@23
    throw v1

    #@24
    .line 490
    :cond_3
    instance-of v3, v1, Ljava/security/InvalidKeyException;

    #@26
    if-eqz v3, :cond_4

    #@28
    .line 491
    check-cast v1, Ljava/security/InvalidKeyException;

    #@2a
    throw v1

    #@2b
    .line 493
    :cond_4
    new-instance v3, Ljava/security/InvalidKeyException;

    #@2d
    .line 494
    const-string/jumbo v4, "Could not translate key"

    #@30
    .line 493
    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method
