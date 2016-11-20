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
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final mHostView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 136
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@4
    .line 133
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@7
    .line 137
    iput-object p2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    .line 138
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@b
    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f
    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    #@15
    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    #@1b
    .line 143
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRenderNode:Landroid/view/RenderNode;

    #@1d
    iget v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    #@1f
    iget v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    #@21
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@24
    .line 135
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 147
    if-nez p1, :cond_0

    #@2
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "drawable must be non-null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 150
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@16
    .line 153
    :cond_1
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 155
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 156
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@2a
    .line 157
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2d
    .line 146
    :cond_2
    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 178
    if-nez p1, :cond_0

    #@6
    .line 179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "view must be non-null"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v3

    #@13
    instance-of v3, v3, Landroid/view/ViewGroup;

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/view/ViewGroup;

    #@1d
    .line 184
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@1f
    if-eq v1, v3, :cond_1

    #@21
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@24
    move-result-object v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 185
    iget-object v3, v1, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 188
    new-array v2, v7, [I

    #@2d
    .line 189
    .local v2, "parentLocation":[I
    new-array v0, v7, [I

    #@2f
    .line 190
    .local v0, "hostViewLocation":[I
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@32
    .line 191
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@34
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@37
    .line 192
    aget v3, v2, v4

    #@39
    aget v4, v0, v4

    #@3b
    sub-int/2addr v3, v4

    #@3c
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@3f
    .line 193
    aget v3, v2, v6

    #@41
    aget v4, v0, v6

    #@43
    sub-int/2addr v3, v4

    #@44
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@47
    .line 195
    .end local v0    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@4a
    .line 196
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@4d
    move-result-object v3

    #@4e
    if-eqz v3, :cond_2

    #@50
    .line 198
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@53
    move-result-object v3

    #@54
    const/4 v4, 0x3

    #@55
    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@58
    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5b
    move-result-object v3

    #@5c
    if-eqz v3, :cond_3

    #@5e
    .line 202
    iput-object v5, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@60
    .line 205
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@63
    .line 177
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 217
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    #@4
    .line 218
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 219
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "drawable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@1a
    .line 220
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1d
    goto :goto_0

    #@1e
    .line 222
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@23
    .line 216
    .end local v1    # "drawable$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public damageChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 323
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 327
    iget v0, p1, Landroid/view/View;->mLeft:I

    #@6
    .line 328
    .local v0, "left":I
    iget v1, p1, Landroid/view/View;->mTop:I

    #@8
    .line 329
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    #@15
    .line 332
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@18
    .line 333
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@1a
    invoke-virtual {v2, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@1d
    .line 322
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_1
    return-void
.end method

.method protected damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@2
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 343
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@8
    check-cast v0, Landroid/view/ViewGroup;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 345
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 242
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@5
    if-nez v2, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    .line 243
    .local v1, "numDrawables":I
    :goto_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@b
    .line 244
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/graphics/drawable/Drawable;

    #@13
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@16
    .line 243
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 242
    .end local v0    # "i":I
    .end local v1    # "numDrawables":I
    :cond_0
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    .restart local v1    # "numDrawables":I
    goto :goto_0

    #@20
    .line 240
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    #@0
    .prologue
    .line 280
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@3
    .line 281
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 282
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@c
    .line 279
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    #@3
    .line 273
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 274
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    #@c
    .line 271
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@3
    .line 265
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 266
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@c
    .line 263
    :cond_0
    return-void
.end method

.method invalidate(Z)V
    .locals 1
    .param p1, "invalidateCache"    # Z

    #@0
    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@3
    .line 289
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 290
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Z)V

    #@c
    .line 287
    :cond_0
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 5
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 350
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 351
    aget v0, p1, v2

    #@9
    aget v1, p1, v3

    #@b
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@e
    .line 352
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@10
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 353
    aput v2, p1, v2

    #@16
    .line 354
    aput v2, p1, v3

    #@18
    .line 355
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@1b
    .line 356
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@1d
    check-cast v0, Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 358
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@27
    .line 361
    :cond_1
    return-object v4
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@7
    .line 235
    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentCaches()V

    #@3
    .line 305
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 306
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    #@c
    .line 303
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 312
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentIfNeeded()V

    #@3
    .line 313
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 314
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->invalidateParentIfNeeded()V

    #@c
    .line 311
    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 1
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    #@0
    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    #@3
    .line 297
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 298
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    #@c
    .line 295
    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 227
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->getChildCount()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_1

    #@7
    .line 228
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 229
    :cond_0
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 231
    :cond_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 249
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 162
    if-nez p1, :cond_0

    #@3
    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "drawable must be non-null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 165
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 166
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@15
    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@1c
    .line 168
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1f
    .line 161
    :cond_1
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 209
    if-nez p1, :cond_0

    #@2
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "view must be non-null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 213
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@e
    .line 208
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
