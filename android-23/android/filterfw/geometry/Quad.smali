.class public Landroid/filterfw/geometry/Quad;
.super Ljava/lang/Object;
.source "Quad.java"


# instance fields
.field public p0:Landroid/filterfw/geometry/Point;

.field public p1:Landroid/filterfw/geometry/Point;

.field public p2:Landroid/filterfw/geometry/Point;

.field public p3:Landroid/filterfw/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 0
    .param p1, "p0"    # Landroid/filterfw/geometry/Point;
    .param p2, "p1"    # Landroid/filterfw/geometry/Point;
    .param p3, "p2"    # Landroid/filterfw/geometry/Point;
    .param p4, "p3"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@5
    .line 42
    iput-object p2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@7
    .line 43
    iput-object p3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@9
    .line 44
    iput-object p4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@b
    .line 40
    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 49
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    #@d
    move-result v0

    #@e
    .line 48
    if-eqz v0, :cond_0

    #@10
    .line 50
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@12
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    #@15
    move-result v0

    #@16
    .line 48
    if-eqz v0, :cond_0

    #@18
    .line 51
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1a
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    #@1d
    move-result v0

    #@1e
    .line 48
    :goto_0
    return v0

    #@1f
    :cond_0
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method public boundingBox()Landroid/filterfw/geometry/Rectangle;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 71
    new-array v6, v12, [Ljava/lang/Float;

    #@7
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@9
    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    #@b
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v7

    #@f
    aput-object v7, v6, v8

    #@11
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@13
    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    #@15
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@18
    move-result-object v7

    #@19
    aput-object v7, v6, v9

    #@1b
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@1d
    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    #@1f
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@22
    move-result-object v7

    #@23
    aput-object v7, v6, v10

    #@25
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@27
    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    #@29
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2c
    move-result-object v7

    #@2d
    aput-object v7, v6, v11

    #@2f
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@32
    move-result-object v2

    #@33
    .line 72
    .local v2, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-array v6, v12, [Ljava/lang/Float;

    #@35
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@37
    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    #@39
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3c
    move-result-object v7

    #@3d
    aput-object v7, v6, v8

    #@3f
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@41
    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    #@43
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@46
    move-result-object v7

    #@47
    aput-object v7, v6, v9

    #@49
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@4b
    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    #@4d
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@50
    move-result-object v7

    #@51
    aput-object v7, v6, v10

    #@53
    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@55
    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    #@57
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5a
    move-result-object v7

    #@5b
    aput-object v7, v6, v11

    #@5d
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@60
    move-result-object v5

    #@61
    .line 73
    .local v5, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@64
    move-result-object v6

    #@65
    check-cast v6, Ljava/lang/Float;

    #@67
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    #@6a
    move-result v0

    #@6b
    .line 74
    .local v0, "x0":F
    invoke-static {v5}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@6e
    move-result-object v6

    #@6f
    check-cast v6, Ljava/lang/Float;

    #@71
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    #@74
    move-result v3

    #@75
    .line 75
    .local v3, "y0":F
    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@78
    move-result-object v6

    #@79
    check-cast v6, Ljava/lang/Float;

    #@7b
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    #@7e
    move-result v1

    #@7f
    .line 76
    .local v1, "x1":F
    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@82
    move-result-object v6

    #@83
    check-cast v6, Ljava/lang/Float;

    #@85
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    #@88
    move-result v4

    #@89
    .line 77
    .local v4, "y1":F
    new-instance v6, Landroid/filterfw/geometry/Rectangle;

    #@8b
    sub-float v7, v1, v0

    #@8d
    sub-float v8, v4, v3

    #@8f
    invoke-direct {v6, v0, v3, v7, v8}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@92
    return-object v6
.end method

.method public getBoundingHeight()F
    .locals 4

    #@0
    .prologue
    .line 86
    const/4 v1, 0x4

    #@1
    new-array v1, v1, [Ljava/lang/Float;

    #@3
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@5
    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    #@7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@10
    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    #@12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x1

    #@17
    aput-object v2, v1, v3

    #@19
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@1b
    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    #@1d
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x2

    #@22
    aput-object v2, v1, v3

    #@24
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@26
    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    #@28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2b
    move-result-object v2

    #@2c
    const/4 v3, 0x3

    #@2d
    aput-object v2, v1, v3

    #@2f
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@32
    move-result-object v0

    #@33
    .line 87
    .local v0, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/Float;

    #@39
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@3c
    move-result v2

    #@3d
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Ljava/lang/Float;

    #@43
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@46
    move-result v1

    #@47
    sub-float v1, v2, v1

    #@49
    return v1
.end method

.method public getBoundingWidth()F
    .locals 4

    #@0
    .prologue
    .line 81
    const/4 v1, 0x4

    #@1
    new-array v1, v1, [Ljava/lang/Float;

    #@3
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@5
    iget v2, v2, Landroid/filterfw/geometry/Point;->x:F

    #@7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@10
    iget v2, v2, Landroid/filterfw/geometry/Point;->x:F

    #@12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x1

    #@17
    aput-object v2, v1, v3

    #@19
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@1b
    iget v2, v2, Landroid/filterfw/geometry/Point;->x:F

    #@1d
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x2

    #@22
    aput-object v2, v1, v3

    #@24
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@26
    iget v2, v2, Landroid/filterfw/geometry/Point;->x:F

    #@28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2b
    move-result-object v2

    #@2c
    const/4 v3, 0x3

    #@2d
    aput-object v2, v1, v3

    #@2f
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@32
    move-result-object v0

    #@33
    .line 82
    .local v0, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/Float;

    #@39
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@3c
    move-result v2

    #@3d
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Ljava/lang/Float;

    #@43
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@46
    move-result v1

    #@47
    sub-float v1, v2, v1

    #@49
    return v1
.end method

.method public scaled(F)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "s"    # F

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@16
    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1d
    return-object v0
.end method

.method public scaled(FF)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@16
    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, ", "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string/jumbo v1, "}"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public translated(FF)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 59
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@16
    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1d
    return-object v0
.end method

.method public translated(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "t"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@16
    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1d
    return-object v0
.end method
