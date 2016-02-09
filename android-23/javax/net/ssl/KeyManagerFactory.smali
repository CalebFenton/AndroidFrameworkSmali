.class public Ljavax/net/ssl/KeyManagerFactory;
.super Ljava/lang/Object;
.source "KeyManagerFactory.java"


# static fields
.field private static final DEFAULT_PROPERTY:Ljava/lang/String; = "PKIX"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field private static final SERVICE:Ljava/lang/String; = "KeyManagerFactory"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "KeyManagerFactory"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/net/ssl/KeyManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 33
    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "factorySpi"    # Ljavax/net/ssl/KeyManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 161
    iput-object p2, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    #@5
    .line 162
    iput-object p3, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    #@7
    .line 163
    iput-object p1, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    #@9
    .line 160
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 55
    const-string/jumbo v1, "ssl.KeyManagerFactory.algorithm"

    #@3
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 56
    .local v0, "algorithm":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .end local v0    # "algorithm":Ljava/lang/String;
    :goto_0
    return-object v0

    #@a
    .restart local v0    # "algorithm":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "PKIX"

    #@d
    goto :goto_0
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
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
    .line 74
    if-nez p0, :cond_0

    #@3
    .line 75
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 77
    :cond_0
    sget-object v1, Ljavax/net/ssl/KeyManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 78
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
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
    .line 102
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 103
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider is null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 105
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 106
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 107
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 109
    :cond_2
    invoke-static {p0, v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;
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
    const-string/jumbo v2, "Provider is null"

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
    sget-object v1, Ljavax/net/ssl/KeyManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 137
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/KeyManagerFactory;

    #@1f
    check-cast v0, Ljavax/net/ssl/KeyManagerFactorySpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;[C)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljava/security/KeyStore;[C)V

    #@5
    .line 200
    return-void
.end method

.method public final init(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    #@5
    .line 213
    return-void
.end method
