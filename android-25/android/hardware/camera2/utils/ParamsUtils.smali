.class public Landroid/hardware/camera2/utils/ParamsUtils;
.super Ljava/lang/Object;
.source "ParamsUtils.java"


# static fields
.field private static final RATIONAL_DENOMINATOR:I = 0xf4240


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 1
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "destination"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 170
    const-string/jumbo v0, "source must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 171
    const-string/jumbo v0, "destination must not be null"

    #@9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 173
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@e
    int-to-float v0, v0

    #@f
    iput v0, p1, Landroid/graphics/RectF;->left:F

    #@11
    .line 174
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@13
    int-to-float v0, v0

    #@14
    iput v0, p1, Landroid/graphics/RectF;->right:F

    #@16
    .line 175
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@18
    int-to-float v0, v0

    #@19
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    #@1b
    .line 176
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@1d
    int-to-float v0, v0

    #@1e
    iput v0, p1, Landroid/graphics/RectF;->top:F

    #@20
    .line 169
    return-void
.end method

.method public static createRational(F)Landroid/util/Rational;
    .locals 4
    .param p0, "value"    # F

    #@0
    .prologue
    .line 122
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 123
    sget-object v3, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    #@8
    return-object v3

    #@9
    .line 124
    :cond_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    #@b
    cmpl-float v3, p0, v3

    #@d
    if-nez v3, :cond_1

    #@f
    .line 125
    sget-object v3, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    #@11
    return-object v3

    #@12
    .line 126
    :cond_1
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    #@14
    cmpl-float v3, p0, v3

    #@16
    if-nez v3, :cond_2

    #@18
    .line 127
    sget-object v3, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    #@1a
    return-object v3

    #@1b
    .line 128
    :cond_2
    const/4 v3, 0x0

    #@1c
    cmpl-float v3, p0, v3

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 129
    sget-object v3, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    #@22
    return-object v3

    #@23
    .line 139
    :cond_3
    const v0, 0xf4240

    #@26
    .line 142
    .local v0, "den":I
    :goto_0
    int-to-float v3, v0

    #@27
    mul-float v2, p0, v3

    #@29
    .line 144
    .local v2, "numF":F
    const/high16 v3, -0x31000000

    #@2b
    cmpl-float v3, v2, v3

    #@2d
    if-lez v3, :cond_5

    #@2f
    const/high16 v3, 0x4f000000

    #@31
    cmpg-float v3, v2, v3

    #@33
    if-gez v3, :cond_5

    #@35
    .line 155
    :cond_4
    float-to-int v1, v2

    #@36
    .line 157
    .local v1, "num":I
    new-instance v3, Landroid/util/Rational;

    #@38
    invoke-direct {v3, v1, v0}, Landroid/util/Rational;-><init>(II)V

    #@3b
    return-object v3

    #@3c
    .line 144
    .end local v1    # "num":I
    :cond_5
    const/4 v3, 0x1

    #@3d
    if-eq v0, v3, :cond_4

    #@3f
    .line 148
    div-int/lit8 v0, v0, 0xa

    #@41
    goto :goto_0
.end method

.method public static createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 65
    const-string/jumbo v1, "rect must not be null"

    #@3
    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    .line 68
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    #@e
    .line 70
    return-object v0
.end method

.method public static createRect(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "size"    # Landroid/util/Size;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 47
    const-string/jumbo v0, "size must not be null"

    #@4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    #@9
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    #@10
    move-result v2

    #@11
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@14
    return-object v0
.end method

.method public static createSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "rect must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 108
    new-instance v0, Landroid/util/Size;

    #@8
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@f
    move-result v2

    #@10
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@13
    return-object v0
.end method

.method public static getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string/jumbo v1, "r must not be null"

    #@3
    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 186
    const-string/jumbo v1, "key must not be null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 187
    const-string/jumbo v1, "defaultValue must not be null"

    #@f
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 189
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 190
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    #@18
    .line 191
    return-object p2

    #@19
    .line 193
    :cond_0
    return-object v0
.end method

.method public static mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "transform"    # Landroid/graphics/Matrix;
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 87
    const-string/jumbo v1, "transform must not be null"

    #@3
    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 88
    const-string/jumbo v1, "rect must not be null"

    #@9
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 90
    new-instance v0, Landroid/graphics/RectF;

    #@e
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@11
    .line 91
    .local v0, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@14
    .line 92
    invoke-static {v0}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method
