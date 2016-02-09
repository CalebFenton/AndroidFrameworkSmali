.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mBoundsChanged:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mExtent:I

.field private mHasSetAlpha:Z

.field private mHasSetColorFilter:Z

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 49
    const/16 v0, 0xff

    #@5
    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@7
    .line 32
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    #@0
    .prologue
    .line 208
    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    #@2
    if-nez v2, :cond_2

    #@4
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@6
    .line 209
    :goto_0
    if-eqz p5, :cond_3

    #@8
    .line 210
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 211
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@e
    .line 212
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@10
    .line 213
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@12
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr v3, p3

    #@15
    .line 214
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@17
    iget v5, p2, Landroid/graphics/Rect;->top:I

    #@19
    add-int/2addr v5, p3

    #@1a
    add-int/2addr v5, p4

    #@1b
    .line 213
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1e
    .line 217
    :cond_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@21
    .line 207
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    #@22
    .line 208
    :cond_2
    const/4 v0, 0x1

    #@23
    .local v0, "changed":Z
    goto :goto_0

    #@24
    .line 220
    .end local v0    # "changed":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 221
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2a
    .line 222
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@2c
    .line 223
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@2e
    add-int/2addr v2, p3

    #@2f
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@31
    .line 224
    iget v4, p2, Landroid/graphics/Rect;->left:I

    #@33
    add-int/2addr v4, p3

    #@34
    add-int/2addr v4, p4

    #@35
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    #@37
    .line 223
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3a
    .line 227
    :cond_4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3d
    goto :goto_1
.end method

.method private drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    #@0
    .prologue
    .line 193
    if-eqz p3, :cond_2

    #@2
    .line 194
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@4
    .line 199
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    #@6
    .line 200
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 201
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@d
    .line 203
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@10
    .line 191
    :cond_1
    return-void

    #@11
    .line 196
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@13
    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 269
    if-eqz p1, :cond_2

    #@2
    .line 270
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 271
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10
    .line 275
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@13
    .line 277
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 278
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@19
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1c
    .line 281
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 282
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@25
    .line 268
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 117
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@4
    move/from16 v17, v0

    #@6
    .line 118
    .local v17, "vertical":Z
    move-object/from16 v0, p0

    #@8
    iget v11, v0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@a
    .line 119
    .local v11, "extent":I
    move-object/from16 v0, p0

    #@c
    iget v14, v0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@e
    .line 121
    .local v14, "range":I
    const/4 v10, 0x1

    #@f
    .line 122
    .local v10, "drawTrack":Z
    const/4 v9, 0x1

    #@10
    .line 123
    .local v9, "drawThumb":Z
    if-lez v11, :cond_0

    #@12
    if-gt v14, v11, :cond_1

    #@14
    .line 124
    :cond_0
    if-eqz v17, :cond_2

    #@16
    move-object/from16 v0, p0

    #@18
    iget-boolean v10, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    #@1a
    .line 125
    .local v10, "drawTrack":Z
    :goto_0
    const/4 v9, 0x0

    #@1b
    .line 128
    .end local v10    # "drawTrack":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    #@1e
    move-result-object v13

    #@1f
    .line 129
    .local v13, "r":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->left:I

    #@21
    int-to-float v4, v3

    #@22
    iget v3, v13, Landroid/graphics/Rect;->top:I

    #@24
    int-to-float v5, v3

    #@25
    iget v3, v13, Landroid/graphics/Rect;->right:I

    #@27
    int-to-float v6, v3

    #@28
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    #@2a
    int-to-float v7, v3

    #@2b
    sget-object v8, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    #@2d
    move-object/from16 v3, p1

    #@2f
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 130
    return-void

    #@36
    .line 124
    .end local v13    # "r":Landroid/graphics/Rect;
    .local v10, "drawTrack":Z
    :cond_2
    move-object/from16 v0, p0

    #@38
    iget-boolean v10, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    #@3a
    .local v10, "drawTrack":Z
    goto :goto_0

    #@3b
    .line 133
    .end local v10    # "drawTrack":Z
    .restart local v13    # "r":Landroid/graphics/Rect;
    :cond_3
    if-eqz v10, :cond_4

    #@3d
    .line 134
    move-object/from16 v0, p0

    #@3f
    move-object/from16 v1, p1

    #@41
    move/from16 v2, v17

    #@43
    invoke-direct {v0, v1, v13, v2}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    #@46
    .line 137
    :cond_4
    if-eqz v9, :cond_7

    #@48
    .line 138
    if-eqz v17, :cond_8

    #@4a
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    #@4d
    move-result v15

    #@4e
    .line 139
    .local v15, "size":I
    :goto_1
    if-eqz v17, :cond_9

    #@50
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    #@53
    move-result v16

    #@54
    .line 140
    .local v16, "thickness":I
    :goto_2
    mul-int/lit8 v12, v16, 0x2

    #@56
    .line 143
    .local v12, "minLength":I
    int-to-float v3, v15

    #@57
    int-to-float v4, v11

    #@58
    mul-float/2addr v3, v4

    #@59
    int-to-float v4, v14

    #@5a
    div-float/2addr v3, v4

    #@5b
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@5e
    move-result v7

    #@5f
    .line 144
    .local v7, "length":I
    if-ge v7, v12, :cond_5

    #@61
    .line 145
    move v7, v12

    #@62
    .line 149
    :cond_5
    sub-int v3, v15, v7

    #@64
    int-to-float v3, v3

    #@65
    move-object/from16 v0, p0

    #@67
    iget v4, v0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@69
    int-to-float v4, v4

    #@6a
    mul-float/2addr v3, v4

    #@6b
    sub-int v4, v14, v11

    #@6d
    int-to-float v4, v4

    #@6e
    div-float/2addr v3, v4

    #@6f
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@72
    move-result v6

    #@73
    .line 150
    .local v6, "offset":I
    sub-int v3, v15, v7

    #@75
    if-le v6, v3, :cond_6

    #@77
    .line 151
    sub-int v6, v15, v7

    #@79
    :cond_6
    move-object/from16 v3, p0

    #@7b
    move-object/from16 v4, p1

    #@7d
    move-object v5, v13

    #@7e
    move/from16 v8, v17

    #@80
    .line 154
    invoke-direct/range {v3 .. v8}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    #@83
    .line 116
    .end local v6    # "offset":I
    .end local v7    # "length":I
    .end local v12    # "minLength":I
    .end local v15    # "size":I
    .end local v16    # "thickness":I
    :cond_7
    return-void

    #@84
    .line 138
    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    #@87
    move-result v15

    #@88
    .restart local v15    # "size":I
    goto :goto_1

    #@89
    .line 139
    :cond_9
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    #@8c
    move-result v16

    #@8d
    .restart local v16    # "thickness":I
    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 338
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@2
    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    #@2
    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    #@0
    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 367
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getSize(Z)I
    .locals 2
    .param p1, "vertical"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 288
    if-eqz p1, :cond_2

    #@3
    .line 289
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@c
    move-result v0

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    .line 290
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@17
    move-result v0

    #@18
    goto :goto_0

    #@19
    .line 292
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1b
    if-eqz v1, :cond_4

    #@1d
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@22
    move-result v0

    #@23
    :cond_3
    :goto_1
    return v0

    #@24
    .line 293
    :cond_4
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    if-eqz v1, :cond_3

    #@28
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2d
    move-result v0

    #@2e
    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    #@3
    .line 371
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_4

    #@c
    .line 167
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@15
    move-result v0

    #@16
    .line 166
    if-nez v0, :cond_4

    #@18
    .line 168
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@21
    move-result v0

    #@22
    .line 166
    if-nez v0, :cond_4

    #@24
    .line 169
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    if-eqz v0, :cond_3

    #@28
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2d
    move-result v0

    #@2e
    .line 166
    if-nez v0, :cond_4

    #@30
    .line 170
    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@33
    move-result v0

    #@34
    .line 166
    :goto_0
    return v0

    #@35
    :cond_4
    const/4 v0, 0x1

    #@36
    goto :goto_0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mutate()Landroid/widget/ScrollBarDrawable;
    .locals 1

    #@0
    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_4

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_4

    #@a
    .line 300
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 301
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    .line 303
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 304
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1c
    .line 306
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 307
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@25
    .line 309
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 310
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@2e
    .line 312
    :cond_3
    const/4 v0, 0x1

    #@2f
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    #@31
    .line 314
    :cond_4
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 161
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@6
    .line 159
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    #@3
    move-result v0

    #@4
    .line 176
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 177
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@d
    move-result v1

    #@e
    or-int/2addr v0, v1

    #@f
    .line 179
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 180
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@18
    move-result v1

    #@19
    or-int/2addr v0, v1

    #@1a
    .line 182
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 183
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@20
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@23
    move-result v1

    #@24
    or-int/2addr v0, v1

    #@25
    .line 185
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 186
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2b
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2e
    move-result v1

    #@2f
    or-int/2addr v0, v1

    #@30
    .line 188
    :cond_3
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 377
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    .line 376
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 319
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@2
    .line 320
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    #@5
    .line 322
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 323
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@e
    .line 325
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 326
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@17
    .line 328
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 329
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@20
    .line 331
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 332
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@29
    .line 318
    :cond_3
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    #@0
    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    #@2
    .line 63
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    #@0
    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    #@2
    .line 75
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 343
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    .line 344
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    #@5
    .line 346
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 347
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@e
    .line 349
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 350
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@17
    .line 352
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 353
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@20
    .line 355
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 356
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@29
    .line 342
    :cond_3
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 251
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 252
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 255
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 256
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@f
    .line 250
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 260
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 261
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 264
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 265
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@f
    .line 259
    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 100
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@3
    if-eq v0, p4, :cond_0

    #@5
    .line 101
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@7
    .line 103
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@9
    .line 106
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@b
    if-ne v0, p1, :cond_1

    #@d
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@f
    if-eq v0, p2, :cond_3

    #@11
    .line 107
    :cond_1
    :goto_0
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@13
    .line 108
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@15
    .line 109
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@17
    .line 111
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    #@19
    .line 99
    :cond_2
    return-void

    #@1a
    .line 106
    :cond_3
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@1c
    if-eq v0, p3, :cond_2

    #@1e
    goto :goto_0
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 233
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 234
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 237
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 238
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@f
    .line 232
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 243
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 246
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 247
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@f
    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ScrollBarDrawable: range="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " offset="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 388
    const-string/jumbo v1, " extent="

    #@22
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 388
    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@28
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 388
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@2e
    if-eqz v0, :cond_0

    #@30
    const-string/jumbo v0, " V"

    #@33
    .line 387
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0

    #@3c
    .line 388
    :cond_0
    const-string/jumbo v0, " H"

    #@3f
    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 382
    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    .line 381
    return-void
.end method
