.class Landroid/app/WallpaperManager$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private final greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mDrawLeft:I

.field private greylist-max-o mDrawTop:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 460
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 461
    iput-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    .line 465
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/app/WallpaperManager$FastBitmapDrawable;->setBounds(IIII)V

    .line 467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 468
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 469
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 473
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 514
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 509
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getMinimumHeight()I
    .registers 2

    .line 524
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getMinimumWidth()I
    .registers 2

    .line 519
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 478
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setAlpha(I)V
    .registers 4
    .param p1, "alpha"    # I

    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBounds(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 483
    sub-int v0, p3, p1

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    .line 484
    sub-int v0, p4, p2

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    .line 485
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 494
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDither(Z)V
    .registers 4
    .param p1, "dither"    # Z

    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 4
    .param p1, "filter"    # Z

    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
