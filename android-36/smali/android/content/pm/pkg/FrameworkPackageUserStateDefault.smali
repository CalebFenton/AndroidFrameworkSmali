.class Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;
.super Ljava/lang/Object;
.source "FrameworkPackageUserStateDefault.java"

# interfaces
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCeDataInode()J
    .registers 3

    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getDisabledComponents()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDistractionFlags()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnabledComponents()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledState()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHarmfulAppWarning()Ljava/lang/String;
    .registers 2

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstallReason()I
    .registers 2

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastDisableAppCaller()Ljava/lang/String;
    .registers 2

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSplashScreenTheme()Ljava/lang/String;
    .registers 2

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUninstallReason()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComponentDisabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComponentEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHidden()Z
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstalled()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isInstantApp()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotLaunched()Z
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isStopped()Z
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSuspended()Z
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVirtualPreload()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method
