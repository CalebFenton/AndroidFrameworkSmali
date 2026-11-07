.class public interface abstract Landroid/content/pm/pkg/FrameworkPackageUserState;
.super Ljava/lang/Object;
.source "FrameworkPackageUserState.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;

    invoke-direct {v0}, Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;-><init>()V

    sput-object v0, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    return-void
.end method


# virtual methods
.method public abstract blacklist getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
.end method

.method public abstract blacklist getCeDataInode()J
.end method

.method public abstract blacklist getDisabledComponents()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDistractionFlags()I
.end method

.method public abstract blacklist getEnabledComponents()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getEnabledState()I
.end method

.method public abstract blacklist getHarmfulAppWarning()Ljava/lang/String;
.end method

.method public abstract blacklist getInstallReason()I
.end method

.method public abstract blacklist getLastDisableAppCaller()Ljava/lang/String;
.end method

.method public abstract blacklist getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
.end method

.method public abstract blacklist getSharedLibraryOverlayPaths()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSplashScreenTheme()Ljava/lang/String;
.end method

.method public abstract blacklist getUninstallReason()I
.end method

.method public abstract blacklist isComponentDisabled(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isComponentEnabled(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isHidden()Z
.end method

.method public abstract blacklist isInstalled()Z
.end method

.method public abstract blacklist isInstantApp()Z
.end method

.method public abstract blacklist isNotLaunched()Z
.end method

.method public abstract blacklist isStopped()Z
.end method

.method public abstract blacklist isSuspended()Z
.end method

.method public abstract blacklist isVirtualPreload()Z
.end method
