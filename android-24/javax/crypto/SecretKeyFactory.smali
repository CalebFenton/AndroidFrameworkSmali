.class public Ljavax/crypto/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;

.field private volatile spi:Ljavax/crypto/SecretKeyFactorySpi;


# direct methods
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
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 223
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    #@b
    .line 244
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    #@d
    .line 245
    const-string/jumbo v1, "SecretKeyFactory"

    #@10
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 246
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@1a
    .line 248
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    #@1d
    move-result-object v1

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 249
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@22
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " SecretKeyFactory not available"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 249
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 243
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyFacSpi"    # Ljavax/crypto/SecretKeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 223
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    #@a
    .line 238
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@c
    .line 239
    iput-object p2, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    #@e
    .line 240
    iput-object p3, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    #@10
    .line 237
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    new-instance v0, Ljavax/crypto/SecretKeyFactory;

    #@2
    invoke-direct {v0, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
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
    .line 331
    const-string/jumbo v1, "SecretKeyFactory"

    #@3
    .line 332
    const-class v2, Ljavax/crypto/SecretKeyFactorySpi;

    #@5
    .line 331
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 333
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    #@f
    .line 334
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 333
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;
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
    .line 371
    const-string/jumbo v1, "SecretKeyFactory"

    #@3
    .line 372
    const-class v2, Ljavax/crypto/SecretKeyFactorySpi;

    #@5
    .line 371
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 373
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    #@f
    .line 374
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 373
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;
    .locals 8
    .param p1, "oldSpi"    # Ljavax/crypto/SecretKeyFactorySpi;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 411
    iget-object v6, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 414
    if-eqz p1, :cond_0

    #@6
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@8
    if-eq p1, v5, :cond_0

    #@a
    .line 415
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v6

    #@d
    return-object v5

    #@e
    .line 417
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-nez v5, :cond_1

    #@12
    monitor-exit v6

    #@13
    .line 418
    return-object v7

    #@14
    .line 420
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 421
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/security/Provider$Service;

    #@24
    .line 422
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@27
    move-result-object v5

    #@28
    invoke-static {v5}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_1

    #@2e
    .line 426
    const/4 v5, 0x0

    #@2f
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    .line 427
    .local v2, "obj":Ljava/lang/Object;
    instance-of v5, v2, Ljavax/crypto/SecretKeyFactorySpi;

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 430
    move-object v0, v2

    #@38
    check-cast v0, Ljavax/crypto/SecretKeyFactorySpi;

    #@3a
    move-object v4, v0

    #@3b
    .line 431
    .local v4, "spi":Ljavax/crypto/SecretKeyFactorySpi;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@3e
    move-result-object v5

    #@3f
    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    #@41
    .line 432
    iput-object v4, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    monitor-exit v6

    #@44
    .line 433
    return-object v4

    #@45
    .line 438
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_2
    const/4 v5, 0x0

    #@46
    :try_start_4
    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@48
    monitor-exit v6

    #@49
    .line 439
    return-object v7

    #@4a
    .line 411
    :catchall_0
    move-exception v5

    #@4b
    monitor-exit v6

    #@4c
    throw v5

    #@4d
    .line 434
    .restart local v3    # "s":Ljava/security/Provider$Service;
    :catch_0
    move-exception v1

    #@4e
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method


# virtual methods
.method public final generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 457
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@6
    invoke-virtual {v3, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 459
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 460
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@e
    .line 463
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 464
    :catch_0
    move-exception v0

    #@14
    .line 465
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 466
    move-object v1, v0

    #@17
    .line 468
    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 470
    if-nez v2, :cond_1

    #@1d
    .line 471
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 472
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    #@23
    throw v1

    #@24
    .line 474
    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@26
    .line 475
    const-string/jumbo v4, "Could not generate secret key"

    #@29
    .line 474
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 501
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@6
    invoke-virtual {v3, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 503
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 504
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@e
    .line 507
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 508
    :catch_0
    move-exception v0

    #@14
    .line 509
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 510
    move-object v1, v0

    #@17
    .line 512
    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 514
    if-nez v2, :cond_1

    #@1d
    .line 515
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 516
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    #@23
    throw v1

    #@24
    .line 518
    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@26
    .line 519
    const-string/jumbo v4, "Could not get key spec"

    #@29
    .line 518
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v3
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    #@0
    .prologue
    .line 383
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 385
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@6
    .line 386
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 383
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public final translateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 536
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@6
    invoke-virtual {v3, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 538
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 539
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    #@e
    .line 542
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 543
    :catch_0
    move-exception v0

    #@14
    .line 544
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@16
    .line 545
    move-object v1, v0

    #@17
    .line 547
    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    #@1a
    move-result-object v2

    #@1b
    .line 549
    if-nez v2, :cond_1

    #@1d
    .line 550
    instance-of v3, v1, Ljava/security/InvalidKeyException;

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 551
    check-cast v1, Ljava/security/InvalidKeyException;

    #@23
    throw v1

    #@24
    .line 553
    :cond_3
    new-instance v3, Ljava/security/InvalidKeyException;

    #@26
    .line 554
    const-string/jumbo v4, "Could not translate key"

    #@29
    .line 553
    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v3
.end method
