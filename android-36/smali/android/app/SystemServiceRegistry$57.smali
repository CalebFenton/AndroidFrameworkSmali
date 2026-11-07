.class Landroid/app/SystemServiceRegistry$57;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/app/WallpaperManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 814
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/WallpaperManager;
    .registers 7
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 818
    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 819
    .local v1, "b":Landroid/os/IBinder;
    if-nez v1, :cond_39

    .line 820
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 821
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_20

    .line 822
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_20

    .line 824
    :cond_1a
    new-instance v3, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v3, v0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 826
    :cond_20
    :goto_20
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 827
    const v3, 0x1110198

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 828
    .local v0, "enabled":Z
    if-nez v0, :cond_32

    .line 830
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->getInstance()Landroid/app/DisabledWallpaperManager;

    move-result-object v3

    return-object v3

    .line 833
    :cond_32
    const-string v3, "SystemServiceRegistry"

    const-string v4, "No wallpaper service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v0    # "enabled":Z
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_39
    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    .line 836
    .local v0, "service":Landroid/app/IWallpaperManager;
    new-instance v2, Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 837
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Landroid/app/WallpaperManager;-><init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V

    .line 836
    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 814
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$57;->createService(Landroid/app/ContextImpl;)Landroid/app/WallpaperManager;

    move-result-object p1

    return-object p1
.end method
