.class public Lcom/android/internal/graphics/palette/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mMaxColors:I

.field private blacklist mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

.field private blacklist mRegion:Landroid/graphics/Rect;

.field private blacklist mResizeArea:I

.field private blacklist mResizeMaxDimension:I

.field private final blacklist mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    const-class v0, Lcom/android/internal/graphics/palette/Palette;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "quantizer"    # Lcom/android/internal/graphics/palette/Quantizer;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 192
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 193
    const/16 v0, 0x3100

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 201
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 205
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 206
    if-nez p2, :cond_2a

    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;-><init>()V

    goto :goto_2b

    :cond_2a
    move-object v0, p2

    :goto_2b
    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 207
    return-void

    .line 202
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 192
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 193
    const/16 v0, 0x3100

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 215
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 218
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 220
    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 221
    return-void

    .line 216
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 402
    .local v3, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 403
    .local v7, "bitmapHeight":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 404
    .local v1, "pixels":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 406
    iget-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez p1, :cond_19

    .line 408
    return-object v1

    .line 412
    :cond_19
    iget-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 413
    .local p1, "regionWidth":I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 416
    .local v2, "regionHeight":I
    mul-int v4, p1, v2

    new-array v4, v4, [I

    .line 417
    .local v4, "subsetPixels":[I
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_2a
    if-ge v5, v2, :cond_3f

    .line 418
    iget-object v6, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    mul-int/2addr v6, v3

    iget-object v8, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v8

    mul-int v8, v5, p1

    invoke-static {v1, v6, v4, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 425
    .end local v5    # "row":I
    :cond_3f
    return-object v4
.end method

.method private blacklist scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 431
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 433
    .local v0, "scaleRatio":D
    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    if-lez v2, :cond_1d

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 435
    .local v2, "bitmapArea":I
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    if-le v2, v3, :cond_1c

    .line 436
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 438
    .end local v2    # "bitmapArea":I
    :cond_1c
    goto :goto_37

    :cond_1d
    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    if-lez v2, :cond_1c

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 440
    .local v2, "maxDimension":I
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    if-le v2, v3, :cond_37

    .line 441
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    int-to-double v3, v3

    int-to-double v5, v2

    div-double v0, v3, v5

    .line 445
    .end local v2    # "maxDimension":I
    :cond_37
    :goto_37
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3e

    .line 447
    return-object p1

    .line 450
    :cond_3e
    nop

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 450
    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist clearRegion()Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 2

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 314
    return-object p0
.end method

.method public blacklist generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 7
    .param p1, "listener"    # Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    nop

    .line 381
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder$1;-><init>(Lcom/android/internal/graphics/palette/Palette$Builder;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    .line 397
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/graphics/palette/Palette$Builder$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 381
    return-object v0
.end method

.method public blacklist generate()Lcom/android/internal/graphics/palette/Palette;
    .registers 7

    .line 323
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_74

    .line 327
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 330
    .local v1, "region":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_5b

    if-eqz v1, :cond_5b

    .line 333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 334
    .local v2, "scale":D
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 335
    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 336
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 336
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 338
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 339
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 338
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 344
    .end local v2    # "scale":D
    :cond_5b
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 345
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 344
    invoke-interface {v2, v3, v4}, Lcom/android/internal/graphics/palette/Quantizer;->quantize([II)V

    .line 348
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_6d

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    :cond_6d
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    invoke-interface {v2}, Lcom/android/internal/graphics/palette/Quantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v0

    .line 352
    .end local v1    # "region":Landroid/graphics/Rect;
    .local v0, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    goto :goto_7a

    .end local v0    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    :cond_74
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    if-eqz v0, :cond_80

    .line 354
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 361
    .restart local v0    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    :goto_7a
    new-instance v1, Lcom/android/internal/graphics/palette/Palette;

    invoke-direct {v1, v0}, Lcom/android/internal/graphics/palette/Palette;-><init>(Ljava/util/List;)V

    .line 364
    .local v1, "p":Lcom/android/internal/graphics/palette/Palette;
    return-object v1

    .line 357
    .end local v0    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    .end local v1    # "p":Lcom/android/internal/graphics/palette/Palette;
    :cond_80
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public blacklist maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 2
    .param p1, "colors"    # I

    .line 235
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 236
    return-object p0
.end method

.method public blacklist resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 3
    .param p1, "area"    # I

    .line 280
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 282
    return-object p0
.end method

.method public blacklist resizeBitmapSize(I)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 3
    .param p1, "maxDimension"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 258
    return-object p0
.end method

.method public blacklist setRegion(IIII)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 297
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_32

    .line 298
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 300
    :cond_f
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_32

    .line 303
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_32
    :goto_32
    return-object p0
.end method
