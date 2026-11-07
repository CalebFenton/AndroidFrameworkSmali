.class public Landroid/graphics/drawable/shapes/RoundRectShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "RoundRectShape.java"


# instance fields
.field private greylist-max-o mInnerRadii:[F

.field private greylist-max-o mInnerRect:Landroid/graphics/RectF;

.field private greylist-max-o mInset:Landroid/graphics/RectF;

.field private greylist-max-o mOuterRadii:[F

.field private greylist-max-o mPath:Landroid/graphics/Path;


# direct methods
.method public constructor whitelist <init>([FLandroid/graphics/RectF;[F)V
    .registers 6
    .param p1, "outerRadii"    # [F
    .param p2, "inset"    # Landroid/graphics/RectF;
    .param p3, "innerRadii"    # [F

    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 66
    const/16 v0, 0x8

    if-eqz p1, :cond_14

    array-length v1, p1

    if-lt v1, v0, :cond_b

    goto :goto_14

    .line 67
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "outer radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_14
    :goto_14
    if-eqz p3, :cond_23

    array-length v1, p3

    if-lt v1, v0, :cond_1a

    goto :goto_23

    .line 70
    :cond_1a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "inner radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_23
    :goto_23
    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    .line 73
    iput-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 74
    iput-object p3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 76
    if-eqz p2, :cond_32

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 79
    :cond_32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/RectShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/graphics/drawable/shapes/RoundRectShape;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 135
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 136
    .local v0, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    .line 137
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [F

    :cond_24
    iput-object v2, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 138
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 139
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 140
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 141
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

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

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 147
    return v0

    .line 149
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_51

    .line 152
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/RectShape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 153
    return v1

    .line 155
    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 156
    .local v2, "that":Landroid/graphics/drawable/shapes/RoundRectShape;
    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    iget-object v4, v2, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget-object v4, v2, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 157
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    iget-object v4, v2, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 158
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v4, v2, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 159
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v4, v2, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 160
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    .line 156
    :goto_50
    return v0

    .line 150
    .end local v2    # "that":Landroid/graphics/drawable/shapes/RoundRectShape;
    :cond_51
    :goto_51
    return v1
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 10
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    return-void

    .line 91
    :cond_5
    const/4 v0, 0x0

    .line 92
    .local v0, "radius":F
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    if-eqz v1, :cond_27

    .line 93
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 94
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_10
    const/16 v2, 0x8

    if-ge v1, v2, :cond_25

    .line 95
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_22

    .line 97
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 98
    return-void

    .line 94
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    move v7, v0

    goto :goto_28

    .line 92
    .end local v1    # "i":I
    :cond_27
    move v7, v0

    .line 103
    .end local v0    # "radius":F
    .local v7, "radius":F
    :goto_28
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 104
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v3, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v4, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v5, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v6, v1

    .line 104
    move-object v2, p1

    .end local p1    # "outline":Landroid/graphics/Outline;
    .local v2, "outline":Landroid/graphics/Outline;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 106
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 165
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 167
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 10
    .param p1, "w"    # F
    .param p2, "h"    # F

    .line 110
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    .line 112
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 113
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 115
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    if-eqz v1, :cond_1a

    .line 116
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_21

    .line 118
    :cond_1a
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 120
    :goto_21
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_73

    .line 121
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_73

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_73

    .line 124
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz v1, :cond_6a

    .line 125
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_73

    .line 127
    :cond_6a
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 131
    :cond_73
    :goto_73
    return-void
.end method
