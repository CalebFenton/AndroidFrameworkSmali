.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    #@2
    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    #@5
    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    #@7
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getApplicationConfigForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/security/net/config/ApplicationConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 113
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    #@7
    invoke-direct {v1, v0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    #@a
    .line 114
    .local v1, "source":Landroid/security/net/config/ManifestConfigSource;
    new-instance v2, Landroid/security/net/config/ApplicationConfig;

    #@c
    invoke-direct {v2, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    #@f
    return-object v2
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    #@2
    return-object v0
.end method


# virtual methods
.method public handleTrustStorageUpdate()V
    .locals 1

    #@0
    .prologue
    .line 102
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->handleTrustStorageUpdate()V

    #@7
    .line 101
    return-void
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 1
    .param p1, "permitted"    # Z

    #@0
    .prologue
    .line 92
    new-instance v0, Landroid/security/FrameworkNetworkSecurityPolicy;

    #@2
    invoke-direct {v0, p1}, Landroid/security/FrameworkNetworkSecurityPolicy;-><init>(Z)V

    #@5
    .line 93
    .local v0, "policy":Landroid/security/FrameworkNetworkSecurityPolicy;
    invoke-static {v0}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    #@8
    .line 91
    return-void
.end method
