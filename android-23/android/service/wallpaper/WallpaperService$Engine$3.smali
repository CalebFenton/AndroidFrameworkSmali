.class Landroid/service/wallpaper/WallpaperService$Engine$3;
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
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;

    #@0
    .prologue
    .line 1054
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1067
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1057
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@4
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@7
    move-result v0

    #@8
    if-ne v0, p1, :cond_0

    #@a
    .line 1058
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #@c
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    #@f
    .line 1056
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1063
    return-void
.end method
