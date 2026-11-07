.class Landroid/view/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# instance fields
.field greylist-max-o mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mHostView:Landroid/view/View;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .line 143
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 144
    iput-object p2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    .line 150
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    iget v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 151
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 154
    if-eqz p1, :cond_25

    .line 157
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 160
    :cond_d
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 162
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 164
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 166
    :cond_24
    return-void

    .line 155
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o add(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .line 185
    if-eqz p1, :cond_5b

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_57

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eq v0, v1, :cond_3d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3d

    .line 195
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 196
    .local v2, "parentLocation":[I
    new-array v1, v1, [I

    .line 197
    .local v1, "hostViewLocation":[I
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 198
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 199
    const/4 v3, 0x0

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 200
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 202
    .end local v1    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_3d
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 208
    :cond_4e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 209
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 212
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_57
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    return-void

    .line 186
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o clear()V
    .registers 4

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    .line 225
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 226
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 227
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_d

    .line 229
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    :cond_23
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 258
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 261
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 262
    .local v0, "numDrawables":I
    :goto_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_26

    .line 263
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 265
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method public whitelist getFrameContentVelocity()F
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 379
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getFrameContentVelocity()F

    move-result v0

    return v0

    .line 381
    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getFrameContentVelocity()F

    move-result v0

    return v0
.end method

.method public whitelist invalidate()V
    .registers 2

    .line 299
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 300
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 301
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 303
    :cond_c
    return-void
.end method

.method public whitelist invalidate(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 292
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 293
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 295
    :cond_c
    return-void
.end method

.method public whitelist invalidate(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 283
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 284
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 285
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 287
    :cond_c
    return-void
.end method

.method public greylist-max-o invalidate(Z)V
    .registers 3
    .param p1, "invalidateCache"    # Z

    .line 308
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 309
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 310
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 312
    :cond_c
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 7
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 358
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 359
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 360
    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_23

    .line 361
    aput v0, p1, v0

    .line 362
    aput v0, p1, v2

    .line 363
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 364
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 366
    :cond_23
    invoke-virtual {p0, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 369
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 244
    return-void
.end method

.method protected greylist-max-o invalidateParentCaches()V
    .registers 2

    .line 324
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentCaches()V

    .line 325
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 326
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    .line 328
    :cond_c
    return-void
.end method

.method protected greylist-max-o invalidateParentIfNeeded()V
    .registers 2

    .line 332
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentIfNeeded()V

    .line 333
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 334
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 336
    :cond_c
    return-void
.end method

.method greylist-max-o invalidateViewProperty(ZZ)V
    .registers 4
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .line 316
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 317
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 318
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 320
    :cond_c
    return-void
.end method

.method greylist-max-o isEmpty()Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 236
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 340
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 341
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 343
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 347
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1a

    .line 351
    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate()V

    .line 354
    :cond_1a
    :goto_1a
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 270
    return-void
.end method

.method public greylist-max-o remove(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 169
    if-eqz p1, :cond_17

    .line 172
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 173
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 177
    :cond_16
    return-void

    .line 170
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o remove(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 216
    if-eqz p1, :cond_6

    .line 220
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 221
    return-void

    .line 217
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
