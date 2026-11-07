.class Landroid/service/wallpaper/WallpaperService$Engine$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V
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

    .line 1086
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1089
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1090
    return-void
.end method
