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
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 52
    const/16 v0, 0xff

    #@5
    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@7
    .line 35
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
    .line 203
    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    #@2
    if-nez v2, :cond_2

    #@4
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@6
    .line 204
    :goto_0
    if-eqz p5, :cond_3

    #@8
    .line 205
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 206
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@e
    .line 207
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@10
    .line 208
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@12
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr v3, p3

    #@15
    .line 209
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@17
    iget v5, p2, Landroid/graphics/Rect;->top:I

    #@19
    add-int/2addr v5, p3

    #@1a
    add-int/2addr v5, p4

    #@1b
    .line 208
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1e
    .line 212
    :cond_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@21
    .line 202
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    #@22
    .line 203
    :cond_2
    const/4 v0, 0x1

    #@23
    .local v0, "changed":Z
    goto :goto_0

    #@24
    .line 215
    .end local v0    # "changed":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 216
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2a
    .line 217
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@2c
    .line 218
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@2e
    add-int/2addr v2, p3

    #@2f
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@31
    .line 219
    iget v4, p2, Landroid/graphics/Rect;->left:I

    #@33
    add-int/2addr v4, p3

    #@34
    add-int/2addr v4, p4

    #@35
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    #@37
    .line 218
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3a
    .line 222
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
    .line 188
    if-eqz p3, :cond_2

    #@2
    .line 189
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@4
    .line 194
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    #@6
    .line 195
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 196
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@d
    .line 198
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@10
    .line 186
    :cond_1
    return-void

    #@11
    .line 191
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
    .line 264
    if-eqz p1, :cond_2

    #@2
    .line 265
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10
    .line 270
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@13
    .line 272
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 273
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@19
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1c
    .line 276
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 277
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@25
    .line 263
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 120
    iget-boolean v13, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@2
    .line 121
    .local v13, "vertical":Z
    iget v8, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@4
    .line 122
    .local v8, "extent":I
    iget v10, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@6
    .line 124
    .local v10, "range":I
    const/4 v7, 0x1

    #@7
    .line 125
    .local v7, "drawTrack":Z
    const/4 v6, 0x1

    #@8
    .line 126
    .local v6, "drawThumb":Z
    if-lez v8, :cond_0

    #@a
    if-gt v10, v8, :cond_1

    #@c
    .line 127
    :cond_0
    if-eqz v13, :cond_2

    #@e
    iget-boolean v7, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    #@10
    .line 128
    .local v7, "drawTrack":Z
    :goto_0
    const/4 v6, 0x0

    #@11
    .line 131
    .end local v7    # "drawTrack":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    #@14
    move-result-object v9

    #@15
    .line 132
    .local v9, "r":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    #@17
    int-to-float v1, v0

    #@18
    iget v0, v9, Landroid/graphics/Rect;->top:I

    #@1a
    int-to-float v2, v0

    #@1b
    iget v0, v9, Landroid/graphics/Rect;->right:I

    #@1d
    int-to-float v3, v0

    #@1e
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    #@20
    int-to-float v4, v0

    #@21
    sget-object v5, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    #@23
    move-object v0, p1

    #@24
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 133
    return-void

    #@2b
    .line 127
    .end local v9    # "r":Landroid/graphics/Rect;
    .local v7, "drawTrack":Z
    :cond_2
    iget-boolean v7, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    #@2d
    .local v7, "drawTrack":Z
    goto :goto_0

    #@2e
    .line 136
    .end local v7    # "drawTrack":Z
    .restart local v9    # "r":Landroid/graphics/Rect;
    :cond_3
    if-eqz v7, :cond_4

    #@30
    .line 137
    invoke-direct {p0, p1, v9, v13}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    #@33
    .line 140
    :cond_4
    if-eqz v6, :cond_5

    #@35
    .line 141
    if-eqz v13, :cond_6

    #@37
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@3a
    move-result v11

    #@3b
    .line 142
    .local v11, "scrollBarLength":I
    :goto_1
    if-eqz v13, :cond_7

    #@3d
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    #@40
    move-result v12

    #@41
    .line 144
    .local v12, "thickness":I
    :goto_2
    invoke-static {v11, v12, v8, v10}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbLength(IIII)I

    #@44
    move-result v4

    #@45
    .line 147
    .local v4, "thumbLength":I
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@47
    .line 146
    invoke-static {v11, v4, v8, v10, v0}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbOffset(IIIII)I

    #@4a
    move-result v3

    #@4b
    .local v3, "thumbOffset":I
    move-object v0, p0

    #@4c
    move-object v1, p1

    #@4d
    move-object v2, v9

    #@4e
    move v5, v13

    #@4f
    .line 149
    invoke-direct/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    #@52
    .line 119
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbLength":I
    .end local v11    # "scrollBarLength":I
    .end local v12    # "thickness":I
    :cond_5
    return-void

    #@53
    .line 141
    :cond_6
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    #@56
    move-result v11

    #@57
    .restart local v11    # "scrollBarLength":I
    goto :goto_1

    #@58
    .line 142
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@5b
    move-result v12

    #@5c
    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 333
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@2
    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    #@0
    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    #@2
    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    #@0
    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 362
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
    .line 283
    if-eqz p1, :cond_2

    #@3
    .line 284
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
    .line 285
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
    .line 287
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
    .line 288
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
    .line 367
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    #@3
    .line 366
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 161
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
    .line 162
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
    .line 161
    if-nez v0, :cond_4

    #@18
    .line 163
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
    .line 161
    if-nez v0, :cond_4

    #@24
    .line 164
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
    .line 161
    if-nez v0, :cond_4

    #@30
    .line 165
    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@33
    move-result v0

    #@34
    .line 161
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
    .line 293
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
    .line 294
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
    .line 295
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 296
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    .line 298
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 299
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1c
    .line 301
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 302
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@25
    .line 304
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 305
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@2e
    .line 307
    :cond_3
    const/4 v0, 0x1

    #@2f
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    #@31
    .line 309
    :cond_4
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 156
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@6
    .line 154
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    #@3
    move-result v0

    #@4
    .line 171
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 172
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@d
    move-result v1

    #@e
    or-int/2addr v0, v1

    #@f
    .line 174
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 175
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@18
    move-result v1

    #@19
    or-int/2addr v0, v1

    #@1a
    .line 177
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 178
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@20
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@23
    move-result v1

    #@24
    or-int/2addr v0, v1

    #@25
    .line 180
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 181
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@2b
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2e
    move-result v1

    #@2f
    or-int/2addr v0, v1

    #@30
    .line 183
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
    .line 372
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    .line 371
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 314
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    #@2
    .line 315
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    #@5
    .line 317
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 318
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@e
    .line 320
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 321
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@17
    .line 323
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 324
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@20
    .line 326
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 327
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@29
    .line 313
    :cond_3
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    #@0
    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    #@2
    .line 66
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    #@0
    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    #@2
    .line 78
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 338
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    .line 339
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    #@5
    .line 341
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 342
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@e
    .line 344
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 345
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@17
    .line 347
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 348
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@20
    .line 350
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 351
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@29
    .line 337
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
    .line 246
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 247
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 250
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 251
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    #@f
    .line 245
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 255
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 256
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 259
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 260
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    #@f
    .line 254
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
    .line 103
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@3
    if-eq v0, p4, :cond_0

    #@5
    .line 104
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@7
    .line 106
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    #@9
    .line 109
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@b
    if-ne v0, p1, :cond_1

    #@d
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@f
    if-eq v0, p2, :cond_3

    #@11
    .line 110
    :cond_1
    :goto_0
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    #@13
    .line 111
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    #@15
    .line 112
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@17
    .line 114
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    #@19
    .line 102
    :cond_2
    return-void

    #@1a
    .line 109
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
    .line 228
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 229
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 232
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 233
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    #@f
    .line 227
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 238
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 241
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 242
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    #@f
    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 382
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
    .line 383
    const-string/jumbo v1, " extent="

    #@22
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 383
    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    #@28
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 383
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    #@2e
    if-eqz v0, :cond_0

    #@30
    const-string/jumbo v0, " V"

    #@33
    .line 382
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
    .line 383
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
    .line 377
    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    .line 376
    return-void
.end method
