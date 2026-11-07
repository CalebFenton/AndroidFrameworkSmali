.class public Ljavax/crypto/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o spi:Ljavax/crypto/SecretKeyFactorySpi;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    .line 300
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    .line 301
    nop

    .line 302
    const-string v0, "SecretKeyFactory"

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 305
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 309
    return-void

    .line 306
    :cond_21
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SecretKeyFactory not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyFacSpi"    # Ljavax/crypto/SecretKeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    .line 294
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 295
    iput-object p2, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    .line 296
    iput-object p3, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 344
    new-instance v0, Ljavax/crypto/SecretKeyFactory;

    invoke-direct {v0, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 389
    const-string v0, "SecretKeyFactory"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-class v1, Ljavax/crypto/SecretKeyFactorySpi;

    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 392
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/SecretKeyFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/SecretKeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 431
    const-string v0, "SecretKeyFactory"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-class v1, Ljavax/crypto/SecretKeyFactorySpi;

    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 434
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/SecretKeyFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/SecretKeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist-max-o nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;
    .registers 8
    .param p1, "oldSpi"    # Ljavax/crypto/SecretKeyFactorySpi;

    .line 472
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    if-eq p1, v1, :cond_d

    .line 476
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    monitor-exit v0

    return-object v1

    .line 478
    :cond_d
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 479
    monitor-exit v0

    return-object v2

    .line 481
    :cond_14
    :goto_14
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 482
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 483
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_4b

    if-nez v3, :cond_2f

    .line 484
    goto :goto_14

    .line 487
    :cond_2f
    :try_start_2f
    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 488
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/crypto/SecretKeyFactorySpi;

    if-nez v4, :cond_38

    .line 489
    goto :goto_14

    .line 491
    :cond_38
    move-object v4, v3

    check-cast v4, Ljavax/crypto/SecretKeyFactorySpi;

    .line 492
    .local v4, "spi":Ljavax/crypto/SecretKeyFactorySpi;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    .line 493
    iput-object v4, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_43} :catch_45
    .catchall {:try_start_2f .. :try_end_43} :catchall_4b

    .line 494
    :try_start_43
    monitor-exit v0

    return-object v4

    .line 495
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "spi":Ljavax/crypto/SecretKeyFactorySpi;
    :catch_45
    move-exception v3

    .line 498
    .end local v1    # "s":Ljava/security/Provider$Service;
    goto :goto_14

    .line 499
    :cond_47
    iput-object v2, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 500
    monitor-exit v0

    return-object v2

    .line 501
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    throw v1
.end method


# virtual methods
.method public final whitelist test-api generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 518
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 520
    :cond_b
    const/4 v0, 0x0

    .line 521
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 524
    .local v1, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v1, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 525
    :catch_13
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 527
    move-object v0, v2

    .line 529
    :cond_17
    invoke-direct {p0, v1}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v1

    .line 531
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_e

    .line 532
    instance-of v2, v0, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v2, :cond_25

    .line 533
    move-object v2, v0

    check-cast v2, Ljava/security/spec/InvalidKeySpecException;

    throw v2

    .line 535
    :cond_25
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Could not generate secret key"

    invoke-direct {v2, v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 462
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 7
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/security/spec/KeySpec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 561
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 562
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0

    .line 564
    :cond_b
    const/4 v0, 0x0

    .line 565
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 568
    .local v1, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 569
    :catch_13
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 571
    move-object v0, v2

    .line 573
    :cond_17
    invoke-direct {p0, v1}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v1

    .line 575
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_e

    .line 576
    instance-of v2, v0, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v2, :cond_25

    .line 577
    move-object v2, v0

    check-cast v2, Ljava/security/spec/InvalidKeySpecException;

    throw v2

    .line 579
    :cond_25
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Could not get key spec"

    invoke-direct {v2, v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 3

    .line 444
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 447
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    monitor-exit v0

    return-object v1

    .line 448
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist test-api translateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 597
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 599
    :cond_b
    const/4 v0, 0x0

    .line 600
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 603
    .local v1, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v1, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 604
    :catch_13
    move-exception v2

    .line 605
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 606
    move-object v0, v2

    .line 608
    :cond_17
    invoke-direct {p0, v1}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v1

    .line 610
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_e

    .line 611
    instance-of v2, v0, Ljava/security/InvalidKeyException;

    if-eqz v2, :cond_25

    .line 612
    move-object v2, v0

    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2

    .line 614
    :cond_25
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Could not translate key"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
