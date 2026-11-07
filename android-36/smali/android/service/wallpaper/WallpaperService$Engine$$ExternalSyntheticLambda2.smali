.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/wallpaper/WallpaperService$Engine;

.field public final synthetic blacklist f$1:Landroid/graphics/RectF;

.field public final synthetic blacklist f$2:Landroid/app/WallpaperColors;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/RectF;

    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$2:Landroid/app/WallpaperColors;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$2:Landroid/app/WallpaperColors;

    invoke-static {v0, v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->$r8$lambda$uvEMS0sEXbaKTh-TxU28qDRsYcY(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method
