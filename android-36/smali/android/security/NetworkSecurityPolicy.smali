.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getApplicationConfigForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/security/net/config/ApplicationConfig;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, v0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, "source":Landroid/security/net/config/ManifestConfigSource;
    new-instance v2, Landroid/security/net/config/ApplicationConfig;

    invoke-direct {v2, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    return-object v2
.end method

.method public static whitelist getInstance()Landroid/security/NetworkSecurityPolicy;
    .registers 1

    .line 45
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 2

    .line 119
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v0

    .line 120
    .local v0, "config":Landroid/security/net/config/ApplicationConfig;
    if-eqz v0, :cond_9

    .line 121
    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->handleTrustStorageUpdate()V

    .line 123
    :cond_9
    return-void
.end method

.method public whitelist isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 110
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    .line 110
    return v0
.end method

.method public whitelist isCleartextTrafficPermitted()Z
    .registers 2

    .line 68
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public whitelist isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 78
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    .line 78
    return v0
.end method

.method public greylist-max-o setCleartextTrafficPermitted(Z)V
    .registers 4
    .param p1, "permitted"    # Z

    .line 92
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 93
    .local v0, "currentPolicy":Llibcore/net/NetworkSecurityPolicy;
    new-instance v1, Landroid/security/OverlayNetworkSecurityPolicy;

    invoke-direct {v1, v0, p1}, Landroid/security/OverlayNetworkSecurityPolicy;-><init>(Llibcore/net/NetworkSecurityPolicy;Z)V

    .line 95
    .local v1, "policy":Landroid/security/OverlayNetworkSecurityPolicy;
    invoke-static {v1}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 96
    return-void
.end method
