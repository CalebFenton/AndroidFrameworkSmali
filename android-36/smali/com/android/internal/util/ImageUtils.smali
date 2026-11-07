.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final greylist-max-o ALPHA_TOLERANCE:I = 0x32

.field private static final greylist-max-o COMPACT_BITMAP_SIZE:I = 0x40

.field private static final greylist-max-o TOLERANCE:I = 0x14


# instance fields
.field private greylist-max-o mTempBuffer:[I

.field private greylist-max-o mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static greylist-max-o buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildScaledBitmap(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "allowUpscaling"    # Z

    .line 152
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 153
    return-object v0

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 156
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 158
    .local v2, "originalHeight":I
    if-gt v1, p1, :cond_1c

    if-gt v2, p2, :cond_1c

    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1c

    .line 160
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 162
    :cond_1c
    if-lez v2, :cond_4c

    if-gtz v1, :cond_21

    goto :goto_4c

    .line 168
    :cond_21
    int-to-float v0, p1

    int-to-float v3, v1

    div-float/2addr v0, v3

    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 170
    .local v0, "ratio":F
    if-nez p3, :cond_33

    .line 171
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 173
    :cond_33
    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 174
    .local v3, "scaledWidth":I
    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 175
    .local v4, "scaledHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 178
    .local v5, "result":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    return-object v5

    .line 163
    .end local v0    # "ratio":F
    .end local v3    # "scaledWidth":I
    .end local v4    # "scaledHeight":I
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public static blacklist calculateSampleSize(Landroid/util/Size;Landroid/util/Size;)I
    .registers 7
    .param p0, "currentSize"    # Landroid/util/Size;
    .param p1, "requestedSize"    # Landroid/util/Size;

    .line 189
    const/4 v0, 0x1

    .line 191
    .local v0, "inSampleSize":I
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_15

    .line 192
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_34

    .line 193
    :cond_15
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 194
    .local v1, "halfHeight":I
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 198
    .local v2, "halfWidth":I
    :goto_21
    div-int v3, v1, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_34

    div-int v3, v2, v0

    .line 199
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_34

    .line 200
    mul-int/lit8 v0, v0, 0x2

    goto :goto_21

    .line 204
    .end local v1    # "halfHeight":I
    .end local v2    # "halfWidth":I
    :cond_34
    return v0
.end method

.method private greylist-max-o ensureBufferSize(I)V
    .registers 3
    .param p1, "size"    # I

    .line 109
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    array-length v0, v0

    if-ge v0, p1, :cond_d

    .line 110
    :cond_9
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    .line 112
    :cond_d
    return-void
.end method

.method public static greylist-max-o isGrayscale(I)Z
    .registers 8
    .param p0, "color"    # I

    .line 121
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 122
    .local v0, "alpha":I
    const/16 v1, 0x32

    const/4 v2, 0x1

    if-ge v0, v1, :cond_a

    .line 123
    return v2

    .line 126
    :cond_a
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 127
    .local v1, "r":I
    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 128
    .local v3, "g":I
    and-int/lit16 v4, p0, 0xff

    .line 130
    .local v4, "b":I
    sub-int v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_2f

    sub-int v5, v1, v4

    .line 131
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2f

    sub-int v5, v3, v4

    .line 132
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 130
    :goto_30
    return v2
.end method

.method static synthetic blacklist lambda$loadThumbnail$0(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    const-string v0, "image/*"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/ContentProviderClient;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$loadThumbnail$1(Landroid/util/Size;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p2, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 226
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/internal/util/ImageUtils;->calculateSampleSize(Landroid/util/Size;Landroid/util/Size;)I

    move-result v1

    .line 227
    .local v1, "sample":I
    if-le v1, v0, :cond_11

    .line 228
    invoke-virtual {p1, v1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 230
    :cond_11
    return-void
.end method

.method public static blacklist loadThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 217
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v1, "opts":Landroid/os/Bundle;
    const-string v2, "android.content.extra.SIZE"

    new-instance v3, Landroid/graphics/Point;

    .line 219
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    new-instance v2, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, v1}, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-static {v2}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v2

    new-instance v3, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/util/Size;)V

    invoke-static {v2, v3}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_33

    .line 231
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 221
    :cond_32
    return-object v2

    .line 216
    .end local v1    # "opts":Landroid/os/Bundle;
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1
.end method


# virtual methods
.method public greylist-max-o isGrayscale(Landroid/graphics/Bitmap;)Z
    .registers 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 71
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 74
    .local v1, "width":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x40

    if-gt v0, v4, :cond_15

    if-le v1, v4, :cond_11

    goto :goto_15

    :cond_11
    move-object v4, p1

    move v11, v0

    move v7, v1

    goto :goto_5f

    .line 75
    :cond_15
    :goto_15
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_36

    .line 76
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    .line 80
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 83
    :cond_36
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 84
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v6, v1

    const/high16 v7, 0x42800000    # 64.0f

    div-float v6, v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 88
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 90
    iget-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 91
    move v0, v4

    move v1, v4

    move-object v4, p1

    move v11, v0

    move v7, v1

    .line 94
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .local v7, "width":I
    .local v11, "height":I
    :goto_5f
    mul-int p1, v11, v7

    .line 95
    .local p1, "size":I
    invoke-direct {p0, p1}, Lcom/android/internal/util/ImageUtils;->ensureBufferSize(I)V

    .line 96
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6e
    if-ge v0, p1, :cond_7e

    .line 98
    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 99
    return v2

    .line 97
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 102
    .end local v0    # "i":I
    :cond_7e
    return v3
.end method
