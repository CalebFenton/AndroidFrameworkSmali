.class public Landroid/os/ArtModuleServiceManager;
.super Ljava/lang/Object;
.source "ArtModuleServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getArtdPreRebootServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .registers 4

    .line 92
    new-instance v0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v1, "artd_pre_reboot"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public blacklist getArtdServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .registers 4

    .line 85
    new-instance v0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v1, "artd"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public blacklist getDexoptChrootSetupServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .registers 4

    .line 99
    new-instance v0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v1, "dexopt_chroot_setup"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
