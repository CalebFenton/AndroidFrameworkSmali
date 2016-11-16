.class public Landroid/graphics/drawable/shapes/RoundRectShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "RoundRectShape.java"


# instance fields
.field private mInnerRadii:[F

.field private mInnerRect:Landroid/graphics/RectF;

.field private mInset:Landroid/graphics/RectF;

.field private mOuterRadii:[F

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>([FLandroid/graphics/RectF;[F)V
    .locals 2
    .param p1, "outerRadii"    # [F
    .param p2, "inset"    # Landroid/graphics/RectF;
    .param p3, "innerRadii"    # [F

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    #@5
    .line 61
    if-eqz p1, :cond_0

    #@7
    array-length v0, p1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 62
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@c
    const-string/jumbo v1, "outer radii must have >= 8 values"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 64
    :cond_0
    if-eqz p3, :cond_1

    #@15
    array-length v0, p3

    #@16
    if-ge v0, v1, :cond_1

    #@18
    .line 65
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1a
    const-string/jumbo v1, "inner radii must have >= 8 values"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 67
    :cond_1
    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@23
    .line 68
    iput-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@25
    .line 69
    iput-object p3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    #@27
    .line 71
    if-eqz p2, :cond_2

    #@29
    .line 72
    new-instance v0, Landroid/graphics/RectF;

    #@2b
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@30
    .line 74
    :cond_2
    new-instance v0, Landroid/graphics/Path;

    #@32
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@35
    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@37
    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Landroid/graphics/drawable/shapes/RoundRectShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    #@7
    .line 132
    .local v0, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@d
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, [F

    #@13
    :goto_0
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@15
    .line 133
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    #@17
    if-eqz v1, :cond_1

    #@19
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    #@1b
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, [F

    #@21
    :goto_1
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    #@23
    .line 134
    new-instance v1, Landroid/graphics/RectF;

    #@25
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@27
    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@2a
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@2c
    .line 135
    new-instance v1, Landroid/graphics/RectF;

    #@2e
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@30
    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@33
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@35
    .line 136
    new-instance v1, Landroid/graphics/Path;

    #@37
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@39
    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@3c
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@3e
    .line 137
    return-object v0

    #@3f
    :cond_0
    move-object v1, v2

    #@40
    .line 132
    goto :goto_0

    #@41
    :cond_1
    move-object v1, v2

    #@42
    .line 133
    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@5
    .line 78
    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 10
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 86
    :cond_0
    const/4 v5, 0x0

    #@6
    .line 87
    .local v5, "radius":F
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@c
    const/4 v1, 0x0

    #@d
    aget v5, v0, v1

    #@f
    .line 89
    const/4 v6, 0x1

    #@10
    .local v6, "i":I
    :goto_0
    const/16 v0, 0x8

    #@12
    if-ge v6, v0, :cond_2

    #@14
    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@16
    aget v0, v0, v6

    #@18
    cmpl-float v0, v0, v5

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@1e
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    #@21
    .line 93
    return-void

    #@22
    .line 89
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@24
    goto :goto_0

    #@25
    .line 98
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    #@28
    move-result-object v7

    #@29
    .line 99
    .local v7, "rect":Landroid/graphics/RectF;
    iget v0, v7, Landroid/graphics/RectF;->left:F

    #@2b
    float-to-double v0, v0

    #@2c
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@2f
    move-result-wide v0

    #@30
    double-to-int v1, v0

    #@31
    iget v0, v7, Landroid/graphics/RectF;->top:F

    #@33
    float-to-double v2, v0

    #@34
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@37
    move-result-wide v2

    #@38
    double-to-int v2, v2

    #@39
    .line 100
    iget v0, v7, Landroid/graphics/RectF;->right:F

    #@3b
    float-to-double v8, v0

    #@3c
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@3f
    move-result-wide v8

    #@40
    double-to-int v3, v8

    #@41
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    #@43
    float-to-double v8, v0

    #@44
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@47
    move-result-wide v8

    #@48
    double-to-int v4, v8

    #@49
    move-object v0, p1

    #@4a
    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@4d
    .line 83
    return-void
.end method

.method protected onResize(FF)V
    .locals 7
    .param p1, "w"    # F
    .param p2, "h"    # F

    #@0
    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    #@3
    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    #@6
    move-result-object v0

    #@7
    .line 109
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@9
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    #@c
    .line 111
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 112
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@12
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    #@14
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@16
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    #@19
    .line 116
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 117
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@1f
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@21
    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@23
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@25
    add-float/2addr v2, v3

    #@26
    iget v3, v0, Landroid/graphics/RectF;->top:F

    #@28
    iget-object v4, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@2a
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@2c
    add-float/2addr v3, v4

    #@2d
    .line 118
    iget v4, v0, Landroid/graphics/RectF;->right:F

    #@2f
    iget-object v5, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@31
    iget v5, v5, Landroid/graphics/RectF;->right:F

    #@33
    sub-float/2addr v4, v5

    #@34
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    #@36
    iget-object v6, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    #@38
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    #@3a
    sub-float/2addr v5, v6

    #@3b
    .line 117
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    #@3e
    .line 119
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@40
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@43
    move-result v1

    #@44
    cmpg-float v1, v1, p1

    #@46
    if-gez v1, :cond_0

    #@48
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@4a
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@4d
    move-result v1

    #@4e
    cmpg-float v1, v1, p2

    #@50
    if-gez v1, :cond_0

    #@52
    .line 120
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    #@54
    if-eqz v1, :cond_2

    #@56
    .line 121
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@58
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@5a
    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    #@5c
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@5e
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    #@61
    .line 105
    :cond_0
    :goto_1
    return-void

    #@62
    .line 114
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@64
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@66
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    #@69
    goto :goto_0

    #@6a
    .line 123
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    #@6c
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    #@6e
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@70
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    #@73
    goto :goto_1
.end method
