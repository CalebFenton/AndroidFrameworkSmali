.class public Landroid/filterfw/geometry/Rectangle;
.super Landroid/filterfw/geometry/Quad;
.source "Rectangle.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 29
    return-void
.end method

.method public constructor greylist-max-o <init>(FFFF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 32
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v1, Landroid/filterfw/geometry/Point;

    add-float v2, p1, p3

    invoke-direct {v1, v2, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    add-float v3, p2, p4

    invoke-direct {v2, p1, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    add-float v4, p1, p3

    add-float v5, p2, p4

    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 36
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .registers 7
    .param p1, "origin"    # Landroid/filterfw/geometry/Point;
    .param p2, "size"    # Landroid/filterfw/geometry/Point;

    .line 39
    iget v0, p2, Landroid/filterfw/geometry/Point;->x:F

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget v2, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget v2, p2, Landroid/filterfw/geometry/Point;->x:F

    iget v3, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    .line 39
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 43
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .registers 5
    .param p1, "p0"    # Landroid/filterfw/geometry/Point;
    .param p2, "p1"    # Landroid/filterfw/geometry/Point;
    .param p3, "p2"    # Landroid/filterfw/geometry/Point;
    .param p4, "p3"    # Landroid/filterfw/geometry/Point;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 58
    return-void
.end method

.method public static greylist-max-o fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;
    .registers 10
    .param p0, "center"    # Landroid/filterfw/geometry/Point;
    .param p1, "vAxis"    # Landroid/filterfw/geometry/Point;
    .param p2, "size"    # Landroid/filterfw/geometry/Point;

    .line 61
    iget v0, p2, Landroid/filterfw/geometry/Point;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    .line 62
    .local v0, "dy":Landroid/filterfw/geometry/Point;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->rotated90(I)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget v3, p2, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    .line 63
    .local v1, "dx":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {p0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    .line 64
    invoke-virtual {p0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v4

    .line 65
    invoke-virtual {p0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v5

    .line 66
    invoke-virtual {p0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 63
    return-object v2
.end method

.method public static greylist-max-o fromRotatedRect(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Rectangle;
    .registers 12
    .param p0, "center"    # Landroid/filterfw/geometry/Point;
    .param p1, "size"    # Landroid/filterfw/geometry/Point;
    .param p2, "rotation"    # F

    .line 46
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v2, p1, Landroid/filterfw/geometry/Point;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v4, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 47
    .local v0, "p0":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    iget v2, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v4, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 48
    .local v1, "p1":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 49
    .local v2, "p2":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    iget v5, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v7, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 50
    .local v4, "p3":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {v0, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v5

    .line 51
    invoke-virtual {v1, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v6

    .line 52
    invoke-virtual {v2, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 53
    invoke-virtual {v4, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 50
    return-object v3
.end method


# virtual methods
.method public greylist-max-o center()Landroid/filterfw/geometry/Point;
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getHeight()F
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidth()F
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist scaled(F)Landroid/filterfw/geometry/Quad;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Rectangle;->scaled(F)Landroid/filterfw/geometry/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist scaled(FF)Landroid/filterfw/geometry/Quad;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/geometry/Rectangle;->scaled(FF)Landroid/filterfw/geometry/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o scaled(F)Landroid/filterfw/geometry/Rectangle;
    .registers 7
    .param p1, "s"    # F

    .line 83
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public greylist-max-o scaled(FF)Landroid/filterfw/geometry/Rectangle;
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 88
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method
