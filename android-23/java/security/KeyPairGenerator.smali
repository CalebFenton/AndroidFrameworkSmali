.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SERVICE:Ljava/lang/String; = "KeyPairGenerator"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static synthetic -set0(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "KeyPairGenerator"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@f
    sput-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@11
    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    #@5
    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 82
    if-nez p0, :cond_0

    #@3
    .line 83
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "algorithm == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 85
    :cond_0
    sget-object v4, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v4, p0, v5}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v2

    #@12
    .line 86
    .local v2, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@14
    .line 87
    .local v3, "spi":Ljava/lang/Object;
    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@16
    .line 88
    .local v0, "provider":Ljava/security/Provider;
    instance-of v4, v3, Ljava/security/KeyPairGenerator;

    #@18
    if-eqz v4, :cond_1

    #@1a
    move-object v1, v3

    #@1b
    .line 89
    check-cast v1, Ljava/security/KeyPairGenerator;

    #@1d
    .line 90
    .local v1, "result":Ljava/security/KeyPairGenerator;
    iput-object p0, v1, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    #@1f
    .line 91
    iput-object v0, v1, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    #@21
    .line 92
    return-object v1

    #@22
    .line 94
    .end local v1    # "result":Ljava/security/KeyPairGenerator;
    :cond_1
    new-instance v4, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    #@24
    check-cast v3, Ljava/security/KeyPairGeneratorSpi;

    #@26
    .end local v3    # "spi":Ljava/lang/Object;
    invoke-direct {v4, v3, v0, p0, v5}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;)V

    #@29
    return-object v4
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
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
    .line 115
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 116
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 118
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v0

    #@12
    .line 119
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@14
    .line 120
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 122
    :cond_2
    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
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
    const/4 v3, 0x0

    #@1
    .line 143
    if-nez p1, :cond_0

    #@3
    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "provider == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 146
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 147
    new-instance v2, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v3, "algorithm == null"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 149
    :cond_1
    sget-object v2, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    .line 150
    .local v1, "spi":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/KeyPairGenerator;

    #@1f
    if-eqz v2, :cond_2

    #@21
    move-object v0, v1

    #@22
    .line 151
    check-cast v0, Ljava/security/KeyPairGenerator;

    #@24
    .line 152
    .local v0, "result":Ljava/security/KeyPairGenerator;
    iput-object p0, v0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    #@26
    .line 153
    iput-object p1, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    #@28
    .line 154
    return-object v0

    #@29
    .line 156
    .end local v0    # "result":Ljava/security/KeyPairGenerator;
    :cond_2
    new-instance v2, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    #@2b
    check-cast v1, Ljava/security/KeyPairGeneratorSpi;

    #@2d
    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v2, v1, p1, p0, v3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;)V

    #@30
    return-object v2
.end method


# virtual methods
.method public final genKeyPair()Ljava/security/KeyPair;
    .locals 1

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public initialize(I)V
    .locals 1
    .param p1, "keysize"    # I

    #@0
    .prologue
    .line 177
    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    #@5
    .line 176
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 230
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 191
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    return-void
.end method
