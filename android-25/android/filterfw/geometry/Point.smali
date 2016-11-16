.class public Landroid/filterfw/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@5
    .line 35
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@7
    .line 33
    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/high16 v3, 0x3f800000    # 1.0f

    #@3
    const/4 v2, 0x0

    #@4
    .line 44
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@6
    cmpl-float v1, v1, v2

    #@8
    if-ltz v1, :cond_0

    #@a
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@c
    cmpg-float v1, v1, v3

    #@e
    if-gtz v1, :cond_0

    #@10
    .line 45
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    #@12
    cmpl-float v1, v1, v2

    #@14
    if-ltz v1, :cond_0

    #@16
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    #@18
    cmpg-float v1, v1, v3

    #@1a
    if-gtz v1, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 44
    :cond_0
    return v0
.end method

.method public distanceTo(Landroid/filterfw/geometry/Point;)F
    .locals 1
    .param p1, "p"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    .line 77
    invoke-virtual {p1, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public length()F
    .locals 4

    #@0
    .prologue
    .line 73
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    #@2
    float-to-double v0, v0

    #@3
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@5
    float-to-double v2, v2

    #@6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@9
    move-result-wide v0

    #@a
    double-to-float v0, v0

    #@b
    return v0
.end method

.method public minus(FF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@2
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@4
    sub-float/2addr v1, p1

    #@5
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@7
    sub-float/2addr v2, p2

    #@8
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@b
    return-object v0
.end method

.method public minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 2
    .param p1, "point"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    .line 61
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    #@2
    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->minus(FF)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public mult(FF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 69
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@2
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@4
    mul-float/2addr v1, p1

    #@5
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@7
    mul-float/2addr v2, p2

    #@8
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@b
    return-object v0
.end method

.method public normalize()Landroid/filterfw/geometry/Point;
    .locals 1

    #@0
    .prologue
    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public plus(FF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@2
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@4
    add-float/2addr v1, p1

    #@5
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@7
    add-float/2addr v2, p2

    #@8
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@b
    return-object v0
.end method

.method public plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 2
    .param p1, "point"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    .line 53
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    #@2
    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public rotated(F)Landroid/filterfw/geometry/Point;
    .locals 8
    .param p1, "radians"    # F

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@2
    float-to-double v2, p1

    #@3
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@6
    move-result-wide v2

    #@7
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@9
    float-to-double v4, v1

    #@a
    mul-double/2addr v2, v4

    #@b
    float-to-double v4, p1

    #@c
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@f
    move-result-wide v4

    #@10
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    #@12
    float-to-double v6, v1

    #@13
    mul-double/2addr v4, v6

    #@14
    sub-double/2addr v2, v4

    #@15
    double-to-float v1, v2

    #@16
    .line 102
    float-to-double v2, p1

    #@17
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@1a
    move-result-wide v2

    #@1b
    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    #@1d
    float-to-double v4, v4

    #@1e
    mul-double/2addr v2, v4

    #@1f
    float-to-double v4, p1

    #@20
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@23
    move-result-wide v4

    #@24
    iget v6, p0, Landroid/filterfw/geometry/Point;->y:F

    #@26
    float-to-double v6, v6

    #@27
    mul-double/2addr v4, v6

    #@28
    add-double/2addr v2, v4

    #@29
    double-to-float v2, v2

    #@2a
    .line 101
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@2d
    return-object v0
.end method

.method public rotated90(I)Landroid/filterfw/geometry/Point;
    .locals 5
    .param p1, "count"    # I

    #@0
    .prologue
    .line 89
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@2
    .line 90
    .local v1, "nx":F
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@4
    .line 91
    .local v2, "ny":F
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@7
    .line 92
    move v3, v1

    #@8
    .line 93
    .local v3, "ox":F
    move v1, v2

    #@9
    .line 94
    neg-float v2, v3

    #@a
    .line 91
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 96
    .end local v3    # "ox":F
    :cond_0
    new-instance v4, Landroid/filterfw/geometry/Point;

    #@f
    invoke-direct {v4, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@12
    return-object v4
.end method

.method public rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;
    .locals 1
    .param p1, "center"    # Landroid/filterfw/geometry/Point;
    .param p2, "radians"    # F

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public scaledTo(F)Landroid/filterfw/geometry/Point;
    .locals 1
    .param p1, "length"    # F

    #@0
    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    #@3
    move-result v0

    #@4
    div-float v0, p1, v0

    #@6
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public set(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 39
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@2
    .line 40
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@4
    .line 38
    return-void
.end method

.method public times(F)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "s"    # F

    #@0
    .prologue
    .line 65
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@2
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@4
    mul-float/2addr v1, p1

    #@5
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    #@7
    mul-float/2addr v2, p1

    #@8
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ")"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
