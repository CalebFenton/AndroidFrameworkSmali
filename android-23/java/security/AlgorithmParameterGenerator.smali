.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SERVICE:Ljava/lang/String; = "AlgorithmParameterGenerator"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 33
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/AlgorithmParameterGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 36
    new-instance v0, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@f
    sput-object v0, Ljava/security/AlgorithmParameterGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@11
    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramGenSpi"    # Ljava/security/AlgorithmParameterGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    #@5
    .line 62
    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    #@7
    .line 63
    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@9
    .line 60
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
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
    .line 90
    if-nez p0, :cond_0

    #@3
    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 93
    :cond_0
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 94
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/AlgorithmParameterGenerator;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljava/security/AlgorithmParameterGeneratorSpi;

    #@18
    .line 95
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    .line 94
    invoke-direct {v2, v1, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 2
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
    .line 120
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 121
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 123
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v0

    #@12
    .line 124
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@14
    .line 125
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 127
    :cond_2
    invoke-static {p0, v0}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
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
    .line 149
    if-nez p1, :cond_0

    #@3
    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 152
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 153
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 155
    :cond_1
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 156
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    #@1f
    check-cast v0, Ljava/security/AlgorithmParameterGeneratorSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final generateParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final init(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@7
    .line 179
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@5
    .line 193
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@7
    .line 208
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 224
    return-void
.end method
