.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$Delegate;
    }
.end annotation


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 175
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 252
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    nop

    .line 254
    const-string v0, "KeyPairGenerator"

    invoke-static {v0, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 256
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "failure":Ljava/security/NoSuchAlgorithmException;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 265
    .local v3, "s":Ljava/security/Provider$Service;
    :try_start_1d
    const-class v4, Ljava/security/KeyPairGeneratorSpi;

    .line 266
    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v4

    .line 267
    .local v4, "instance":Lsun/security/jca/GetInstance$Instance;
    iget-object v5, v4, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v5, v5, Ljava/security/KeyPairGenerator;

    if-eqz v5, :cond_2e

    .line 268
    invoke-static {v4, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    return-object v5

    .line 270
    :cond_2e
    new-instance v5, Ljava/security/KeyPairGenerator$Delegate;

    invoke-direct {v5, v4, v1, p0}, Ljava/security/KeyPairGenerator$Delegate;-><init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_33} :catch_34

    return-object v5

    .line 272
    .end local v4    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_34
    move-exception v4

    .line 273
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v2, :cond_38

    .line 274
    move-object v2, v4

    .line 277
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_17

    .line 278
    :cond_3f
    throw v2

    .line 257
    .end local v2    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_40
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KeyPairGenerator not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 320
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    const-string v0, "KeyPairGenerator"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-class v1, Ljava/security/KeyPairGeneratorSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 325
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 362
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string v0, "KeyPairGenerator"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-class v1, Ljava/security/KeyPairGeneratorSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 367
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-r getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .registers 4
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/KeyPairGenerator;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGenerator;

    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    goto :goto_15

    .line 197
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    :cond_b
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    .line 198
    .local v0, "spi":Ljava/security/KeyPairGeneratorSpi;
    new-instance v1, Ljava/security/KeyPairGenerator$Delegate;

    invoke-direct {v1, v0, p1}, Ljava/security/KeyPairGenerator$Delegate;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V

    move-object v0, v1

    .line 200
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    :goto_15
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v1, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    .line 210
    return-object v0
.end method


# virtual methods
.method greylist-max-o disableFailover()V
    .registers 1

    .line 382
    return-void
.end method

.method public final whitelist test-api genKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 520
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 376
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->disableFailover()V

    .line 377
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public whitelist test-api initialize(I)V
    .registers 3
    .param p1, "keysize"    # I

    .line 401
    invoke-static {}, Lsun/security/jca/JCAUtil;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 402
    return-void
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 429
    return-void
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 461
    invoke-static {}, Lsun/security/jca/JCAUtil;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 462
    return-void
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 501
    return-void
.end method
