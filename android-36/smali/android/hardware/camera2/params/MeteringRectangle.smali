.class public final Landroid/hardware/camera2/params/MeteringRectangle;
.super Ljava/lang/Object;
.source "MeteringRectangle.java"


# static fields
.field public static final whitelist METERING_WEIGHT_DONT_CARE:I = 0x0

.field public static final whitelist METERING_WEIGHT_MAX:I = 0x3e8

.field public static final whitelist METERING_WEIGHT_MIN:I


# instance fields
.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mWeight:I

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mX:I

.field private final greylist-max-o mY:I


# direct methods
.method public constructor whitelist <init>(IIIII)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "meteringWeight"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "x must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 93
    const-string v0, "y must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 94
    const-string v0, "width must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 95
    const-string v0, "height must be nonnegative"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 96
    const/16 v0, 0x3e8

    const-string v1, "meteringWeight"

    const/4 v2, 0x0

    invoke-static {p5, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Point;Landroid/util/Size;I)V
    .registers 6
    .param p1, "xy"    # Landroid/graphics/Point;
    .param p2, "dimensions"    # Landroid/util/Size;
    .param p3, "meteringWeight"    # I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "xy must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "dimensions must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v0, p1, Landroid/graphics/Point;->x:I

    const-string v1, "x must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 117
    iget v0, p1, Landroid/graphics/Point;->y:I

    const-string v1, "y must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 118
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string v1, "width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 119
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "height must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 120
    const-string v0, "meteringWeight must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "meteringWeight"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string v0, "rect must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string v1, "rect.left must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 138
    iget v0, p1, Landroid/graphics/Rect;->top:I

    const-string v1, "rect.top must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "rect.width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v1, "rect.height must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 141
    const-string v0, "meteringWeight must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 142
    return-void
.end method


# virtual methods
.method public whitelist equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .registers 5
    .param p1, "other"    # Landroid/hardware/camera2/params/MeteringRectangle;

    .line 239
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 240
    return v0

    .line 243
    :cond_4
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    if-ne v1, v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 225
    instance-of v0, p1, Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    return v0
.end method

.method public whitelist getMeteringWeight()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return v0
.end method

.method public whitelist getRect()Landroid/graphics/Rect;
    .registers 7

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v5, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .registers 4

    .line 206
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public whitelist getUpperLeftPoint()Landroid/graphics/Point;
    .registers 4

    .line 195
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    return v0
.end method

.method public whitelist getX()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    return v0
.end method

.method public whitelist getY()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 255
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 267
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(x:%d, y:%d, w:%d, h:%d, wt:%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
