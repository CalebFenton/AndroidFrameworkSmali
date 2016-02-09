.class public Ljava/security/KeyFactory;
.super Ljava/lang/Object;
.source "KeyFactory.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "KeyFactory"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/KeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "KeyFactory"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/KeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyFacSpi"    # Ljava/security/KeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p2, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    #@5
    .line 61
    iput-object p3, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    #@7
    .line 62
    iput-object p1, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    #@9
    .line 59
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
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
    .line 78
    if-nez p0, :cond_0

    #@3
    .line 79
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 81
    :cond_0
    sget-object v1, Ljava/security/KeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 82
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/KeyFactory;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljava/security/KeyFactorySpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
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
    .line 103
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 106
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v0

    #@12
    .line 107
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@14
    .line 108
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 110
    :cond_2
    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;
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
    .line 130
    if-nez p1, :cond_0

    #@3
    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 133
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 136
    :cond_1
    sget-object v1, Ljava/security/KeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 137
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljava/security/KeyFactory;

    #@1f
    check-cast v0, Ljava/security/KeyFactorySpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
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
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final translateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
