.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static greylist-max-o warnCount:I


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o initialized:Z

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o spi:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 361
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/Mac;->warnCount:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 218
    iput-object p1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    .line 220
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 210
    iput-object p1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 211
    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 212
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private greylist-max-o chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 9
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_14

    if-eqz p1, :cond_d

    iget-object v1, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 432
    :cond_d
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 433
    monitor-exit v0

    return-void

    .line 435
    :cond_14
    const/4 v1, 0x0

    .line 437
    .local v1, "lastException":Ljava/lang/Exception;
    const-string v2, "Mac"

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 439
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 440
    goto :goto_21

    .line 442
    :cond_34
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_96

    if-nez v4, :cond_3f

    .line 443
    goto :goto_21

    .line 446
    :cond_3f
    const/4 v4, 0x0

    :try_start_40
    invoke-virtual {v3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/MacSpi;

    .line 447
    .local v4, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v4, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 448
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 449
    iput-object v4, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_51} :catch_53
    .catchall {:try_start_40 .. :try_end_51} :catchall_96

    .line 455
    :try_start_51
    monitor-exit v0

    return-void

    .line 456
    .end local v4    # "spi":Ljavax/crypto/MacSpi;
    :catch_53
    move-exception v4

    .line 460
    .local v4, "e":Ljava/lang/Exception;
    if-nez v1, :cond_57

    .line 461
    move-object v1, v4

    .line 464
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_57
    goto :goto_21

    .line 466
    :cond_58
    instance-of v2, v1, Ljava/security/InvalidKeyException;

    if-nez v2, :cond_92

    .line 469
    instance-of v2, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-nez v2, :cond_8e

    .line 472
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_8a

    .line 475
    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_71

    :cond_6f
    const-string v2, "(null)"

    .line 476
    .local v2, "kName":Ljava/lang/String;
    :goto_71
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No installed provider supports this key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v3

    .line 473
    .end local v2    # "kName":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_8a
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2

    .line 470
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_8e
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2

    .line 467
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_92
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidKeyException;

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2

    .line 479
    .end local v1    # "lastException":Ljava/lang/Exception;
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_51 .. :try_end_98} :catchall_96

    throw v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 264
    const-string v0, "Mac"

    invoke-static {v0, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 269
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 270
    goto :goto_a

    .line 274
    :cond_21
    new-instance v3, Ljavax/crypto/Mac;

    invoke-direct {v3, p0}, Ljavax/crypto/Mac;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 276
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_27
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 317
    const-string v0, "Mac"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-class v1, Ljavax/crypto/MacSpi;

    .line 319
    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 320
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/Mac;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 354
    const-string v0, "Mac"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-class v1, Ljavax/crypto/MacSpi;

    .line 356
    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 357
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/Mac;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method greylist-max-o chooseFirstProvider()V
    .registers 7

    .line 371
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-nez v0, :cond_61

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_61

    .line 374
    :cond_9
    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_c
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_12

    .line 376
    monitor-exit v0

    return-void

    .line 393
    :cond_12
    const/4 v1, 0x0

    .line 395
    .local v1, "lastException":Ljava/lang/Exception;
    const-string v2, "Mac"

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 396
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v4
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_5e

    if-nez v4, :cond_36

    .line 397
    goto :goto_1f

    .line 400
    :cond_36
    const/4 v4, 0x0

    :try_start_37
    invoke-virtual {v3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 401
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/crypto/MacSpi;

    if-nez v5, :cond_40

    .line 402
    goto :goto_1f

    .line 404
    :cond_40
    move-object v5, v4

    check-cast v5, Ljavax/crypto/MacSpi;

    iput-object v5, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 405
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_4b} :catch_4d
    .catchall {:try_start_37 .. :try_end_4b} :catchall_5e

    .line 412
    :try_start_4b
    monitor-exit v0

    return-void

    .line 413
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_4d
    move-exception v4

    .line 414
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v4

    .line 416
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1f

    .line 417
    :cond_50
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Could not construct MacSpi instance"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 419
    .local v2, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_5c

    .line 420
    invoke-virtual {v2, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 422
    :cond_5c
    nop

    .end local p0    # "this":Ljavax/crypto/Mac;
    throw v2

    .line 423
    .end local v1    # "lastException":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/security/ProviderException;
    .restart local p0    # "this":Ljavax/crypto/Mac;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_5e

    throw v1

    .line 372
    :cond_61
    :goto_61
    return-void
.end method

.method public final whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 778
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 779
    .local v0, "that":Ljavax/crypto/Mac;
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    iput-object v1, v0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 780
    return-object v0
.end method

.method public final whitelist test-api doFinal([BI)V
    .registers 6
    .param p1, "output"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 706
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_22

    .line 709
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    .line 710
    .local v0, "macLen":I
    if-eqz p1, :cond_1a

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_1a

    .line 714
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    .line 715
    .local v1, "mac":[B
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    return-void

    .line 711
    .end local v1    # "mac":[B
    :cond_1a
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "Cannot store MAC in output buffer"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    .end local v0    # "macLen":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 668
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_13

    .line 671
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 672
    .local v0, "mac":[B
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 673
    return-object v0

    .line 669
    .end local v0    # "mac":[B
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([B)[B
    .registers 4
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 742
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_f

    .line 745
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 746
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0

    .line 743
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o test-api getCurrentSpi()Ljavax/crypto/MacSpi;
    .registers 2

    .line 791
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    return-object v0
.end method

.method public final whitelist test-api getMacLength()I
    .registers 2

    .line 498
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 499
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 488
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 489
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(Ljava/security/Key;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 514
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_b

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 515
    :cond_b
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_14

    .line 517
    :cond_11
    invoke-direct {p0, p1, v1}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_14
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_14} :catch_19

    .line 521
    :goto_14
    nop

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 531
    return-void

    .line 519
    :catch_19
    move-exception v0

    .line 520
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "init() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_a

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 550
    :cond_a
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_13

    .line 552
    :cond_10
    invoke-direct {p0, p1, p2}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 554
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 563
    return-void
.end method

.method public final whitelist test-api reset()V
    .registers 2

    .line 764
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 765
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 766
    return-void
.end method

.method public final whitelist test-api update(B)V
    .registers 4
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 575
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_d

    .line 578
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 579
    return-void

    .line 576
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 637
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 638
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_17

    .line 641
    if-eqz p1, :cond_f

    .line 644
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 645
    return-void

    .line 642
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([B)V
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 590
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 591
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_11

    .line 594
    if-eqz p1, :cond_10

    .line 595
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 597
    :cond_10
    return-void

    .line 592
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 613
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_20

    .line 617
    if-eqz p1, :cond_1f

    .line 618
    if-ltz p2, :cond_17

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_17

    if-ltz p3, :cond_17

    .line 620
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    goto :goto_1f

    .line 619
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_1f
    :goto_1f
    return-void

    .line 614
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
