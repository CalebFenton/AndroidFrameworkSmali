.class public final Landroid/security/net/config/NetworkSecurityConfigProvider;
.super Ljava/security/Provider;
.source "NetworkSecurityConfigProvider.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "nsconfig"

.field private static final greylist-max-o PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-class v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 5

    .line 33
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android Network Security Policy Provider"

    const-string v3, "AndroidNSSP"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RootTrustManagerFactorySpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustManagerFactory.PKIX"

    invoke-virtual {p0, v1, v0}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    const-string v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static blacklist handleNewApplication(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    .line 57
    .local v0, "config":Landroid/security/net/config/ApplicationConfig;
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v1

    .line 58
    .local v1, "defaultConfig":Landroid/security/net/config/ApplicationConfig;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 59
    .local v2, "mProcessName":Ljava/lang/String;
    if-eqz v1, :cond_58

    .line 60
    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v3

    .line 61
    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v4

    if-eq v3, v4, :cond_58

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": New config does not match the previously set config."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "nsconfig"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v3

    if-nez v3, :cond_50

    .line 66
    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v3

    if-nez v3, :cond_50

    .line 69
    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v3

    if-eqz v3, :cond_4d

    move-object v3, v1

    goto :goto_4e

    :cond_4d
    move-object v3, v0

    :goto_4e
    move-object v0, v3

    goto :goto_58

    .line 67
    :cond_50
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Found multiple conflicting per-domain rules"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_58
    :goto_58
    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    .line 73
    return-void
.end method

.method public static greylist-max-o install(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    .line 40
    .local v0, "config":Landroid/security/net/config/ApplicationConfig;
    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    .line 41
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v1

    .line 42
    .local v1, "pos":I
    if-ne v1, v2, :cond_22

    .line 46
    new-instance v2, Landroid/security/net/config/ConfigNetworkSecurityPolicy;

    invoke-direct {v2, v0}, Landroid/security/net/config/ConfigNetworkSecurityPolicy;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    invoke-static {v2}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 47
    return-void

    .line 43
    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install provider as highest priority provider. Provider was installed at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
