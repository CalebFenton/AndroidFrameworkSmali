.class public Ljavax/net/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# static fields
.field private static final DEFAULT_PROPERTY:Ljava/lang/String; = "PKIX"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field private static final SERVICE:Ljava/lang/String; = "TrustManagerFactory"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "TrustManagerFactory"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/net/ssl/TrustManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 33
    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "factorySpi"    # Ljavax/net/ssl/TrustManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    iput-object p2, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    #@5
    .line 161
    iput-object p3, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    #@7
    .line 162
    iput-object p1, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    #@9
    .line 159
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 54
    const-string/jumbo v1, "ssl.TrustManagerFactory.algorithm"

    #@3
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 55
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

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
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
    .line 73
    if-nez p0, :cond_0

    #@3
    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 76
    :cond_0
    sget-object v1, Ljavax/net/ssl/TrustManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 77
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/net/ssl/TrustManagerFactory;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljavax/net/ssl/TrustManagerFactorySpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
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
    .line 101
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 102
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Provider is null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 104
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 105
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 106
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 108
    :cond_2
    invoke-static {p0, v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;
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
    .line 129
    if-nez p1, :cond_0

    #@3
    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Provider is null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 132
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 133
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 135
    :cond_1
    sget-object v1, Ljavax/net/ssl/TrustManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 136
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/TrustManagerFactory;

    #@1f
    check-cast v0, Ljavax/net/ssl/TrustManagerFactorySpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljava/security/KeyStore;)V

    #@5
    .line 194
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
    .line 209
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    #@5
    .line 208
    return-void
.end method
