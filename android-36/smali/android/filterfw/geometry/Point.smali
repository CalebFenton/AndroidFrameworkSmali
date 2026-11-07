.class public Landroid/filterfw/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public greylist x:F

.field public greylist y:F


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor greylist <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 39
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 40
    return-void
.end method


# virtual methods
.method public greylist-max-o IsInUnitRange()Z
    .registers 4

    .line 48
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1d

    iget v0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget v0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public greylist-max-o distanceTo(Landroid/filterfw/geometry/Point;)F
    .registers 3
    .param p1, "p"    # Landroid/filterfw/geometry/Point;

    .line 81
    invoke-virtual {p1, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public greylist-max-o length()F
    .registers 5

    .line 77
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v0, v0

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public greylist-max-o minus(FF)Landroid/filterfw/geometry/Point;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 61
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    sub-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public greylist-max-o minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .registers 4
    .param p1, "point"    # Landroid/filterfw/geometry/Point;

    .line 65
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->minus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o mult(FF)Landroid/filterfw/geometry/Point;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 73
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public greylist-max-o normalize()Landroid/filterfw/geometry/Point;
    .registers 2

    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o plus(FF)Landroid/filterfw/geometry/Point;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 53
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    add-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public greylist-max-o plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .registers 4
    .param p1, "point"    # Landroid/filterfw/geometry/Point;

    .line 57
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o rotated(F)Landroid/filterfw/geometry/Point;
    .registers 10
    .param p1, "radians"    # F

    .line 105
    new-instance v0, Landroid/filterfw/geometry/Point;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget v3, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v2, p1

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 105
    return-object v0
.end method

.method public greylist-max-o rotated90(I)Landroid/filterfw/geometry/Point;
    .registers 6
    .param p1, "count"    # I

    .line 93
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 94
    .local v0, "nx":F
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 95
    .local v1, "ny":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, p1, :cond_d

    .line 96
    move v3, v0

    .line 97
    .local v3, "ox":F
    move v0, v1

    .line 98
    neg-float v1, v3

    .line 95
    .end local v3    # "ox":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 100
    .end local v2    # "i":I
    :cond_d
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v2
.end method

.method public greylist-max-o rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;
    .registers 4
    .param p1, "center"    # Landroid/filterfw/geometry/Point;
    .param p2, "radians"    # F

    .line 110
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o scaledTo(F)Landroid/filterfw/geometry/Point;
    .registers 3
    .param p1, "length"    # F

    .line 85
    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o set(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 43
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 44
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 45
    return-void
.end method

.method public greylist-max-o times(F)Landroid/filterfw/geometry/Point;
    .registers 5
    .param p1, "s"    # F

    .line 69
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
