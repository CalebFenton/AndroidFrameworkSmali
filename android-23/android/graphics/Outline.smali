.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# instance fields
.field public mAlpha:F

.field public mPath:Landroid/graphics/Path;

.field public mRadius:F

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Outline;)V
    .locals 0
    .param p1, "src"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    #@6
    .line 53
    return-void
.end method


# virtual methods
.method public canClip()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 90
    invoke-virtual {p0}, Landroid/graphics/Outline;->isEmpty()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public getAlpha()F
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    #@2
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 77
    iget-object v1, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public offset(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 231
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    #@9
    .line 229
    :cond_0
    :goto_0
    return-void

    #@a
    .line 232
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 233
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@10
    int-to-float v1, p1

    #@11
    int-to-float v2, p2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    #@15
    goto :goto_0
.end method

.method public set(Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "src"    # Landroid/graphics/Outline;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 123
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 124
    new-instance v0, Landroid/graphics/Path;

    #@b
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@e
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@10
    .line 126
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@12
    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    #@17
    .line 127
    iput-object v2, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@19
    .line 129
    :cond_1
    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 130
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 131
    new-instance v0, Landroid/graphics/Rect;

    #@23
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@26
    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@28
    .line 133
    :cond_2
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@2a
    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2f
    .line 135
    :cond_3
    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    #@31
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@33
    .line 136
    iget v0, p1, Landroid/graphics/Outline;->mAlpha:F

    #@35
    iput v0, p0, Landroid/graphics/Outline;->mAlpha:F

    #@37
    .line 121
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 106
    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    #@2
    .line 105
    return-void
.end method

.method public setConvexPath(Landroid/graphics/Path;)V
    .locals 2
    .param p1, "convexPath"    # Landroid/graphics/Path;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 212
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    #@a
    .line 213
    return-void

    #@b
    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "path must be convex"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 219
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@1c
    if-nez v0, :cond_2

    #@1e
    new-instance v0, Landroid/graphics/Path;

    #@20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@23
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@25
    .line 221
    :cond_2
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@27
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    #@2a
    .line 222
    iput-object v1, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@2c
    .line 223
    const/high16 v0, -0x40800000    # -1.0f

    #@2e
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@30
    .line 210
    return-void
.end method

.method public setEmpty()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 63
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@3
    .line 64
    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@5
    .line 65
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@8
    .line 62
    return-void
.end method

.method public setOval(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 182
    if-ge p1, p3, :cond_0

    #@3
    if-lt p2, p4, :cond_1

    #@5
    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    #@8
    .line 184
    return-void

    #@9
    .line 187
    :cond_1
    sub-int v0, p4, p2

    #@b
    sub-int v1, p3, p1

    #@d
    if-ne v0, v1, :cond_2

    #@f
    .line 189
    sub-int v0, p4, p2

    #@11
    int-to-float v0, v0

    #@12
    const/high16 v1, 0x40000000    # 2.0f

    #@14
    div-float v5, v0, v1

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v2, p2

    #@19
    move v3, p3

    #@1a
    move v4, p4

    #@1b
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@1e
    .line 190
    return-void

    #@1f
    .line 193
    :cond_2
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@21
    if-nez v0, :cond_3

    #@23
    new-instance v0, Landroid/graphics/Path;

    #@25
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@28
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@2a
    .line 194
    :cond_3
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@2f
    .line 195
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@31
    int-to-float v1, p1

    #@32
    int-to-float v2, p2

    #@33
    int-to-float v3, p3

    #@34
    int-to-float v4, p4

    #@35
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@37
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    #@3a
    .line 196
    iput-object v6, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@3c
    .line 181
    return-void
.end method

.method public setOval(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 203
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    #@b
    .line 202
    return-void
.end method

.method public setRect(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 144
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@9
    .line 143
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 151
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    #@b
    .line 150
    return-void
.end method

.method public setRoundRect(IIIIF)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "radius"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    if-ge p1, p3, :cond_0

    #@3
    if-lt p2, p4, :cond_1

    #@5
    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    #@8
    .line 162
    return-void

    #@9
    .line 165
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@b
    if-nez v0, :cond_2

    #@d
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@14
    .line 166
    :cond_2
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@19
    .line 167
    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    #@1b
    .line 168
    iput-object v1, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@1d
    .line 159
    return-void
.end method

.method public setRoundRect(Landroid/graphics/Rect;F)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # F

    #@0
    .prologue
    .line 175
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    move-object v0, p0

    #@9
    move v5, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@d
    .line 174
    return-void
.end method
