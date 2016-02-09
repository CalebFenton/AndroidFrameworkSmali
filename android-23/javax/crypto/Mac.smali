.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "Mac"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final initLock:Ljava/lang/Object;

.field private isInitMac:Z

.field private provider:Ljava/security/Provider;

.field private final specifiedProvider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "Mac"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 38
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljavax/crypto/Mac;->initLock:Ljava/lang/Object;

    #@a
    .line 77
    iput-object p2, p0, Ljavax/crypto/Mac;->specifiedProvider:Ljava/security/Provider;

    #@c
    .line 78
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@e
    .line 79
    iput-object p1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    #@10
    .line 80
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@13
    .line 76
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 3
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
    .line 142
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 143
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider is null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 145
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 146
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 147
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 149
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-nez p1, :cond_0

    #@2
    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "provider == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 176
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Mac;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 181
    if-nez p0, :cond_0

    #@3
    .line 182
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "algorithm == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 187
    :cond_0
    const/4 v2, 0x0

    #@d
    :try_start_0
    invoke-static {v2, p1, p0}, Ljavax/crypto/Mac;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    const/4 v1, 0x1

    #@14
    .line 191
    .local v1, "providerSupportsAlgorithm":Z
    :goto_0
    if-nez v1, :cond_3

    #@16
    .line 192
    if-nez p1, :cond_2

    #@18
    .line 193
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "No provider found for "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 187
    .end local v1    # "providerSupportsAlgorithm":Z
    :cond_1
    const/4 v1, 0x0

    #@33
    .restart local v1    # "providerSupportsAlgorithm":Z
    goto :goto_0

    #@34
    .line 188
    .end local v1    # "providerSupportsAlgorithm":Z
    :catch_0
    move-exception v0

    #@35
    .line 189
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v3, "InvalidKeyException thrown when key == null"

    #@3a
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v2

    #@3e
    .line 195
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .restart local v1    # "providerSupportsAlgorithm":Z
    :cond_2
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Provider "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 196
    const-string/jumbo v4, " does not provide "

    #@57
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2

    #@67
    .line 199
    :cond_3
    new-instance v2, Ljavax/crypto/Mac;

    #@69
    invoke-direct {v2, v3, p1, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@6c
    return-object v2
.end method

.method private getSpi()Ljavax/crypto/MacSpi;
    .locals 3

    #@0
    .prologue
    .line 288
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-direct {p0, v1}, Ljavax/crypto/Mac;->getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 289
    :catch_0
    move-exception v0

    #@7
    .line 290
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "InvalidKeyException thrown when key == null"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method private getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 256
    iget-object v2, p0, Ljavax/crypto/Mac;->initLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 257
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@a
    if-eqz v1, :cond_0

    #@c
    if-nez p1, :cond_0

    #@e
    .line 258
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 261
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-nez v1, :cond_1

    #@16
    monitor-exit v2

    #@17
    .line 262
    return-object v3

    #@18
    .line 265
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljavax/crypto/Mac;->specifiedProvider:Ljava/security/Provider;

    #@1a
    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v3}, Ljavax/crypto/Mac;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@1f
    move-result-object v0

    #@20
    .line 266
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_2

    #@22
    .line 267
    new-instance v1, Ljava/security/ProviderException;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "No provider for "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 256
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1

    #@43
    .line 274
    .restart local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_2
    :try_start_3
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    #@45
    if-eqz v1, :cond_3

    #@47
    iget-object v1, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@49
    if-eqz v1, :cond_4

    #@4b
    .line 275
    :cond_3
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@4d
    check-cast v1, Ljavax/crypto/MacSpi;

    #@4f
    iput-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    #@51
    .line 277
    :cond_4
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@53
    iput-object v1, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@55
    .line 279
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    monitor-exit v2

    #@58
    return-object v1
.end method

.method private static tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 7
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 207
    if-eqz p1, :cond_1

    #@3
    .line 208
    const-string/jumbo v5, "Mac"

    #@6
    invoke-virtual {p1, v5, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@9
    move-result-object v2

    #@a
    .line 209
    .local v2, "service":Ljava/security/Provider$Service;
    if-nez v2, :cond_0

    #@c
    .line 210
    return-object v6

    #@d
    .line 212
    :cond_0
    invoke-static {v2}, Ljavax/crypto/Mac;->tryAlgorithmWithProvider(Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 214
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_1
    sget-object v5, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@14
    invoke-virtual {v5, p2}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    #@17
    move-result-object v4

    #@18
    .line 215
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-eqz v4, :cond_2

    #@1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 216
    :cond_2
    return-object v6

    #@21
    .line 218
    :cond_3
    const/4 v0, 0x0

    #@22
    .line 219
    .local v0, "keySupported":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .local v3, "service$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_6

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/security/Provider$Service;

    #@32
    .line 220
    .restart local v2    # "service":Ljava/security/Provider$Service;
    if-eqz p0, :cond_5

    #@34
    invoke-virtual {v2, p0}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_4

    #@3a
    .line 221
    :cond_5
    const/4 v0, 0x1

    #@3b
    .line 222
    invoke-static {v2}, Ljavax/crypto/Mac;->tryAlgorithmWithProvider(Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@3e
    move-result-object v1

    #@3f
    .line 223
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-eqz v1, :cond_4

    #@41
    .line 224
    return-object v1

    #@42
    .line 228
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_6
    if-nez v0, :cond_7

    #@44
    .line 229
    new-instance v5, Ljava/security/InvalidKeyException;

    #@46
    const-string/jumbo v6, "No provider supports the provided key"

    #@49
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v5

    #@4d
    .line 231
    :cond_7
    return-object v6
.end method

.method private static tryAlgorithmWithProvider(Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 5
    .param p0, "service"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 236
    :try_start_0
    sget-object v2, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@7
    move-result-object v1

    #@8
    .line 237
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@a
    if-eqz v2, :cond_0

    #@c
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 238
    :cond_0
    return-object v4

    #@11
    .line 240
    :cond_1
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@13
    instance-of v2, v2, Ljavax/crypto/MacSpi;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    if-nez v2, :cond_2

    #@17
    .line 241
    return-object v4

    #@18
    .line 243
    :cond_2
    return-object v1

    #@19
    .line 244
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@1a
    .line 246
    .local v0, "ignored":Ljava/security/NoSuchAlgorithmException;
    return-object v4
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 554
    const/4 v1, 0x0

    #@1
    .line 555
    .local v1, "newSpiImpl":Ljavax/crypto/MacSpi;
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@4
    move-result-object v2

    #@5
    .line 556
    .local v2, "spi":Ljavax/crypto/MacSpi;
    if-eqz v2, :cond_0

    #@7
    .line 557
    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .end local v1    # "newSpiImpl":Ljavax/crypto/MacSpi;
    check-cast v1, Ljavax/crypto/MacSpi;

    #@d
    .line 559
    :cond_0
    new-instance v0, Ljavax/crypto/Mac;

    #@f
    iget-object v3, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    #@11
    iget-object v4, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1, v3, v4}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@16
    .line 560
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-boolean v3, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@18
    iput-boolean v3, v0, Ljavax/crypto/Mac;->isInitMac:Z

    #@1a
    .line 561
    return-object v0
.end method

.method public final doFinal([BI)V
    .locals 6
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
    const/4 v4, 0x0

    #@1
    .line 489
    iget-boolean v3, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 490
    new-instance v3, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v3

    #@b
    .line 492
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 493
    new-instance v3, Ljavax/crypto/ShortBufferException;

    #@f
    const-string/jumbo v4, "output == null"

    #@12
    invoke-direct {v3, v4}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 495
    :cond_1
    if-ltz p2, :cond_2

    #@18
    array-length v3, p1

    #@19
    if-lt p2, v3, :cond_3

    #@1b
    .line 496
    :cond_2
    new-instance v3, Ljavax/crypto/ShortBufferException;

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Incorrect outOffset: "

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-direct {v3, v4}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 498
    :cond_3
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@38
    move-result-object v1

    #@39
    .line 499
    .local v1, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    #@3c
    move-result v2

    #@3d
    .line 500
    .local v2, "t":I
    array-length v3, p1

    #@3e
    sub-int/2addr v3, p2

    #@3f
    if-le v2, v3, :cond_4

    #@41
    .line 501
    new-instance v3, Ljavax/crypto/ShortBufferException;

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "Output buffer is short. Needed "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, " bytes."

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-direct {v3, v4}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@61
    throw v3

    #@62
    .line 503
    :cond_4
    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    #@65
    move-result-object v0

    #@66
    .line 504
    .local v0, "result":[B
    array-length v3, v0

    #@67
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6a
    .line 488
    return-void
.end method

.method public final doFinal()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 463
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    iget-boolean v1, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 525
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 527
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@d
    move-result-object v0

    #@e
    .line 528
    .local v0, "spi":Ljavax/crypto/MacSpi;
    if-eqz p1, :cond_1

    #@10
    .line 529
    array-length v1, p1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@15
    .line 531
    :cond_1
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentSpi()Ljavax/crypto/MacSpi;
    .locals 2

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Ljavax/crypto/Mac;->initLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 302
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 301
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public final getMacLength()I
    .locals 1

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@3
    .line 99
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
    .line 352
    if-nez p1, :cond_0

    #@2
    .line 353
    new-instance v1, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v2, "key == null"

    #@7
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 356
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Ljavax/crypto/Mac;->getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@13
    .line 357
    const/4 v1, 0x1

    #@14
    iput-boolean v1, p0, Ljavax/crypto/Mac;->isInitMac:Z
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 351
    return-void

    #@17
    .line 358
    :catch_0
    move-exception v0

    #@18
    .line 359
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
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
    .line 332
    if-nez p1, :cond_0

    #@2
    .line 333
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 335
    :cond_0
    invoke-direct {p0, p1}, Ljavax/crypto/Mac;->getSpi(Ljava/security/Key;)Ljavax/crypto/MacSpi;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@12
    .line 336
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@15
    .line 331
    return-void
.end method

.method public final reset()V
    .locals 1

    #@0
    .prologue
    .line 542
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    #@7
    .line 541
    return-void
.end method

.method public final update(B)V
    .locals 1
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 375
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    #@11
    .line 371
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 437
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 440
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 441
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@13
    .line 436
    return-void

    #@14
    .line 443
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "input == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
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
    .line 418
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 421
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 422
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@f
    move-result-object v0

    #@10
    array-length v1, p1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@15
    .line 417
    :cond_1
    return-void
.end method

.method public final update([BII)V
    .locals 3
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
    .line 395
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 398
    :cond_0
    if-nez p1, :cond_1

    #@c
    .line 399
    return-void

    #@d
    .line 401
    :cond_1
    if-ltz p2, :cond_2

    #@f
    if-gez p3, :cond_3

    #@11
    .line 402
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Incorrect arguments. input.length="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 403
    array-length v2, p1

    #@20
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 404
    const-string/jumbo v2, " offset="

    #@27
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 404
    const-string/jumbo v2, ", len="

    #@32
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 401
    :cond_3
    add-int v0, p2, p3

    #@44
    array-length v1, p1

    #@45
    if-gt v0, v1, :cond_2

    #@47
    .line 406
    invoke-direct {p0}, Ljavax/crypto/Mac;->getSpi()Ljavax/crypto/MacSpi;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@4e
    .line 394
    return-void
.end method
