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
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDrawLeft:I

.field private mDrawTop:I

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 161
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 162
    iput-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    #@c
    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    #@12
    .line 166
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    #@14
    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    #@16
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/app/WallpaperManager$FastBitmapDrawable;->setBounds(IIII)V

    #@19
    .line 168
    new-instance v0, Landroid/graphics/Paint;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@20
    .line 169
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@22
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #@24
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@26
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@2c
    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    #@4
    int-to-float v1, v1

    #@5
    iget v2, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    #@7
    int-to-float v2, v2

    #@8
    iget-object v3, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@d
    .line 173
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 215
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    #@2
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    #@2
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 220
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 179
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Not supported with this drawable"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 184
    sub-int v0, p3, p1

    #@2
    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    #@4
    sub-int/2addr v0, v1

    #@5
    div-int/lit8 v0, v0, 0x2

    #@7
    add-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    #@a
    .line 185
    sub-int v0, p4, p2

    #@c
    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    #@e
    sub-int/2addr v0, v1

    #@f
    div-int/lit8 v0, v0, 0x2

    #@11
    add-int/2addr v0, p2

    #@12
    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    #@14
    .line 183
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Not supported with this drawable"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Not supported with this drawable"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Not supported with this drawable"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
