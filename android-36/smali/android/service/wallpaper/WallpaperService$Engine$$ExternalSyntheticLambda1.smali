.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/wallpaper/WallpaperService$Engine;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/service/wallpaper/EngineWindowPage;

.field public final synthetic blacklist f$3:Ljava/util/Set;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:F

.field public final synthetic blacklist f$7:Landroid/graphics/Bitmap;

.field public final synthetic blacklist f$8:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;J)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$2:Landroid/service/wallpaper/EngineWindowPage;

    iput-object p4, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    iput p5, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$5:I

    iput p7, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$6:F

    iput-object p8, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$7:Landroid/graphics/Bitmap;

    iput-wide p9, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$8:J

    return-void
.end method


# virtual methods
.method public final whitelist onPixelCopyFinished(I)V
    .registers 13

    .line 0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$2:Landroid/service/wallpaper/EngineWindowPage;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$4:I

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$5:I

    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$6:F

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$7:Landroid/graphics/Bitmap;

    iget-wide v8, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;->f$8:J

    move v10, p1

    invoke-static/range {v0 .. v10}, Landroid/service/wallpaper/WallpaperService$Engine;->$r8$lambda$3jX6LT2WFK8p48hRgDRaH45bOtA(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V

    return-void
.end method
