.class public Landroid/hardware/camera2/utils/ParamsUtils;
.super Ljava/lang/Object;
.source "ParamsUtils.java"


# static fields
.field private static final greylist-max-o RATIONAL_DENOMINATOR:I = 0xf4240


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static greylist-max-o convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 3
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "destination"    # Landroid/graphics/RectF;

    .line 170
    const-string v0, "source must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 174
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 175
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 176
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 177
    return-void
.end method

.method public static greylist-max-o createRational(F)Landroid/util/Rational;
    .registers 5
    .param p0, "value"    # F

    .line 122
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    sget-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    return-object v0

    .line 124
    :cond_9
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_12

    .line 125
    sget-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    return-object v0

    .line 126
    :cond_12
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1b

    .line 127
    sget-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    return-object v0

    .line 128
    :cond_1b
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_23

    .line 129
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-object v0

    .line 139
    :cond_23
    const v0, 0xf4240

    .line 142
    .local v0, "den":I
    :goto_26
    int-to-float v1, v0

    mul-float/2addr v1, p0

    .line 144
    .local v1, "numF":F
    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_34

    const/high16 v2, 0x4f000000

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_38

    :cond_34
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    .line 145
    nop

    .line 155
    :cond_38
    float-to-int v2, v1

    .line 157
    .local v2, "num":I
    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v2, v0}, Landroid/util/Rational;-><init>(II)V

    return-object v3

    .line 148
    .end local v2    # "num":I
    :cond_3f
    div-int/lit8 v0, v0, 0xa

    .line 149
    goto :goto_26
.end method

.method public static greylist-max-o createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "rect"    # Landroid/graphics/RectF;

    .line 65
    const-string v0, "rect must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 70
    return-object v0
.end method

.method public static greylist-max-o createRect(Landroid/util/Size;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "size"    # Landroid/util/Size;

    .line 47
    const-string v0, "size must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static greylist-max-o createSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .registers 4
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 106
    const-string v0, "rect must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static greylist-max-o getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 185
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string v0, "r must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "defaultValue must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_16

    .line 191
    return-object p2

    .line 193
    :cond_16
    return-object v0
.end method

.method public static greylist-max-o mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "transform"    # Landroid/graphics/Matrix;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 87
    const-string v0, "transform must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "rect must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 91
    .local v0, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 92
    invoke-static {v0}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method
