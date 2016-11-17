.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final I_NO_PARAMS:I = 0x1

.field private static final I_PARAMS:I = 0x2

.field private static final debug:Lsun/security/util/Debug;

.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "jca"

    #@3
    const-string/jumbo v1, "KeyAgreement"

    #@6
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    .line 92
    sput-object v0, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    #@c
    .line 274
    const/16 v0, 0xa

    #@e
    sput v0, Ljavax/crypto/KeyAgreement;->warnCount:I

    #@10
    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 122
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@5
    .line 123
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    #@c
    .line 121
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAgreeSpi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@5
    .line 116
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    #@7
    .line 117
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@9
    .line 118
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    #@c
    .line 114
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 12
    .param p1, "initType"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    iget-object v11, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 345
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@5
    if-eqz v0, :cond_0

    #@7
    if-nez p2, :cond_0

    #@9
    .line 346
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@b
    move-object v0, p0

    #@c
    move v2, p1

    #@d
    move-object v3, p2

    #@e
    move-object v4, p3

    #@f
    move-object/from16 v5, p4

    #@11
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v11

    #@15
    .line 347
    return-void

    #@16
    .line 349
    :cond_0
    const/4 v8, 0x0

    #@17
    .line 350
    .local v8, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "KeyAgreement"

    #@1a
    iget-object v2, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@1c
    invoke-static {v0, v2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v10

    #@24
    .end local v8    # "lastException":Ljava/lang/Exception;
    .local v10, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v9

    #@2e
    check-cast v9, Ljava/security/Provider$Service;

    #@30
    .line 352
    .local v9, "s":Ljava/security/Provider$Service;
    invoke-virtual {v9, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 355
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@39
    move-result-object v0

    #@3a
    invoke-static {v0}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 359
    const/4 v0, 0x0

    #@41
    :try_start_2
    invoke-virtual {v9, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    #@47
    .local v1, "spi":Ljavax/crypto/KeyAgreementSpi;
    move-object v0, p0

    #@48
    move v2, p1

    #@49
    move-object v3, p2

    #@4a
    move-object v4, p3

    #@4b
    move-object/from16 v5, p4

    #@4d
    .line 360
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@50
    .line 361
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    #@56
    .line 362
    iput-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    monitor-exit v11

    #@59
    .line 363
    return-void

    #@5a
    .line 364
    .end local v1    # "spi":Ljavax/crypto/KeyAgreementSpi;
    :catch_0
    move-exception v6

    #@5b
    .line 368
    .local v6, "e":Ljava/lang/Exception;
    if-nez v8, :cond_1

    #@5d
    .line 369
    move-object v8, v6

    #@5e
    .local v8, "lastException":Ljava/lang/Exception;
    goto :goto_0

    #@5f
    .line 374
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "lastException":Ljava/lang/Exception;
    .end local v9    # "s":Ljava/security/Provider$Service;
    :cond_2
    :try_start_3
    instance-of v0, v8, Ljava/security/InvalidKeyException;

    #@61
    if-eqz v0, :cond_3

    #@63
    .line 375
    nop

    #@64
    nop

    #@65
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    .line 344
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    #@67
    monitor-exit v11

    #@68
    throw v0

    #@69
    .line 377
    .restart local v10    # "s$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    instance-of v0, v8, Ljava/security/InvalidAlgorithmParameterException;

    #@6b
    if-eqz v0, :cond_4

    #@6d
    .line 378
    nop

    #@6e
    nop

    #@6f
    throw v8

    #@70
    .line 380
    :cond_4
    instance-of v0, v8, Ljava/lang/RuntimeException;

    #@72
    if-eqz v0, :cond_5

    #@74
    .line 381
    nop

    #@75
    nop

    #@76
    throw v8

    #@77
    .line 383
    :cond_5
    if-eqz p2, :cond_6

    #@79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@80
    move-result-object v7

    #@81
    .line 384
    .local v7, "kName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    #@83
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v3, "No installed provider supports this key: "

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    .line 384
    invoke-direct {v0, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw v0

    #@9b
    .line 383
    .end local v7    # "kName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9e
    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    const-string/jumbo v3, "KeyAgreement"

    #@3
    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    .line 174
    .local v1, "services":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .line 175
    .local v2, "t":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/Provider$Service;

    #@17
    .line 177
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
    .line 180
    new-instance v3, Ljavax/crypto/KeyAgreement;

    #@23
    invoke-direct {v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljava/lang/String;)V

    #@26
    return-object v3

    #@27
    .line 182
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@29
    .line 183
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
    .line 182
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
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
    .line 228
    const-string/jumbo v1, "KeyAgreement"

    #@3
    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    #@5
    .line 227
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 229
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    #@f
    .line 230
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 229
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
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
    .line 268
    const-string/jumbo v1, "KeyAgreement"

    #@3
    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    #@5
    .line 267
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 269
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    #@f
    .line 270
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 269
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method private implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "spi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    const/4 v0, 0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 335
    invoke-virtual {p1, p3, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    #@6
    .line 333
    :goto_0
    return-void

    #@7
    .line 337
    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@a
    goto :goto_0
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 10

    #@0
    .prologue
    .line 282
    iget-object v7, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@2
    if-eqz v7, :cond_0

    #@4
    .line 283
    return-void

    #@5
    .line 285
    :cond_0
    iget-object v8, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 286
    :try_start_0
    iget-object v7, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eqz v7, :cond_1

    #@c
    monitor-exit v8

    #@d
    .line 287
    return-void

    #@e
    .line 289
    :cond_1
    :try_start_1
    sget-object v7, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    #@10
    if-eqz v7, :cond_3

    #@12
    .line 290
    sget v7, Ljavax/crypto/KeyAgreement;->warnCount:I

    #@14
    add-int/lit8 v6, v7, -0x1

    #@16
    sput v6, Ljavax/crypto/KeyAgreement;->warnCount:I

    #@18
    .line 291
    .local v6, "w":I
    if-ltz v6, :cond_3

    #@1a
    .line 292
    sget-object v7, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    #@1c
    const-string/jumbo v9, "KeyAgreement.init() not first method called, disabling delayed provider selection"

    #@1f
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@22
    .line 294
    if-nez v6, :cond_2

    #@24
    .line 295
    sget-object v7, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    #@26
    const-string/jumbo v9, "Further warnings of this type will be suppressed"

    #@29
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2c
    .line 298
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    #@2e
    const-string/jumbo v9, "Call trace"

    #@31
    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    #@37
    .line 301
    .end local v6    # "w":I
    :cond_3
    const/4 v2, 0x0

    #@38
    .line 302
    .local v2, "lastException":Ljava/lang/Exception;
    const-string/jumbo v7, "KeyAgreement"

    #@3b
    iget-object v9, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@3d
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@40
    move-result-object v7

    #@41
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v5

    #@45
    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_5

    #@4b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    check-cast v4, Ljava/security/Provider$Service;

    #@51
    .line 303
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@54
    move-result-object v7

    #@55
    invoke-static {v7}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_4

    #@5b
    .line 307
    const/4 v7, 0x0

    #@5c
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    .line 308
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Ljavax/crypto/KeyAgreementSpi;

    #@62
    if-eqz v7, :cond_4

    #@64
    .line 311
    nop

    #@65
    nop

    #@66
    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@68
    .line 312
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@6b
    move-result-object v7

    #@6c
    iput-object v7, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6e
    monitor-exit v8

    #@6f
    .line 314
    return-void

    #@70
    .line 315
    :catch_0
    move-exception v0

    #@71
    .line 316
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v0

    #@72
    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    #@73
    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_5
    :try_start_3
    new-instance v1, Ljava/security/ProviderException;

    #@75
    .line 320
    const-string/jumbo v7, "Could not construct KeyAgreementSpi instance"

    #@78
    .line 319
    invoke-direct {v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@7b
    .line 321
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_6

    #@7d
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@80
    .line 324
    :cond_6
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@81
    .line 285
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@82
    monitor-exit v8

    #@83
    throw v7
.end method

.method public final doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    #@3
    .line 537
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@5
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final generateSecret([BI)I
    .locals 1
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 587
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    #@3
    .line 588
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@5
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    #@3
    .line 618
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@5
    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final generateSecret()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    #@3
    .line 556
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    #@3
    .line 397
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/SecureRandom;)V

    #@5
    .line 420
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@2
    if-eqz v1, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 447
    :cond_0
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@c
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    #@f
    .line 445
    :goto_0
    return-void

    #@10
    .line 450
    :cond_1
    const/4 v1, 0x1

    #@11
    const/4 v2, 0x0

    #@12
    :try_start_0
    invoke-direct {p0, v1, p1, v2, p2}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 451
    :catch_0
    move-exception v0

    #@17
    .line 453
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@19
    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@1c
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
    .line 484
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 482
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 508
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@9
    .line 505
    :goto_0
    return-void

    #@a
    .line 510
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-direct {p0, v0, p1, p2, p3}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@e
    goto :goto_0
.end method
