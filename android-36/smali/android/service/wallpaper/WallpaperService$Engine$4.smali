.class Landroid/service/wallpaper/WallpaperService$Engine$4;
.super Ljava/lang/Object;
.source "WallpaperService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2407
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2423
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2410
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_31

    .line 2412
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->noVisibilityEventOnDisplayStateChange()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;

    move-result-object v0

    .line 2414
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 2415
    .local v0, "forceReport":Z
    :goto_2c
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    .line 2417
    .end local v0    # "forceReport":Z
    :cond_31
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2420
    return-void
.end method
