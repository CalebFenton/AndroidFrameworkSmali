.class public final Landroid/security/net/config/NetworkSecurityConfigProvider;
.super Ljava/security/Provider;
.source "NetworkSecurityConfigProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-class v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "."

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 25
    sput-object v0, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    #@20
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "AndroidNSSP"

    #@3
    const-string/jumbo v1, "Android Network Security Policy Provider"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 31
    const-string/jumbo v0, "TrustManagerFactory.PKIX"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    sget-object v2, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "RootTrustManagerFactorySpi"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v0, v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 32
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X509"

    #@2a
    const-string/jumbo v1, "PKIX"

    #@2d
    invoke-virtual {p0, v0, v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 28
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 36
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    #@3
    new-instance v2, Landroid/security/net/config/ManifestConfigSource;

    #@5
    invoke-direct {v2, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    #@8
    invoke-direct {v0, v2}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    #@b
    .line 37
    .local v0, "config":Landroid/security/net/config/ApplicationConfig;
    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    #@e
    .line 38
    new-instance v2, Landroid/security/net/config/NetworkSecurityConfigProvider;

    #@10
    invoke-direct {v2}, Landroid/security/net/config/NetworkSecurityConfigProvider;-><init>()V

    #@13
    invoke-static {v2, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    #@16
    move-result v1

    #@17
    .line 39
    .local v1, "pos":I
    if-eq v1, v3, :cond_0

    #@19
    .line 40
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Failed to install provider as highest priority provider. Provider was installed at position "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 43
    :cond_0
    new-instance v2, Landroid/security/net/config/ConfigNetworkSecurityPolicy;

    #@35
    invoke-direct {v2, v0}, Landroid/security/net/config/ConfigNetworkSecurityPolicy;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    #@38
    invoke-static {v2}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    #@3b
    .line 35
    return-void
.end method
