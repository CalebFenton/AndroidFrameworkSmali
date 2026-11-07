.class public Landroid/filterfw/geometry/Quad;
.super Ljava/lang/Object;
.source "Quad.java"


# instance fields
.field public greylist p0:Landroid/filterfw/geometry/Point;

.field public greylist p1:Landroid/filterfw/geometry/Point;

.field public greylist p2:Landroid/filterfw/geometry/Point;

.field public greylist p3:Landroid/filterfw/geometry/Point;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor greylist <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .registers 5
    .param p1, "p0"    # Landroid/filterfw/geometry/Point;
    .param p2, "p1"    # Landroid/filterfw/geometry/Point;
    .param p3, "p2"    # Landroid/filterfw/geometry/Point;
    .param p4, "p3"    # Landroid/filterfw/geometry/Point;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 47
    iput-object p2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 48
    iput-object p3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 49
    iput-object p4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 50
    return-void
.end method


# virtual methods
.method public greylist-max-o IsInUnitRange()Z
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 54
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 55
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 56
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 53
    :goto_23
    return v0
.end method

.method public greylist-max-o boundingBox()Landroid/filterfw/geometry/Rectangle;
    .registers 10

    .line 76
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v0, v0, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v1, v1, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v2, v2, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v1, v1, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v4, v4, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 79
    .local v2, "x0":F
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 80
    .local v3, "y0":F
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 81
    .local v4, "x1":F
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 82
    .local v5, "y1":F
    new-instance v6, Landroid/filterfw/geometry/Rectangle;

    sub-float v7, v4, v2

    sub-float v8, v5, v3

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    return-object v6
.end method

.method public greylist-max-o getBoundingHeight()F
    .registers 5

    .line 91
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v0, v0, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v1, v1, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    return v1
.end method

.method public greylist-max-o getBoundingWidth()F
    .registers 5

    .line 86
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v0, v0, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v1, v1, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v2, v2, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    return v1
.end method

.method public greylist-max-o scaled(F)Landroid/filterfw/geometry/Quad;
    .registers 7
    .param p1, "s"    # F

    .line 68
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public greylist-max-o scaled(FF)Landroid/filterfw/geometry/Quad;
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 72
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o translated(FF)Landroid/filterfw/geometry/Quad;
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 64
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public greylist-max-o translated(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;
    .registers 7
    .param p1, "t"    # Landroid/filterfw/geometry/Point;

    .line 60
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method
