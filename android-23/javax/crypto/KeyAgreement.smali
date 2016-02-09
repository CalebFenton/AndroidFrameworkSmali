.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SERVICE:Ljava/lang/String; = "KeyAgreement"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final initLock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private final specifiedProvider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "KeyAgreement"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/crypto/KeyAgreement;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 47
    new-instance v0, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@f
    sput-object v0, Ljavax/crypto/KeyAgreement;->RANDOM:Ljava/security/SecureRandom;

    #@11
    .line 38
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAgreeSpi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->initLock:Ljava/lang/Object;

    #@a
    .line 78
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    #@c
    .line 79
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->specifiedProvider:Ljava/security/Provider;

    #@e
    .line 80
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@10
    .line 77
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getKeyAgreement(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
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
    .line 138
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 139
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider is null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 141
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 142
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 143
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 145
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getKeyAgreement(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
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
    .line 169
    if-nez p1, :cond_0

    #@2
    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "provider == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 172
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/KeyAgreement;->getKeyAgreement(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static getKeyAgreement(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
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
    .line 177
    if-nez p0, :cond_0

    #@3
    .line 178
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "algorithm == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 183
    :cond_0
    const/4 v2, 0x0

    #@d
    :try_start_0
    invoke-static {v2, p1, p0}, Ljavax/crypto/KeyAgreement;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    const/4 v1, 0x1

    #@14
    .line 187
    .local v1, "providerSupportsAlgorithm":Z
    :goto_0
    if-nez v1, :cond_3

    #@16
    .line 188
    if-nez p1, :cond_2

    #@18
    .line 189
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
    .line 183
    .end local v1    # "providerSupportsAlgorithm":Z
    :cond_1
    const/4 v1, 0x0

    #@33
    .restart local v1    # "providerSupportsAlgorithm":Z
    goto :goto_0

    #@34
    .line 184
    .end local v1    # "providerSupportsAlgorithm":Z
    :catch_0
    move-exception v0

    #@35
    .line 185
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v3, "InvalidKeyException thrown when key == null"

    #@3a
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v2

    #@3e
    .line 191
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
    .line 192
    const-string/jumbo v4, " does not provide "

    #@57
    .line 191
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
    .line 195
    :cond_3
    new-instance v2, Ljavax/crypto/KeyAgreement;

    #@69
    invoke-direct {v2, v3, p1, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@6c
    return-object v2
.end method

.method private getSpi()Ljavax/crypto/KeyAgreementSpi;
    .locals 3

    #@0
    .prologue
    .line 275
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-direct {p0, v1}, Ljavax/crypto/KeyAgreement;->getSpi(Ljava/security/Key;)Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 276
    :catch_0
    move-exception v0

    #@7
    .line 277
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "InvalidKeyException thrown when key == null"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method private getSpi(Ljava/security/Key;)Ljavax/crypto/KeyAgreementSpi;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    iget-object v2, p0, Ljavax/crypto/KeyAgreement;->initLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 254
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    #@5
    if-eqz v1, :cond_0

    #@7
    if-nez p1, :cond_0

    #@9
    .line 255
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v2

    #@c
    return-object v1

    #@d
    .line 258
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->specifiedProvider:Ljava/security/Provider;

    #@f
    iget-object v3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@11
    invoke-static {p1, v1, v3}, Ljavax/crypto/KeyAgreement;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@14
    move-result-object v0

    #@15
    .line 259
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_1

    #@17
    .line 260
    new-instance v1, Ljava/security/ProviderException;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "No provider for "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->getAlgorithm()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 253
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 263
    .restart local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_1
    :try_start_2
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@3a
    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    #@3c
    iput-object v1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    #@3e
    .line 264
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@40
    iput-object v1, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    #@42
    .line 266
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    monitor-exit v2

    #@45
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
    .line 204
    if-eqz p1, :cond_1

    #@3
    .line 205
    const-string/jumbo v5, "KeyAgreement"

    #@6
    invoke-virtual {p1, v5, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@9
    move-result-object v2

    #@a
    .line 206
    .local v2, "service":Ljava/security/Provider$Service;
    if-nez v2, :cond_0

    #@c
    .line 207
    return-object v6

    #@d
    .line 209
    :cond_0
    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->tryAlgorithmWithProvider(Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 211
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_1
    sget-object v5, Ljavax/crypto/KeyAgreement;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@14
    invoke-virtual {v5, p2}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    #@17
    move-result-object v4

    #@18
    .line 212
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-eqz v4, :cond_2

    #@1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 213
    :cond_2
    return-object v6

    #@21
    .line 215
    :cond_3
    const/4 v0, 0x0

    #@22
    .line 216
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
    .line 217
    .restart local v2    # "service":Ljava/security/Provider$Service;
    if-eqz p0, :cond_5

    #@34
    invoke-virtual {v2, p0}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_4

    #@3a
    .line 218
    :cond_5
    const/4 v0, 0x1

    #@3b
    .line 219
    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->tryAlgorithmWithProvider(Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@3e
    move-result-object v1

    #@3f
    .line 220
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-eqz v1, :cond_4

    #@41
    .line 221
    return-object v1

    #@42
    .line 225
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_6
    if-nez v0, :cond_7

    #@44
    .line 226
    new-instance v5, Ljava/security/InvalidKeyException;

    #@46
    const-string/jumbo v6, "No provider supports the provided key"

    #@49
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v5

    #@4d
    .line 228
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
    .line 233
    :try_start_0
    sget-object v2, Ljavax/crypto/KeyAgreement;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@7
    move-result-object v1

    #@8
    .line 234
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@a
    if-eqz v2, :cond_0

    #@c
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 235
    :cond_0
    return-object v4

    #@11
    .line 237
    :cond_1
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@13
    instance-of v2, v2, Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    if-nez v2, :cond_2

    #@17
    .line 238
    return-object v4

    #@18
    .line 240
    :cond_2
    return-object v1

    #@19
    .line 241
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@1a
    .line 243
    .local v0, "ignored":Ljava/security/NoSuchAlgorithmException;
    return-object v4
.end method


# virtual methods
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
    .line 383
    invoke-direct {p0}, Ljavax/crypto/KeyAgreement;->getSpi()Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    #@7
    move-result-object v0

    #@8
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
    .line 413
    invoke-direct {p0}, Ljavax/crypto/KeyAgreement;->getSpi()Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    #@7
    move-result v0

    #@8
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
    .line 435
    invoke-direct {p0}, Ljavax/crypto/KeyAgreement;->getSpi()Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@7
    move-result-object v0

    #@8
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
    .line 394
    invoke-direct {p0}, Ljavax/crypto/KeyAgreement;->getSpi()Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentSpi()Ljavax/crypto/KeyAgreementSpi;
    .locals 2

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->initLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 289
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 288
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/crypto/KeyAgreement;->getSpi()Ljavax/crypto/KeyAgreementSpi;

    #@3
    .line 99
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    invoke-direct {p0, p1}, Ljavax/crypto/KeyAgreement;->getSpi(Ljava/security/Key;)Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljavax/crypto/KeyAgreement;->RANDOM:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    #@9
    .line 300
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-direct {p0, p1}, Ljavax/crypto/KeyAgreement;->getSpi(Ljava/security/Key;)Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    #@7
    .line 317
    return-void
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
    .line 338
    invoke-direct {p0, p1}, Ljavax/crypto/KeyAgreement;->getSpi(Ljava/security/Key;)Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljavax/crypto/KeyAgreement;->RANDOM:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@9
    .line 337
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
    .line 361
    invoke-direct {p0, p1}, Ljavax/crypto/KeyAgreement;->getSpi(Ljava/security/Key;)Ljavax/crypto/KeyAgreementSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@7
    .line 360
    return-void
.end method
