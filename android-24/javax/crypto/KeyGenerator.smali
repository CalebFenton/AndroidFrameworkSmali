.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final I_NONE:I = 0x1

.field private static final I_PARAMS:I = 0x3

.field private static final I_RANDOM:I = 0x2

.field private static final I_SIZE:I = 0x4


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initKeySize:I

.field private initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private initRandom:Ljava/security/SecureRandom;

.field private initType:I

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;

.field private volatile spi:Ljavax/crypto/KeyGeneratorSpi;


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
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 184
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    #@b
    .line 208
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    #@d
    .line 209
    const-string/jumbo v1, "KeyGenerator"

    #@10
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 210
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@1a
    .line 211
    const/4 v1, 0x1

    #@1b
    iput v1, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@1d
    .line 213
    const/4 v1, 0x0

    #@1e
    invoke-direct {p0, v2, v1}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    #@21
    move-result-object v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 214
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@26
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, " KeyGenerator not available"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 214
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1

    #@3e
    .line 207
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyGenSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 184
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    #@a
    .line 202
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@c
    .line 203
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    #@e
    .line 204
    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    #@10
    .line 201
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    new-instance v0, Ljavax/crypto/KeyGenerator;

    #@2
    invoke-direct {v0, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    .line 305
    const-string/jumbo v1, "KeyGenerator"

    #@3
    .line 306
    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    #@5
    .line 305
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 307
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    #@f
    .line 308
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 307
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
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
    .line 343
    const-string/jumbo v1, "KeyGenerator"

    #@3
    .line 344
    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    #@5
    .line 343
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 345
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    #@f
    .line 346
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 345
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;
    .locals 10
    .param p1, "oldSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "reinit"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 369
    iget-object v6, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 372
    if-eqz p1, :cond_0

    #@6
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@8
    if-eq p1, v5, :cond_0

    #@a
    .line 373
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v6

    #@d
    return-object v5

    #@e
    .line 375
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-nez v5, :cond_1

    #@12
    monitor-exit v6

    #@13
    .line 376
    return-object v9

    #@14
    .line 378
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_6

    #@1c
    .line 379
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/security/Provider$Service;

    #@24
    .line 380
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
    .line 384
    const/4 v5, 0x0

    #@2f
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    .line 386
    .local v2, "inst":Ljava/lang/Object;
    instance-of v5, v2, Ljavax/crypto/KeyGeneratorSpi;

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 389
    move-object v0, v2

    #@38
    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    #@3a
    move-object v4, v0

    #@3b
    .line 390
    .local v4, "spi":Ljavax/crypto/KeyGeneratorSpi;
    if-eqz p2, :cond_2

    #@3d
    .line 391
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@3f
    const/4 v7, 0x4

    #@40
    if-ne v5, v7, :cond_3

    #@42
    .line 392
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    #@44
    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    #@46
    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@49
    .line 402
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@4c
    move-result-object v5

    #@4d
    iput-object v5, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    #@4f
    .line 403
    iput-object v4, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    monitor-exit v6

    #@52
    .line 404
    return-object v4

    #@53
    .line 393
    :cond_3
    :try_start_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@55
    const/4 v7, 0x3

    #@56
    if-ne v5, v7, :cond_4

    #@58
    .line 394
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@5a
    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    #@5c
    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5f
    goto :goto_1

    #@60
    .line 405
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catch_0
    move-exception v1

    #@61
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    #@62
    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@64
    const/4 v7, 0x2

    #@65
    if-ne v5, v7, :cond_5

    #@67
    .line 396
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    #@69
    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6c
    goto :goto_1

    #@6d
    .line 369
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catchall_0
    move-exception v5

    #@6e
    monitor-exit v6

    #@6f
    throw v5

    #@70
    .line 397
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/security/Provider$Service;
    .restart local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_5
    :try_start_5
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@72
    const/4 v7, 0x1

    #@73
    if-eq v5, v7, :cond_2

    #@75
    .line 398
    new-instance v5, Ljava/lang/AssertionError;

    #@77
    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v8, "KeyGenerator initType: "

    #@7f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    iget v8, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    .line 398
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@90
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@91
    .line 409
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@94
    monitor-exit v6

    #@95
    .line 410
    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 415
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@3
    .line 416
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@6
    .line 417
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@8
    .line 418
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    #@a
    .line 414
    return-void
.end method

.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 4

    #@0
    .prologue
    .line 579
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 580
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@6
    invoke-virtual {v3}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 582
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 583
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@e
    .line 586
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 587
    :catch_0
    move-exception v0

    #@14
    .line 588
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    #@16
    .line 589
    move-object v1, v0

    #@17
    .line 591
    :cond_2
    const/4 v3, 0x1

    #@18
    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    #@1b
    move-result-object v2

    #@1c
    .line 593
    if-nez v2, :cond_1

    #@1e
    .line 594
    throw v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    #@0
    .prologue
    .line 355
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 356
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V

    #@6
    .line 357
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 355
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public final init(I)V
    .locals 1
    .param p1, "keysize"    # I

    #@0
    .prologue
    .line 534
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    #@5
    .line 533
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 549
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 550
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@6
    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@9
    .line 551
    return-void

    #@a
    .line 553
    :cond_0
    const/4 v1, 0x0

    #@b
    .line 554
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@d
    .line 557
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@10
    .line 558
    const/4 v3, 0x4

    #@11
    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@13
    .line 559
    iput p1, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    #@15
    .line 560
    const/4 v3, 0x0

    #@16
    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@18
    .line 561
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 562
    return-void

    #@1b
    .line 563
    :catch_0
    move-exception v0

    #@1c
    .line 564
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    #@1e
    .line 565
    move-object v1, v0

    #@1f
    .line 567
    :cond_2
    const/4 v3, 0x0

    #@20
    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    #@23
    move-result-object v2

    #@24
    .line 569
    if-nez v2, :cond_1

    #@26
    .line 570
    throw v1
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 427
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 428
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@7
    invoke-virtual {v3, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    #@a
    .line 429
    return-void

    #@b
    .line 431
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 432
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@e
    .line 435
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    #@11
    .line 436
    const/4 v3, 0x2

    #@12
    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@14
    .line 437
    const/4 v3, 0x0

    #@15
    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    #@17
    .line 438
    const/4 v3, 0x0

    #@18
    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@1a
    .line 439
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 440
    return-void

    #@1d
    .line 441
    :catch_0
    move-exception v0

    #@1e
    .line 442
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    #@20
    .line 443
    move-object v1, v0

    #@21
    .line 445
    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    #@24
    move-result-object v2

    #@25
    .line 447
    if-nez v2, :cond_1

    #@27
    .line 448
    throw v1
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 468
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 486
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 487
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@7
    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@a
    .line 488
    return-void

    #@b
    .line 490
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 491
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    #@e
    .line 494
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@11
    .line 495
    const/4 v3, 0x3

    #@12
    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    #@14
    .line 496
    const/4 v3, 0x0

    #@15
    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    #@17
    .line 497
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@19
    .line 498
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 499
    return-void

    #@1c
    .line 500
    :catch_0
    move-exception v0

    #@1d
    .line 501
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@1f
    .line 502
    move-object v1, v0

    #@20
    .line 504
    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    #@23
    move-result-object v2

    #@24
    .line 506
    if-nez v2, :cond_1

    #@26
    .line 507
    instance-of v3, v1, Ljava/security/InvalidAlgorithmParameterException;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 508
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    #@2c
    throw v1

    #@2d
    .line 510
    :cond_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 511
    check-cast v1, Ljava/lang/RuntimeException;

    #@33
    throw v1

    #@34
    .line 513
    :cond_4
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@36
    const-string/jumbo v4, "init() failed"

    #@39
    invoke-direct {v3, v4, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v3
.end method
