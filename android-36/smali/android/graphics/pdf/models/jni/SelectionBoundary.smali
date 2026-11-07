.class public Landroid/graphics/pdf/models/jni/SelectionBoundary;
.super Ljava/lang/Object;
.source "SelectionBoundary.java"


# instance fields
.field private final blacklist mIndex:I

.field private final blacklist mIsRtl:Z

.field private final blacklist mX:I

.field private final blacklist mY:I


# direct methods
.method public constructor blacklist <init>(IIIZ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "isRtl"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mIndex:I

    .line 37
    iput p2, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mX:I

    .line 38
    iput p3, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mY:I

    .line 39
    iput-boolean p4, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mIsRtl:Z

    .line 40
    return-void
.end method

.method public static blacklist convert(Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/jni/SelectionBoundary;
    .registers 6
    .param p0, "selectionBoundary"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 52
    invoke-virtual {p0}, Landroid/graphics/pdf/models/selection/SelectionBoundary;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ltz v0, :cond_15

    .line 53
    new-instance v0, Landroid/graphics/pdf/models/jni/SelectionBoundary;

    .line 54
    invoke-virtual {p0}, Landroid/graphics/pdf/models/selection/SelectionBoundary;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/pdf/models/selection/SelectionBoundary;->getIsRtl()Z

    move-result v3

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/graphics/pdf/models/jni/SelectionBoundary;-><init>(IIIZ)V

    .line 53
    return-object v0

    .line 56
    :cond_15
    new-instance v0, Landroid/graphics/pdf/models/jni/SelectionBoundary;

    .line 57
    invoke-virtual {p0}, Landroid/graphics/pdf/models/selection/SelectionBoundary;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/graphics/pdf/models/selection/SelectionBoundary;->getPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 58
    invoke-virtual {p0}, Landroid/graphics/pdf/models/selection/SelectionBoundary;->getIsRtl()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/pdf/models/jni/SelectionBoundary;-><init>(IIIZ)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public blacklist convert()Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .registers 5

    .line 80
    iget v0, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iget v3, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mY:I

    if-ltz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 81
    new-instance v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mX:I

    iget v3, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mY:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/graphics/pdf/models/selection/SelectionBoundary;-><init>(Landroid/graphics/Point;)V

    return-object v0

    .line 84
    :cond_21
    new-instance v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;

    iget v1, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mIndex:I

    invoke-direct {v0, v1}, Landroid/graphics/pdf/models/selection/SelectionBoundary;-><init>(I)V

    return-object v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mIndex:I

    return v0
.end method

.method public blacklist getX()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mX:I

    return v0
.end method

.method public blacklist getY()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mY:I

    return v0
.end method

.method public blacklist isRtl()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Landroid/graphics/pdf/models/jni/SelectionBoundary;->mIsRtl:Z

    return v0
.end method
