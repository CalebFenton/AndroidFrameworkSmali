.class public Landroid/graphics/drawable/shapes/ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "ArcShape.java"


# instance fields
.field private final greylist-max-o mStartAngle:F

.field private final greylist-max-o mSweepAngle:F


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 3
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 46
    iput p1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    .line 47
    iput p2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/ArcShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 77
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/ArcShape;

    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/RectShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

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

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "paint":Landroid/graphics/Paint;
    .local v0, "canvas":Landroid/graphics/Canvas;
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 67
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

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 88
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/RectShape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    return v1

    .line 91
    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/shapes/ArcShape;

    .line 92
    .local v2, "arcShape":Landroid/graphics/drawable/shapes/ArcShape;
    iget v3, v2, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iget v4, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_31

    iget v3, v2, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    iget v4, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    .line 92
    :goto_32
    return v0

    .line 86
    .end local v2    # "arcShape":Landroid/graphics/drawable/shapes/ArcShape;
    :cond_33
    :goto_33
    return v1
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 73
    return-void
.end method

.method public final whitelist getStartAngle()F
    .registers 2

    .line 54
    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    return v0
.end method

.method public final whitelist getSweepAngle()F
    .registers 2

    .line 61
    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 98
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
