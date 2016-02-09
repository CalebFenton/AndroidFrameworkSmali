.class public Landroid/filterfw/geometry/Rectangle;
.super Landroid/filterfw/geometry/Quad;
.source "Rectangle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/filterfw/geometry/Quad;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@5
    .line 33
    new-instance v1, Landroid/filterfw/geometry/Point;

    #@7
    add-float v2, p1, p3

    #@9
    invoke-direct {v1, v2, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@c
    .line 34
    new-instance v2, Landroid/filterfw/geometry/Point;

    #@e
    add-float v3, p2, p4

    #@10
    invoke-direct {v2, p1, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@13
    .line 35
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@15
    add-float v4, p1, p3

    #@17
    add-float v5, p2, p4

    #@19
    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@1c
    .line 32
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1f
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 4
    .param p1, "origin"    # Landroid/filterfw/geometry/Point;
    .param p2, "size"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 40
    iget v0, p2, Landroid/filterfw/geometry/Point;->x:F

    #@3
    invoke-virtual {p1, v0, v2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@6
    move-result-object v0

    #@7
    .line 41
    iget v1, p2, Landroid/filterfw/geometry/Point;->y:F

    #@9
    invoke-virtual {p1, v2, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@c
    move-result-object v1

    #@d
    .line 42
    iget v2, p2, Landroid/filterfw/geometry/Point;->x:F

    #@f
    iget v3, p2, Landroid/filterfw/geometry/Point;->y:F

    #@11
    invoke-virtual {p1, v2, v3}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    #@14
    move-result-object v2

    #@15
    .line 39
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@18
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 0
    .param p1, "p0"    # Landroid/filterfw/geometry/Point;
    .param p2, "p1"    # Landroid/filterfw/geometry/Point;
    .param p3, "p2"    # Landroid/filterfw/geometry/Point;
    .param p4, "p3"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@3
    .line 56
    return-void
.end method

.method public static fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;
    .locals 7
    .param p0, "center"    # Landroid/filterfw/geometry/Point;
    .param p1, "vAxis"    # Landroid/filterfw/geometry/Point;
    .param p2, "size"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    .line 61
    iget v2, p2, Landroid/filterfw/geometry/Point;->y:F

    #@4
    div-float/2addr v2, v4

    #@5
    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    #@8
    move-result-object v1

    #@9
    .line 62
    .local v1, "dy":Landroid/filterfw/geometry/Point;
    const/4 v2, 0x1

    #@a
    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->rotated90(I)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget v3, p2, Landroid/filterfw/geometry/Point;->x:F

    #@10
    div-float/2addr v3, v4

    #@11
    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    #@14
    move-result-object v0

    #@15
    .line 63
    .local v0, "dx":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Rectangle;

    #@17
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@1e
    move-result-object v3

    #@1f
    .line 64
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@26
    move-result-object v4

    #@27
    .line 65
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@2e
    move-result-object v5

    #@2f
    .line 66
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@36
    move-result-object v6

    #@37
    .line 63
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@3a
    return-object v2
.end method

.method public static fromRotatedRect(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Rectangle;
    .locals 9
    .param p0, "center"    # Landroid/filterfw/geometry/Point;
    .param p1, "size"    # Landroid/filterfw/geometry/Point;
    .param p2, "rotation"    # F

    #@0
    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    #@2
    .line 46
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@4
    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    #@6
    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    #@8
    div-float/2addr v5, v7

    #@9
    sub-float/2addr v4, v5

    #@a
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    #@c
    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    #@e
    div-float/2addr v6, v7

    #@f
    sub-float/2addr v5, v6

    #@10
    invoke-direct {v0, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@13
    .line 47
    .local v0, "p0":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    #@15
    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    #@17
    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    #@19
    div-float/2addr v5, v7

    #@1a
    add-float/2addr v4, v5

    #@1b
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    #@1d
    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    #@1f
    div-float/2addr v6, v7

    #@20
    sub-float/2addr v5, v6

    #@21
    invoke-direct {v1, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@24
    .line 48
    .local v1, "p1":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    #@26
    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    #@28
    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    #@2a
    div-float/2addr v5, v7

    #@2b
    sub-float/2addr v4, v5

    #@2c
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    #@2e
    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    #@30
    div-float/2addr v6, v7

    #@31
    add-float/2addr v5, v6

    #@32
    invoke-direct {v2, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@35
    .line 49
    .local v2, "p2":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@37
    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    #@39
    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    #@3b
    div-float/2addr v5, v7

    #@3c
    add-float/2addr v4, v5

    #@3d
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    #@3f
    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    #@41
    div-float/2addr v6, v7

    #@42
    add-float/2addr v5, v6

    #@43
    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@46
    .line 50
    .local v3, "p3":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Rectangle;

    #@48
    invoke-virtual {v0, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    #@4b
    move-result-object v5

    #@4c
    .line 51
    invoke-virtual {v1, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    #@4f
    move-result-object v6

    #@50
    .line 52
    invoke-virtual {v2, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    #@53
    move-result-object v7

    #@54
    .line 53
    invoke-virtual {v3, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    #@57
    move-result-object v8

    #@58
    .line 50
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@5b
    return-object v4
.end method


# virtual methods
.method public center()Landroid/filterfw/geometry/Point;
    .locals 2

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v0

    #@14
    const/high16 v1, 0x3e800000    # 0.25f

    #@16
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getHeight()F
    .locals 2

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getWidth()F
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public bridge synthetic scaled(F)Landroid/filterfw/geometry/Quad;
    .locals 1
    .param p1, "s"    # F

    #@0
    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Rectangle;->scaled(F)Landroid/filterfw/geometry/Rectangle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic scaled(FF)Landroid/filterfw/geometry/Quad;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/geometry/Rectangle;->scaled(FF)Landroid/filterfw/geometry/Rectangle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public scaled(F)Landroid/filterfw/geometry/Rectangle;
    .locals 5
    .param p1, "s"    # F

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    #@16
    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1d
    return-object v0
.end method

.method public scaled(FF)Landroid/filterfw/geometry/Rectangle;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    #@2
    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    #@a
    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    #@10
    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    #@16
    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@1d
    return-object v0
.end method
