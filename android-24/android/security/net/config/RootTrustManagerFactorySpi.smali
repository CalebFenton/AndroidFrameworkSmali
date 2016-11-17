.class public Landroid/security/net/config/RootTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "RootTrustManagerFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;
    }
.end annotation


# instance fields
.field private mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

.field private mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "TrustManagerFactory not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 65
    :cond_0
    const/4 v0, 0x1

    #@e
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    #@10
    iget-object v1, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    #@12
    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x0

    #@17
    aput-object v1, v0, v2

    #@19
    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 2
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    if-eqz p1, :cond_0

    #@2
    .line 54
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    #@4
    new-instance v1, Landroid/security/net/config/KeyStoreConfigSource;

    #@6
    invoke-direct {v1, p1}, Landroid/security/net/config/KeyStoreConfigSource;-><init>(Ljava/security/KeyStore;)V

    #@9
    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    #@c
    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    #@e
    .line 52
    :goto_0
    return-void

    #@f
    .line 56
    :cond_0
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    #@15
    goto :goto_0
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 3
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    instance-of v0, p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 44
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unsupported spec: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ". Only "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 45
    const-class v2, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    #@1f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 45
    const-string/jumbo v2, " supported"

    #@2a
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 48
    :cond_0
    check-cast p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    #@38
    .end local p1    # "spec":Ljavax/net/ssl/ManagerFactoryParameters;
    iget-object v0, p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;->config:Landroid/security/net/config/ApplicationConfig;

    #@3a
    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    #@3c
    .line 42
    return-void
.end method
