.class public Landroid/graphics/drawable/shapes/PathShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "PathShape.java"


# instance fields
.field private greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mScaleX:F

.field private greylist-max-o mScaleY:F

.field private final greylist-max-o mStdHeight:F

.field private final greylist-max-o mStdWidth:F


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;FF)V
    .registers 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "stdWidth"    # F
    .param p3, "stdHeight"    # F

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 55
    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    .line 56
    iput p3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/PathShape;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/PathShape;

    .line 76
    .local v0, "shape":Landroid/graphics/drawable/shapes/PathShape;
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 77
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    iget-object v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 83
    return v0

    .line 85
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_51

    .line 88
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/Shape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    return v1

    .line 91
    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/shapes/PathShape;

    .line 92
    .local v2, "pathShape":Landroid/graphics/drawable/shapes/PathShape;
    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4f

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4f

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4f

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iget-object v4, v2, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    .line 92
    :goto_50
    return v0

    .line 86
    .end local v2    # "pathShape":Landroid/graphics/drawable/shapes/PathShape;
    :cond_51
    :goto_51
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 102
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 69
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    div-float v0, p1, v0

    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    .line 70
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    div-float v0, p2, v0

    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    .line 71
    return-void
.end method
