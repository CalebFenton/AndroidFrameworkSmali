.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/KeyGeneratorSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "KeyGenerator"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/crypto/KeyGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@f
    sput-object v0, Ljavax/crypto/KeyGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@11
    .line 34
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyGenSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    #@5
    .line 64
    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    #@7
    .line 65
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@9
    .line 62
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    .line 100
    if-nez p0, :cond_0

    #@3
    .line 101
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 103
    :cond_0
    sget-object v1, Ljavax/crypto/KeyGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 104
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    .line 128
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider is null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 131
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 132
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 133
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 135
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
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
    .line 158
    if-nez p1, :cond_0

    #@3
    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 161
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 162
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 164
    :cond_1
    sget-object v1, Ljavax/crypto/KeyGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 165
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljavax/crypto/KeyGenerator;

    #@1f
    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@2
    invoke-virtual {v0}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final init(I)V
    .locals 2
    .param p1, "keysize"    # I

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@2
    sget-object v1, Ljavax/crypto/KeyGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@4
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@7
    .line 216
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@5
    .line 229
    return-void
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@2
    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    #@5
    .line 240
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@2
    sget-object v1, Ljavax/crypto/KeyGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@4
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@7
    .line 188
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 205
    return-void
.end method
