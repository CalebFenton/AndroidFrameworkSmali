.class Landroid/app/WallpaperManager$CachedWallpaper;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedWallpaper"
.end annotation


# instance fields
.field final blacklist mCachedWallpaper:Landroid/graphics/Bitmap;

.field final blacklist mCachedWallpaperUserId:I

.field final blacklist mWhich:I


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Bitmap;II)V
    .registers 4
    .param p1, "cachedWallpaper"    # Landroid/graphics/Bitmap;
    .param p2, "cachedWallpaperUserId"    # I
    .param p3, "which"    # I

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 539
    iput p2, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    .line 540
    iput p3, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    .line 541
    return-void
.end method


# virtual methods
.method blacklist isValid(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 548
    iget v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    if-ne p1, v0, :cond_12

    iget v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 549
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 548
    :goto_13
    return v0
.end method
