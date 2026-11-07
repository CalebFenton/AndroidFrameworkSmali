.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Outline$Mode;
    }
.end annotation


# static fields
.field public static final greylist-max-o MODE_EMPTY:I = 0x0

.field public static final blacklist MODE_PATH:I = 0x2

.field public static final greylist-max-o MODE_ROUND_RECT:I = 0x1

.field private static final greylist-max-o RADIUS_UNDEFINED:F = -Infinityf


# instance fields
.field public greylist-max-o mAlpha:F

.field public greylist-max-o mMode:I

.field public greylist-max-o mPath:Landroid/graphics/Path;

.field public greylist-max-o mRadius:F

.field public final greylist mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 75
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Outline;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 75
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 89
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist canClip()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAlpha()F
    .registers 2

    .line 152
    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    return v0
.end method

.method public whitelist getRadius()F
    .registers 2

    .line 239
    iget v0, p0, Landroid/graphics/Outline;->mRadius:F

    return v0
.end method

.method public whitelist getRect(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 224
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 225
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_7
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    return v1
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 116
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist offset(II)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 322
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 323
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_17

    .line 324
    :cond_b
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 325
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 327
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist set(Landroid/graphics/Outline;)V
    .registers 4
    .param p1, "src"    # Landroid/graphics/Outline;

    .line 161
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 162
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 163
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_14

    .line 164
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 166
    :cond_14
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 168
    :cond_1b
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 170
    iget v0, p1, Landroid/graphics/Outline;->mAlpha:F

    iput v0, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 171
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 145
    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 146
    return-void
.end method

.method public whitelist setConvexPath(Landroid/graphics/Path;)V
    .registers 2
    .param p1, "convexPath"    # Landroid/graphics/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 292
    return-void
.end method

.method public whitelist setEmpty()V
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 102
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 103
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 104
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 105
    return-void
.end method

.method public whitelist setOval(IIII)V
    .registers 17
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 246
    move/from16 v4, p4

    if-ge p1, p3, :cond_45

    if-lt p2, v4, :cond_7

    goto :goto_45

    .line 251
    :cond_7
    sub-int v0, v4, p2

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_1c

    .line 253
    sub-int v0, v4, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 254
    return-void

    .line 257
    :cond_1c
    iget-object v5, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v5, :cond_28

    .line 258
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    goto :goto_2d

    .line 260
    :cond_28
    iget-object v5, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 263
    :goto_2d
    const/4 v5, 0x2

    iput v5, p0, Landroid/graphics/Outline;->mMode:I

    .line 264
    iget-object v6, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v7, p1

    int-to-float v8, p2

    int-to-float v9, p3

    int-to-float v10, v4

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 265
    iget-object v5, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 266
    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    iput v5, p0, Landroid/graphics/Outline;->mRadius:F

    .line 267
    return-void

    .line 247
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 248
    return-void
.end method

.method public whitelist setOval(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 273
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 274
    return-void
.end method

.method public whitelist setPath(Landroid/graphics/Path;)V
    .registers 3
    .param p1, "path"    # Landroid/graphics/Path;

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 302
    return-void

    .line 305
    :cond_a
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_15

    .line 306
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 309
    :cond_15
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 310
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 311
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 312
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 313
    return-void
.end method

.method public whitelist setRect(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 177
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v1, "left":I
    .local v2, "top":I
    .local v3, "right":I
    .local v4, "bottom":I
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 178
    return-void
.end method

.method public whitelist setRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 184
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 185
    return-void
.end method

.method public whitelist setRoundRect(IIIIF)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "radius"    # F

    .line 193
    if-ge p1, p3, :cond_1a

    if-lt p2, p4, :cond_5

    goto :goto_1a

    .line 198
    :cond_5
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 200
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 202
    :cond_f
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 203
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    .line 205
    return-void

    .line 194
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 195
    return-void
.end method

.method public whitelist setRoundRect(Landroid/graphics/Rect;F)V
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # F

    .line 211
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    .end local p2    # "radius":F
    .local v5, "radius":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 212
    return-void
.end method
