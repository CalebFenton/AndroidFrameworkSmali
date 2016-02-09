.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ALPHA_TOLERANCE:I = 0x32

.field private static final COMPACT_BITMAP_SIZE:I = 0x40

.field private static final TOLERANCE:I = 0x14


# instance fields
.field private mTempBuffer:[I

.field private mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    #@a
    .line 33
    return-void
.end method

.method public static buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 129
    if-nez p0, :cond_0

    #@4
    .line 130
    return-object v8

    #@5
    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@8
    move-result v2

    #@9
    .line 133
    .local v2, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@c
    move-result v1

    #@d
    .line 135
    .local v1, "originalHeight":I
    if-gt v2, p1, :cond_1

    #@f
    if-gt v1, p2, :cond_1

    #@11
    .line 136
    instance-of v7, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@13
    .line 135
    if-eqz v7, :cond_1

    #@15
    .line 137
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    #@17
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@1a
    move-result-object v7

    #@1b
    return-object v7

    #@1c
    .line 139
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-lez v1, :cond_2

    #@1e
    if-gtz v2, :cond_3

    #@20
    .line 140
    :cond_2
    return-object v8

    #@21
    .line 145
    :cond_3
    int-to-float v7, p1

    #@22
    int-to-float v8, v2

    #@23
    div-float/2addr v7, v8

    #@24
    .line 146
    int-to-float v8, p2

    #@25
    int-to-float v9, v1

    #@26
    div-float/2addr v8, v9

    #@27
    .line 145
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    #@2a
    move-result v3

    #@2b
    .line 147
    .local v3, "ratio":F
    const/high16 v7, 0x3f800000    # 1.0f

    #@2d
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    #@30
    move-result v3

    #@31
    .line 148
    int-to-float v7, v2

    #@32
    mul-float/2addr v7, v3

    #@33
    float-to-int v6, v7

    #@34
    .line 149
    .local v6, "scaledWidth":I
    int-to-float v7, v1

    #@35
    mul-float/2addr v7, v3

    #@36
    float-to-int v5, v7

    #@37
    .line 150
    .local v5, "scaledHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@39
    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@3c
    move-result-object v4

    #@3d
    .line 153
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@3f
    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@42
    .line 154
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v10, v10, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@45
    .line 155
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@48
    .line 157
    return-object v4
.end method

.method private ensureBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    #@6
    array-length v0, v0

    #@7
    if-ge v0, p1, :cond_1

    #@9
    .line 99
    :cond_0
    new-array v0, p1, [I

    #@b
    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    #@d
    .line 97
    :cond_1
    return-void
.end method

.method public static isGrayscale(I)Z
    .locals 8
    .param p0, "color"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/16 v7, 0x14

    #@4
    .line 110
    shr-int/lit8 v6, p0, 0x18

    #@6
    and-int/lit16 v0, v6, 0xff

    #@8
    .line 111
    .local v0, "alpha":I
    const/16 v6, 0x32

    #@a
    if-ge v0, v6, :cond_0

    #@c
    .line 112
    return v4

    #@d
    .line 115
    :cond_0
    shr-int/lit8 v6, p0, 0x10

    #@f
    and-int/lit16 v3, v6, 0xff

    #@11
    .line 116
    .local v3, "r":I
    shr-int/lit8 v6, p0, 0x8

    #@13
    and-int/lit16 v2, v6, 0xff

    #@15
    .line 117
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    #@17
    .line 119
    .local v1, "b":I
    sub-int v6, v3, v2

    #@19
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@1c
    move-result v6

    #@1d
    if-ge v6, v7, :cond_2

    #@1f
    .line 120
    sub-int v6, v3, v1

    #@21
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@24
    move-result v6

    #@25
    if-ge v6, v7, :cond_2

    #@27
    .line 121
    sub-int v6, v2, v1

    #@29
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@2c
    move-result v6

    #@2d
    if-ge v6, v7, :cond_1

    #@2f
    .line 119
    :goto_0
    return v4

    #@30
    :cond_1
    move v4, v5

    #@31
    .line 121
    goto :goto_0

    #@32
    :cond_2
    move v4, v5

    #@33
    .line 119
    goto :goto_0
.end method


# virtual methods
.method public isGrayscale(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/high16 v6, 0x42800000    # 64.0f

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v10, 0x1

    #@4
    const/16 v1, 0x40

    #@6
    const/4 v2, 0x0

    #@7
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@a
    move-result v7

    #@b
    .line 60
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@e
    move-result v3

    #@f
    .line 63
    .local v3, "width":I
    if-gt v7, v1, :cond_0

    #@11
    if-le v3, v1, :cond_2

    #@13
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    #@15
    if-nez v0, :cond_1

    #@17
    .line 66
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@19
    .line 65
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    #@1f
    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    #@21
    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    #@23
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@26
    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    #@28
    .line 69
    new-instance v0, Landroid/graphics/Paint;

    #@2a
    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    #@2d
    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    #@2f
    .line 70
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    #@31
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@34
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    #@36
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@39
    .line 73
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    #@3b
    .line 74
    int-to-float v1, v3

    #@3c
    div-float v1, v6, v1

    #@3e
    .line 75
    int-to-float v4, v7

    #@3f
    div-float v4, v6, v4

    #@41
    .line 73
    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    #@44
    .line 77
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    #@46
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@48
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@4b
    .line 78
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    #@4d
    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    #@4f
    iget-object v4, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    #@51
    invoke-virtual {v0, p1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@54
    .line 79
    iget-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    #@56
    .line 80
    const/16 v7, 0x40

    #@58
    const/16 v3, 0x40

    #@5a
    .line 83
    :cond_2
    mul-int v9, v7, v3

    #@5c
    .line 84
    .local v9, "size":I
    invoke-direct {p0, v9}, Lcom/android/internal/util/ImageUtils;->ensureBufferSize(I)V

    #@5f
    .line 85
    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    #@61
    move-object v0, p1

    #@62
    move v4, v2

    #@63
    move v5, v2

    #@64
    move v6, v3

    #@65
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    #@68
    .line 86
    const/4 v8, 0x0

    #@69
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_4

    #@6b
    .line 87
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    #@6d
    aget v0, v0, v8

    #@6f
    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    #@72
    move-result v0

    #@73
    if-nez v0, :cond_3

    #@75
    .line 88
    return v2

    #@76
    .line 86
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@78
    goto :goto_0

    #@79
    .line 91
    :cond_4
    return v10
.end method
