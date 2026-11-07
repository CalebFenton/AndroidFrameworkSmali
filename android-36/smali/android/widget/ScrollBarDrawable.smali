.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private greylist-max-o mAlpha:I

.field private greylist-max-o mAlwaysDrawHorizontalTrack:Z

.field private greylist-max-o mAlwaysDrawVerticalTrack:Z

.field private greylist-max-o mBoundsChanged:Z

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mExtent:I

.field private greylist-max-o mHasSetAlpha:Z

.field private greylist-max-o mHasSetColorFilter:Z

.field private greylist-max-o mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mOffset:I

.field private greylist-max-o mRange:I

.field private greylist-max-o mRangeChanged:Z

.field private greylist-max-o mVertical:Z

.field private greylist-max-p mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 65
    return-void
.end method

.method private greylist-max-o drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .line 212
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 213
    .local v0, "changed":Z
    :goto_c
    if-eqz p5, :cond_28

    .line 214
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    .line 215
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 216
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_24

    .line 217
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    :cond_24
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    goto :goto_41

    .line 224
    :cond_28
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    .line 225
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 226
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3e

    .line 227
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    add-int/2addr v4, p4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    :cond_3e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_41
    :goto_41
    return-void
.end method

.method private greylist-max-o drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .line 197
    if-eqz p3, :cond_5

    .line 198
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .local v0, "track":Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .line 200
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 203
    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    :goto_7
    if-eqz v0, :cond_13

    .line 204
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v1, :cond_10

    .line 205
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    :cond_10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    :cond_13
    return-void
.end method

.method private greylist-max-o propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 312
    if-eqz p1, :cond_25

    .line 313
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_9

    .line 314
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 317
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 318
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 320
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    if-eqz v0, :cond_1c

    .line 321
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 324
    :cond_1c
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    if-eqz v0, :cond_25

    .line 325
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 328
    :cond_25
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 129
    iget-boolean v5, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 130
    .local v5, "vertical":Z
    iget v6, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 131
    .local v6, "extent":I
    iget v7, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 133
    .local v7, "range":I
    const/4 v0, 0x1

    .line 134
    .local v0, "drawTrack":Z
    const/4 v1, 0x1

    .line 135
    .local v1, "drawThumb":Z
    if-lez v6, :cond_10

    if-gt v7, v6, :cond_d

    goto :goto_10

    :cond_d
    move v8, v0

    move v9, v1

    goto :goto_1b

    .line 136
    :cond_10
    :goto_10
    if-eqz v5, :cond_15

    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    goto :goto_17

    :cond_15
    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    :goto_17
    move v0, v2

    .line 137
    const/4 v1, 0x0

    move v8, v0

    move v9, v1

    .line 140
    .end local v0    # "drawTrack":Z
    .end local v1    # "drawThumb":Z
    .local v8, "drawTrack":Z
    .local v9, "drawThumb":Z
    :goto_1b
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 141
    .local v2, "r":Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->quickReject(FFFF)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 142
    return-void

    .line 145
    :cond_32
    if-eqz v8, :cond_37

    .line 146
    invoke-direct {p0, p1, v2, v5}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 149
    :cond_37
    if-eqz v9, :cond_62

    .line 150
    if-eqz v5, :cond_40

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_44

    :cond_40
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_44
    move v10, v0

    .line 151
    .local v10, "scrollBarLength":I
    if-eqz v5, :cond_4c

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_50

    :cond_4c
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_50
    move v11, v0

    .line 152
    .local v11, "thickness":I
    nop

    .line 153
    invoke-static {v10, v11, v6, v7}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbLength(IIII)I

    move-result v4

    .line 154
    .local v4, "thumbLength":I
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 155
    invoke-static {v10, v4, v6, v7, v0}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbOffset(IIIII)I

    move-result v3

    .line 158
    .local v3, "thumbOffset":I
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-direct/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    goto :goto_63

    .line 149
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbLength":I
    .end local v10    # "scrollBarLength":I
    .end local v11    # "thickness":I
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_62
    move-object v1, p1

    .line 160
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_63
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 381
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    return v0
.end method

.method public greylist-max-o getAlwaysDrawHorizontalTrack()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public greylist-max-o getAlwaysDrawVerticalTrack()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public blacklist getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 274
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 410
    const/4 v0, -0x3

    return v0
.end method

.method public greylist-max-o getSize(Z)I
    .registers 4
    .param p1, "vertical"    # Z

    .line 331
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 332
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_18

    .line 333
    :cond_e
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 332
    :cond_18
    :goto_18
    return v0

    .line 335
    :cond_19
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_24

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_2e

    .line 336
    :cond_24
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2e

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 335
    :cond_2e
    :goto_2e
    return v0
.end method

.method public blacklist getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 415
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    .line 416
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_c
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_18
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_24
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    .line 174
    :cond_30
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 170
    :goto_39
    return v0
.end method

.method public bridge synthetic whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mutate()Landroid/widget/ScrollBarDrawable;
    .registers 2

    .line 342
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-nez v0, :cond_31

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_31

    .line 343
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 344
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 346
    :cond_13
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 347
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 349
    :cond_1c
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    .line 350
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_25
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 353
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 355
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    .line 357
    :cond_31
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 164
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 166
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 4
    .param p1, "state"    # [I

    .line 179
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 180
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 181
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 183
    :cond_f
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 184
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 186
    :cond_1a
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    .line 187
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 189
    :cond_25
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_30

    .line 190
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 192
    :cond_30
    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 420
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 421
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 362
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    .line 365
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 366
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    :cond_e
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 369
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 371
    :cond_17
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 372
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
    :cond_20
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    .line 375
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 377
    :cond_29
    return-void
.end method

.method public greylist-max-o setAlwaysDrawHorizontalTrack(Z)V
    .registers 2
    .param p1, "alwaysDrawTrack"    # Z

    .line 76
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 77
    return-void
.end method

.method public greylist-max-o setAlwaysDrawVerticalTrack(Z)V
    .registers 2
    .param p1, "alwaysDrawTrack"    # Z

    .line 88
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 89
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 386
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    .line 389
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 390
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 392
    :cond_e
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 393
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 395
    :cond_17
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 396
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 398
    :cond_20
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    .line 399
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 401
    :cond_29
    return-void
.end method

.method public greylist-max-p setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 294
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 295
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 298
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 300
    return-void
.end method

.method public greylist-max-o setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 304
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 307
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 309
    return-void
.end method

.method public greylist-max-o setParameters(IIIZ)V
    .registers 7
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .line 112
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    const/4 v1, 0x1

    if-eq v0, p4, :cond_9

    .line 113
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 115
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 118
    :cond_9
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_15

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_15

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_1d

    .line 119
    :cond_15
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 120
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 121
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 123
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 125
    :cond_1d
    return-void
.end method

.method public greylist-max-p setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 242
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 245
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 247
    return-void
.end method

.method public greylist-max-o setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 282
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 285
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 287
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v1, :cond_30

    const-string v1, " V"

    goto :goto_32

    :cond_30
    const-string v1, " H"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    return-object v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 425
    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method
