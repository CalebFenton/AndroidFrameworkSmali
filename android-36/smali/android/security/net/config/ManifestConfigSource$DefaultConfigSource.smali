.class final Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/ManifestConfigSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultConfigSource"
.end annotation


# instance fields
.field private final greylist-max-o mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method constructor greylist-max-o <init>(ZLandroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "usesCleartextTraffic"    # Z
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p2}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 94
    return-void
.end method


# virtual methods
.method public greylist-max-o getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public greylist-max-o getPerDomainConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
