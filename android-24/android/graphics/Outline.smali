.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# static fields
.field public static final MODE_CONVEX_PATH:I = 0x2

.field public static final MODE_EMPTY:I = 0x0

.field public static final MODE_ROUND_RECT:I = 0x1

.field private static final RADIUS_UNDEFINED:F = -Infinityf


# instance fields
.field public mAlpha:F

.field public mMode:I

.field public final mPath:Landroid/graphics/Path;

.field public mRadius:F

.field public final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@6
    .line 62
    new-instance v0, Landroid/graphics/Path;

    #@8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@d
    .line 65
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@14
    .line 67
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@16
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@18
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@6
    .line 62
    new-instance v0, Landroid/graphics/Path;

    #@8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@d
    .line 65
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@14
    .line 67
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@16
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@18
    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    #@1b
    .line 80
    return-void
.end method


# virtual methods
.method public canClip()Z
    .locals 2

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    #@2
    return v0
.end method

.method public getRadius()F
    .locals 1

    #@0
    .prologue
    .line 221
    iget v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@2
    return v0
.end method

.method public getRect(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 206
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 207
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 209
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@9
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@c
    .line 210
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    iget v1, p0, Landroid/graphics/Outline;->mMode:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public offset(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 277
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 278
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    #@a
    .line 276
    :cond_0
    :goto_0
    return-void

    #@b
    .line 279
    :cond_1
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    #@d
    const/4 v1, 0x2

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 280
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@12
    int-to-float v1, p1

    #@13
    int-to-float v2, p2

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    #@17
    goto :goto_0
.end method

.method public set(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 150
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    #@2
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@4
    .line 151
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@6
    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@8
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    #@b
    .line 152
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@d
    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@12
    .line 153
    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    #@14
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@16
    .line 154
    iget v0, p1, Landroid/graphics/Outline;->mAlpha:F

    #@18
    iput v0, p0, Landroid/graphics/Outline;->mAlpha:F

    #@1a
    .line 149
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 134
    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    #@2
    .line 133
    return-void
.end method

.method public setConvexPath(Landroid/graphics/Path;)V
    .locals 2
    .param p1, "convexPath"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 259
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    #@9
    .line 260
    return-void

    #@a
    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "path must be convex"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 267
    :cond_1
    const/4 v0, 0x2

    #@1a
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@1c
    .line 268
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@1e
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    #@21
    .line 269
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@26
    .line 270
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@28
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@2a
    .line 257
    return-void
.end method

.method public setEmpty()V
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@3
    .line 91
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@5
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@8
    .line 92
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@d
    .line 93
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@f
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@11
    .line 89
    return-void
.end method

.method public setOval(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 228
    if-ge p1, p3, :cond_0

    #@2
    if-lt p2, p4, :cond_1

    #@4
    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    #@7
    .line 230
    return-void

    #@8
    .line 233
    :cond_1
    sub-int v0, p4, p2

    #@a
    sub-int v1, p3, p1

    #@c
    if-ne v0, v1, :cond_2

    #@e
    .line 235
    sub-int v0, p4, p2

    #@10
    int-to-float v0, v0

    #@11
    const/high16 v1, 0x40000000    # 2.0f

    #@13
    div-float v5, v0, v1

    #@15
    move-object v0, p0

    #@16
    move v1, p1

    #@17
    move v2, p2

    #@18
    move v3, p3

    #@19
    move v4, p4

    #@1a
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@1d
    .line 236
    return-void

    #@1e
    .line 239
    :cond_2
    const/4 v0, 0x2

    #@1f
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@21
    .line 240
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@23
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@26
    .line 241
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@28
    int-to-float v1, p1

    #@29
    int-to-float v2, p2

    #@2a
    int-to-float v3, p3

    #@2b
    int-to-float v4, p4

    #@2c
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@2e
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    #@31
    .line 242
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@33
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@36
    .line 243
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@38
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    #@3a
    .line 227
    return-void
.end method

.method public setOval(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 250
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
    .line 249
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
    .line 162
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
    .line 161
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 169
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
    .line 168
    return-void
.end method

.method public setRoundRect(IIIIF)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "radius"    # F

    #@0
    .prologue
    .line 178
    if-ge p1, p3, :cond_0

    #@2
    if-lt p2, p4, :cond_1

    #@4
    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    #@7
    .line 180
    return-void

    #@8
    .line 183
    :cond_1
    const/4 v0, 0x1

    #@9
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    #@b
    .line 184
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@10
    .line 185
    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    #@12
    .line 186
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    #@14
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@17
    .line 177
    return-void
.end method

.method public setRoundRect(Landroid/graphics/Rect;F)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # F

    #@0
    .prologue
    .line 193
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
    .line 192
    return-void
.end method
