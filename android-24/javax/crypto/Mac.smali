.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final debug:Lsun/security/util/Debug;

.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initialized:Z

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 142
    const-string/jumbo v0, "jca"

    #@3
    const-string/jumbo v1, "Mac"

    #@6
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    .line 141
    sput-object v0, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    #@c
    .line 310
    const/16 v0, 0xa

    #@e
    sput v0, Ljavax/crypto/Mac;->warnCount:I

    #@10
    .line 139
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@6
    .line 173
    iput-object p1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@8
    .line 174
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@f
    .line 172
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@6
    .line 166
    iput-object p1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@8
    .line 167
    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@a
    .line 168
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@c
    .line 169
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@f
    .line 165
    return-void
.end method

.method private chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 10
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 366
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@5
    if-eqz v6, :cond_1

    #@7
    if-eqz p1, :cond_0

    #@9
    iget-object v6, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@b
    if-nez v6, :cond_1

    #@d
    .line 367
    :cond_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@f
    invoke-virtual {v6, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v7

    #@13
    .line 368
    return-void

    #@14
    .line 370
    :cond_1
    const/4 v2, 0x0

    #@15
    .line 371
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "Mac"

    #@18
    iget-object v8, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@1a
    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@1d
    move-result-object v6

    #@1e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v4

    #@22
    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_3

    #@28
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/security/Provider$Service;

    #@2e
    .line 373
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_2

    #@34
    .line 376
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@37
    move-result-object v6

    #@38
    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_2

    #@3e
    .line 380
    const/4 v6, 0x0

    #@3f
    :try_start_2
    invoke-virtual {v3, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljavax/crypto/MacSpi;

    #@45
    .line 381
    .local v5, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v5, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@48
    .line 382
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@4b
    move-result-object v6

    #@4c
    iput-object v6, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@4e
    .line 383
    iput-object v5, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    monitor-exit v7

    #@51
    .line 384
    return-void

    #@52
    .line 385
    .end local v5    # "spi":Ljavax/crypto/MacSpi;
    :catch_0
    move-exception v0

    #@53
    .line 389
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_2

    #@55
    .line 390
    move-object v2, v0

    #@56
    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    #@57
    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_3
    :try_start_3
    instance-of v6, v2, Ljava/security/InvalidKeyException;

    #@59
    if-eqz v6, :cond_4

    #@5b
    .line 396
    check-cast v2, Ljava/security/InvalidKeyException;

    #@5d
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    .line 365
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@5f
    monitor-exit v7

    #@60
    throw v6

    #@61
    .line 398
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    instance-of v6, v2, Ljava/security/InvalidAlgorithmParameterException;

    #@63
    if-eqz v6, :cond_5

    #@65
    .line 399
    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    #@67
    throw v2

    #@68
    .line 401
    :cond_5
    instance-of v6, v2, Ljava/lang/RuntimeException;

    #@6a
    if-eqz v6, :cond_6

    #@6c
    .line 402
    check-cast v2, Ljava/lang/RuntimeException;

    #@6e
    throw v2

    #@6f
    .line 404
    :cond_6
    if-eqz p1, :cond_7

    #@71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    .line 405
    .local v1, "kName":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/security/InvalidKeyException;

    #@7b
    .line 406
    new-instance v8, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v9, "No installed provider supports this key: "

    #@83
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    .line 405
    invoke-direct {v6, v8, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@92
    throw v6

    #@93
    .line 404
    .end local v1    # "kName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@96
    .restart local v1    # "kName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    const-string/jumbo v3, "Mac"

    #@3
    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    .line 221
    .local v1, "services":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .line 222
    .local v2, "t":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/Provider$Service;

    #@17
    .line 224
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 227
    new-instance v3, Ljavax/crypto/Mac;

    #@23
    invoke-direct {v3, p0}, Ljavax/crypto/Mac;-><init>(Ljava/lang/String;)V

    #@26
    return-object v3

    #@27
    .line 229
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@29
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Algorithm "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v5, " not available"

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 229
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
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
    .line 270
    const-string/jumbo v1, "Mac"

    #@3
    const-class v2, Ljavax/crypto/MacSpi;

    #@5
    .line 269
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 271
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/Mac;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/MacSpi;

    #@f
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
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
    .line 305
    const-string/jumbo v1, "Mac"

    #@3
    const-class v2, Ljavax/crypto/MacSpi;

    #@5
    .line 304
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 306
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/Mac;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/MacSpi;

    #@f
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 10

    #@0
    .prologue
    .line 318
    iget-object v7, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@2
    if-nez v7, :cond_0

    #@4
    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@6
    if-nez v7, :cond_1

    #@8
    .line 319
    :cond_0
    return-void

    #@9
    .line 321
    :cond_1
    iget-object v8, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@b
    monitor-enter v8

    #@c
    .line 322
    :try_start_0
    iget-object v7, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-eqz v7, :cond_2

    #@10
    monitor-exit v8

    #@11
    .line 323
    return-void

    #@12
    .line 325
    :cond_2
    :try_start_1
    sget-object v7, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    #@14
    if-eqz v7, :cond_4

    #@16
    .line 326
    sget v7, Ljavax/crypto/Mac;->warnCount:I

    #@18
    add-int/lit8 v6, v7, -0x1

    #@1a
    sput v6, Ljavax/crypto/Mac;->warnCount:I

    #@1c
    .line 327
    .local v6, "w":I
    if-ltz v6, :cond_4

    #@1e
    .line 328
    sget-object v7, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    #@20
    const-string/jumbo v9, "Mac.init() not first method called, disabling delayed provider selection"

    #@23
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@26
    .line 330
    if-nez v6, :cond_3

    #@28
    .line 331
    sget-object v7, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    #@2a
    const-string/jumbo v9, "Further warnings of this type will be suppressed"

    #@2d
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@30
    .line 334
    :cond_3
    new-instance v7, Ljava/lang/Exception;

    #@32
    const-string/jumbo v9, "Call trace"

    #@35
    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    #@3b
    .line 337
    .end local v6    # "w":I
    :cond_4
    const/4 v2, 0x0

    #@3c
    .line 338
    .local v2, "lastException":Ljava/lang/Exception;
    const-string/jumbo v7, "Mac"

    #@3f
    iget-object v9, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@41
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@44
    move-result-object v7

    #@45
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v5

    #@49
    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_6

    #@4f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Ljava/security/Provider$Service;

    #@55
    .line 339
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@58
    move-result-object v7

    #@59
    invoke-static {v7}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    move-result v7

    #@5d
    if-eqz v7, :cond_5

    #@5f
    .line 343
    const/4 v7, 0x0

    #@60
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    .line 344
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Ljavax/crypto/MacSpi;

    #@66
    if-eqz v7, :cond_5

    #@68
    .line 347
    check-cast v3, Ljavax/crypto/MacSpi;

    #@6a
    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@6c
    .line 348
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@6f
    move-result-object v7

    #@70
    iput-object v7, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    monitor-exit v8

    #@73
    .line 349
    return-void

    #@74
    .line 350
    :catch_0
    move-exception v0

    #@75
    .line 351
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v0

    #@76
    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    #@77
    .line 354
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_6
    :try_start_3
    new-instance v1, Ljava/security/ProviderException;

    #@79
    .line 355
    const-string/jumbo v7, "Could not construct MacSpi instance"

    #@7c
    .line 354
    invoke-direct {v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@7f
    .line 356
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_7

    #@81
    .line 357
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@84
    .line 359
    :cond_7
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    .line 321
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@86
    monitor-exit v8

    #@87
    throw v7
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 687
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/crypto/Mac;

    #@9
    .line 688
    .local v0, "that":Ljavax/crypto/Mac;
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@b
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljavax/crypto/MacSpi;

    #@11
    iput-object v1, v0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@13
    .line 689
    return-object v0
.end method

.method public final doFinal([BI)V
    .locals 4
    .param p1, "output"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 615
    iget-boolean v2, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 616
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "MAC not initialized"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 618
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    #@13
    move-result v1

    #@14
    .line 619
    .local v1, "macLen":I
    if-eqz p1, :cond_1

    #@16
    array-length v2, p1

    #@17
    sub-int/2addr v2, p2

    #@18
    if-ge v2, v1, :cond_2

    #@1a
    .line 620
    :cond_1
    new-instance v2, Ljavax/crypto/ShortBufferException;

    #@1c
    .line 621
    const-string/jumbo v3, "Cannot store MAC in output buffer"

    #@1f
    .line 620
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 623
    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    #@26
    move-result-object v0

    #@27
    .line 624
    .local v0, "mac":[B
    const/4 v2, 0x0

    #@28
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 625
    return-void
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 577
    iget-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 578
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "MAC not initialized"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 580
    :cond_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@12
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    #@15
    move-result-object v0

    #@16
    .line 581
    .local v0, "mac":[B
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@18
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineReset()V

    #@1b
    .line 582
    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 650
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 651
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "MAC not initialized"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 654
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    #@13
    .line 655
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentSpi()Ljavax/crypto/MacSpi;
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@2
    return-object v0
.end method

.method public final getMacLength()I
    .locals 1

    #@0
    .prologue
    .line 427
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 428
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 417
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 418
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@2
    if-eqz v1, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    iget-object v1, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 442
    :cond_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 449
    :goto_0
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    #@13
    .line 439
    return-void

    #@14
    .line 444
    :cond_1
    const/4 v1, 0x0

    #@15
    :try_start_1
    invoke-direct {p0, p1, v1}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    #@18
    goto :goto_0

    #@19
    .line 446
    :catch_0
    move-exception v0

    #@1a
    .line 447
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@1c
    const-string/jumbo v2, "init() failed"

    #@1f
    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@2
    if-eqz v0, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 467
    :cond_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@c
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@f
    .line 471
    :goto_0
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@12
    .line 465
    return-void

    #@13
    .line 469
    :cond_1
    invoke-direct {p0, p1, p2}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@16
    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    #@0
    .prologue
    .line 673
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 674
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    #@8
    .line 672
    return-void
.end method

.method public final update(B)V
    .locals 2
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 484
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "MAC not initialized"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 487
    :cond_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@12
    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    #@15
    .line 482
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 547
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "MAC not initialized"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 550
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Buffer must not be null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 553
    :cond_1
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@1d
    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@20
    .line 545
    return-void
.end method

.method public final update([B)V
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 500
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "MAC not initialized"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 503
    :cond_0
    if-eqz p1, :cond_1

    #@12
    .line 504
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@14
    array-length v1, p1

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@19
    .line 498
    :cond_1
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    #@3
    .line 522
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "MAC not initialized"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 526
    :cond_0
    if-eqz p1, :cond_3

    #@12
    .line 527
    if-ltz p2, :cond_1

    #@14
    array-length v0, p1

    #@15
    sub-int/2addr v0, p2

    #@16
    if-le p3, v0, :cond_2

    #@18
    .line 528
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Bad arguments"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 527
    :cond_2
    if-ltz p3, :cond_1

    #@23
    .line 529
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    #@25
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@28
    .line 520
    :cond_3
    return-void
.end method
