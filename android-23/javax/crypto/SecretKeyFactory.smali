.class public Ljavax/crypto/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/SecretKeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "SecretKeyFactory"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/crypto/SecretKeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 42
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyFacSpi"    # Ljavax/crypto/SecretKeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p2, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    #@5
    .line 69
    iput-object p3, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    #@7
    .line 70
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    #@9
    .line 67
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 105
    if-nez p0, :cond_0

    #@3
    .line 106
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 108
    :cond_0
    sget-object v1, Ljavax/crypto/SecretKeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 109
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
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
    .line 134
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 135
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider is null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 137
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 138
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 139
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 141
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 165
    if-nez p1, :cond_0

    #@3
    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 168
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 169
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 171
    :cond_1
    sget-object v1, Ljavax/crypto/SecretKeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 172
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljavax/crypto/SecretKeyFactory;

    #@1f
    check-cast v0, Ljavax/crypto/SecretKeyFactorySpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final translateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
