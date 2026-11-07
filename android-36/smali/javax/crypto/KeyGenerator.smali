.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final greylist-max-o I_NONE:I = 0x1

.field private static final greylist-max-o I_PARAMS:I = 0x3

.field private static final greylist-max-o I_RANDOM:I = 0x2

.field private static final greylist-max-o I_SIZE:I = 0x4


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o initKeySize:I

.field private greylist-max-o initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o initRandom:Ljava/security/SecureRandom;

.field private greylist-max-o initType:I

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

.field private volatile greylist-max-o spi:Ljavax/crypto/KeyGeneratorSpi;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    .line 227
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 228
    nop

    .line 229
    const-string v0, "KeyGenerator"

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    .line 231
    const/4 v1, 0x1

    iput v1, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 233
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 245
    return-void

    .line 234
    :cond_25
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KeyGenerator not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyGenSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    .line 213
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 214
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 215
    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 291
    new-instance v0, Ljavax/crypto/KeyGenerator;

    invoke-direct {v0, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 334
    const-string v0, "KeyGenerator"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-class v1, Ljavax/crypto/KeyGeneratorSpi;

    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 337
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/KeyGenerator;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/KeyGeneratorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 374
    const-string v0, "KeyGenerator"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-class v1, Ljavax/crypto/KeyGeneratorSpi;

    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 377
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/KeyGenerator;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/KeyGeneratorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist-max-o nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;
    .registers 11
    .param p1, "oldSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "reinit"    # Z

    .line 401
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    if-eq p1, v1, :cond_d

    .line 405
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    monitor-exit v0

    return-object v1

    .line 407
    :cond_d
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 408
    monitor-exit v0

    return-object v2

    .line 410
    :cond_14
    :goto_14
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 411
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 412
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_94

    if-nez v3, :cond_2f

    .line 413
    goto :goto_14

    .line 416
    :cond_2f
    :try_start_2f
    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 418
    .local v3, "inst":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/crypto/KeyGeneratorSpi;

    if-nez v4, :cond_38

    .line 419
    goto :goto_14

    .line 421
    :cond_38
    move-object v4, v3

    check-cast v4, Ljavax/crypto/KeyGeneratorSpi;

    .line 422
    .local v4, "spi":Ljavax/crypto/KeyGeneratorSpi;
    if-eqz p2, :cond_83

    .line 423
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4a

    .line 424
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    iget-object v6, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    goto :goto_83

    .line 425
    :cond_4a
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_57

    .line 426
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_83

    .line 427
    :cond_57
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_62

    .line 428
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    goto :goto_83

    .line 429
    :cond_62
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_68

    goto :goto_83

    .line 430
    :cond_68
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyGenerator initType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljavax/crypto/KeyGenerator;->initType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "s":Ljava/security/Provider$Service;
    .end local p0    # "this":Ljavax/crypto/KeyGenerator;
    .end local p1    # "oldSpi":Ljavax/crypto/KeyGeneratorSpi;
    .end local p2    # "reinit":Z
    throw v5

    .line 434
    .restart local v1    # "s":Ljava/security/Provider$Service;
    .restart local p0    # "this":Ljavax/crypto/KeyGenerator;
    .restart local p1    # "oldSpi":Ljavax/crypto/KeyGeneratorSpi;
    .restart local p2    # "reinit":Z
    :cond_83
    :goto_83
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 435
    iput-object v4, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8b} :catch_8d
    .catchall {:try_start_2f .. :try_end_8b} :catchall_94

    .line 436
    :try_start_8b
    monitor-exit v0

    return-object v4

    .line 437
    .end local v3    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catch_8d
    move-exception v3

    .line 440
    .end local v1    # "s":Ljava/security/Provider$Service;
    goto :goto_14

    .line 441
    :cond_8f
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V

    .line 442
    monitor-exit v0

    return-object v2

    .line 443
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_94

    throw v1
.end method


# virtual methods
.method greylist-max-o disableFailover()V
    .registers 3

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    .line 448
    const/4 v1, 0x0

    iput v1, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 449
    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 450
    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    .line 451
    return-void
.end method

.method public final whitelist test-api generateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .line 611
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 612
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 614
    :cond_b
    const/4 v0, 0x0

    .line 615
    .local v0, "failure":Ljava/lang/RuntimeException;
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 618
    .local v1, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 619
    :catch_13
    move-exception v2

    .line 620
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_17

    .line 621
    move-object v0, v2

    .line 623
    :cond_17
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    .line 625
    .end local v2    # "e":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_1f

    goto :goto_e

    .line 626
    :cond_1f
    throw v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 3

    .line 387
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V

    .line 389
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    monitor-exit v0

    return-object v1

    .line 390
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist test-api init(I)V
    .registers 3
    .param p1, "keysize"    # I

    .line 566
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 567
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/SecureRandom;)V
    .registers 7
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 581
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_a

    .line 582
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 583
    return-void

    .line 585
    :cond_a
    const/4 v0, 0x0

    .line 586
    .local v0, "failure":Ljava/lang/RuntimeException;
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 589
    .local v1, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :goto_d
    :try_start_d
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 590
    const/4 v2, 0x4

    iput v2, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 591
    iput p1, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 592
    const/4 v2, 0x0

    iput-object v2, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 593
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 594
    return-void

    .line 595
    :catch_1b
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_1f

    .line 597
    move-object v0, v2

    .line 599
    :cond_1f
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    .line 601
    .end local v2    # "e":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_27

    goto :goto_d

    .line 602
    :cond_27
    throw v0
.end method

.method public final whitelist test-api init(Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 459
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_a

    .line 460
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 461
    return-void

    .line 463
    :cond_a
    const/4 v0, 0x0

    .line 464
    .local v0, "failure":Ljava/lang/RuntimeException;
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 467
    .local v1, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :goto_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {v1, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 468
    const/4 v3, 0x2

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 469
    iput v2, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 470
    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 471
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1b} :catch_1c

    .line 472
    return-void

    .line 473
    :catch_1c
    move-exception v3

    .line 474
    .local v3, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_20

    .line 475
    move-object v0, v3

    .line 477
    :cond_20
    invoke-direct {p0, v1, v2}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    .line 479
    .end local v3    # "e":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_27

    goto :goto_d

    .line 480
    :cond_27
    throw v0
.end method

.method public final whitelist test-api init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 502
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 503
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_a

    .line 519
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 520
    return-void

    .line 522
    :cond_a
    const/4 v0, 0x0

    .line 523
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 526
    .local v1, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 527
    const/4 v3, 0x3

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 528
    iput v2, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 529
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 530
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    .line 531
    return-void

    .line 532
    :catch_1b
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/Exception;
    if-nez v0, :cond_1f

    .line 534
    move-object v0, v3

    .line 536
    :cond_1f
    invoke-direct {p0, v1, v2}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    .line 538
    .end local v3    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_d

    .line 539
    instance-of v2, v0, Ljava/security/InvalidAlgorithmParameterException;

    if-nez v2, :cond_39

    .line 542
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_31

    .line 543
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 545
    :cond_31
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "init() failed"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 540
    :cond_39
    move-object v2, v0

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2
.end method
