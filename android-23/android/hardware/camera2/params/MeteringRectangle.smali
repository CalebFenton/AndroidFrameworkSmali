.class public final Landroid/hardware/camera2/params/MeteringRectangle;
.super Ljava/lang/Object;
.source "MeteringRectangle.java"


# static fields
.field public static final METERING_WEIGHT_DONT_CARE:I = 0x0

.field public static final METERING_WEIGHT_MAX:I = 0x3e8

.field public static final METERING_WEIGHT_MIN:I


# instance fields
.field private final mHeight:I

.field private final mWeight:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "meteringWeight"    # I

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    const-string/jumbo v0, "x must be nonnegative"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@c
    .line 93
    const-string/jumbo v0, "y must be nonnegative"

    #@f
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@15
    .line 94
    const-string/jumbo v0, "width must be nonnegative"

    #@18
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@1e
    .line 95
    const-string/jumbo v0, "height must be nonnegative"

    #@21
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@27
    .line 97
    const-string/jumbo v0, "meteringWeight"

    #@2a
    const/4 v1, 0x0

    #@2b
    const/16 v2, 0x3e8

    #@2d
    .line 96
    invoke-static {p5, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@33
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/util/Size;I)V
    .locals 2
    .param p1, "xy"    # Landroid/graphics/Point;
    .param p2, "dimensions"    # Landroid/util/Size;
    .param p3, "meteringWeight"    # I

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    const-string/jumbo v0, "xy must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 114
    const-string/jumbo v0, "dimensions must not be null"

    #@c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 116
    iget v0, p1, Landroid/graphics/Point;->x:I

    #@11
    const-string/jumbo v1, "x must be nonnegative"

    #@14
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@1a
    .line 117
    iget v0, p1, Landroid/graphics/Point;->y:I

    #@1c
    const-string/jumbo v1, "y must be nonnegative"

    #@1f
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@25
    .line 118
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    #@28
    move-result v0

    #@29
    const-string/jumbo v1, "width must be nonnegative"

    #@2c
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@32
    .line 119
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    #@35
    move-result v0

    #@36
    const-string/jumbo v1, "height must be nonnegative"

    #@39
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@3f
    .line 120
    const-string/jumbo v0, "meteringWeight must be nonnegative"

    #@42
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@48
    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "meteringWeight"    # I

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    const-string/jumbo v0, "rect must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 137
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@b
    const-string/jumbo v1, "rect.left must be nonnegative"

    #@e
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@14
    .line 138
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@16
    const-string/jumbo v1, "rect.top must be nonnegative"

    #@19
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@1f
    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@22
    move-result v0

    #@23
    const-string/jumbo v1, "rect.width must be nonnegative"

    #@26
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@2c
    .line 140
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@2f
    move-result v0

    #@30
    const-string/jumbo v1, "rect.height must be nonnegative"

    #@33
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@39
    .line 141
    const-string/jumbo v0, "meteringWeight must be nonnegative"

    #@3c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@42
    .line 134
    return-void
.end method


# virtual methods
.method public equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 3
    .param p1, "other"    # Landroid/hardware/camera2/params/MeteringRectangle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 239
    if-nez p1, :cond_0

    #@3
    .line 240
    return v0

    #@4
    .line 243
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@6
    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 244
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@c
    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 245
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@12
    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 246
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@18
    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 247
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@1e
    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@20
    if-ne v1, v2, :cond_1

    #@22
    const/4 v0, 0x1

    #@23
    .line 243
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 225
    instance-of v0, p1, Landroid/hardware/camera2/params/MeteringRectangle;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Landroid/hardware/camera2/params/MeteringRectangle;

    #@6
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 177
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@2
    return v0
.end method

.method public getMeteringWeight()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@2
    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 6

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Rect;

    #@2
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@4
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@6
    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@8
    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@a
    add-int/2addr v3, v4

    #@b
    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@d
    iget v5, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@f
    add-int/2addr v4, v5

    #@10
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@13
    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 206
    new-instance v0, Landroid/util/Size;

    #@2
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@4
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@6
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@9
    return-object v0
.end method

.method public getUpperLeftPoint()Landroid/graphics/Point;
    .locals 3

    #@0
    .prologue
    .line 195
    new-instance v0, Landroid/graphics/Point;

    #@2
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@4
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@6
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    #@9
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 168
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@2
    return v0
.end method

.method public getX()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@2
    return v0
.end method

.method public getY()I
    .locals 1

    #@0
    .prologue
    .line 159
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 255
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [I

    #@3
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@a
    const/4 v2, 0x1

    #@b
    aput v1, v0, v2

    #@d
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@f
    const/4 v2, 0x2

    #@10
    aput v1, v0, v2

    #@12
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@14
    const/4 v2, 0x3

    #@15
    aput v1, v0, v2

    #@17
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@19
    const/4 v2, 0x4

    #@1a
    aput v1, v0, v2

    #@1c
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 267
    const-string/jumbo v0, "(x:%d, y:%d, w:%d, h:%d, wt:%d)"

    #@3
    const/4 v1, 0x5

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    const/4 v3, 0x4

    #@31
    aput-object v2, v1, v3

    #@33
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
