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

.field mHostView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 130
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@4
    .line 127
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@7
    .line 131
    iput-object p2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    .line 132
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@b
    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@f
    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    #@15
    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    #@1b
    .line 137
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRenderNode:Landroid/view/RenderNode;

    #@1d
    iget v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    #@1f
    iget v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    #@21
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@24
    .line 129
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@b
    .line 145
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 147
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 148
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@1f
    .line 149
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@22
    .line 140
    :cond_1
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
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v3

    #@8
    instance-of v3, v3, Landroid/view/ViewGroup;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/view/ViewGroup;

    #@12
    .line 169
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@14
    if-eq v1, v3, :cond_0

    #@16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@19
    move-result-object v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 170
    iget-object v3, v1, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 173
    new-array v2, v7, [I

    #@22
    .line 174
    .local v2, "parentLocation":[I
    new-array v0, v7, [I

    #@24
    .line 175
    .local v0, "hostViewLocation":[I
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@27
    .line 176
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@29
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@2c
    .line 177
    aget v3, v2, v4

    #@2e
    aget v4, v0, v4

    #@30
    sub-int/2addr v3, v4

    #@31
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@34
    .line 178
    aget v3, v2, v6

    #@36
    aget v4, v0, v6

    #@38
    sub-int/2addr v3, v4

    #@39
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@3c
    .line 180
    .end local v0    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@3f
    .line 181
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@42
    move-result-object v3

    #@43
    if-eqz v3, :cond_1

    #@45
    .line 183
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@48
    move-result-object v3

    #@49
    const/4 v4, 0x3

    #@4a
    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@4d
    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@50
    move-result-object v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 187
    iput-object v5, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@55
    .line 190
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@58
    .line 166
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    #@3
    .line 199
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 200
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 197
    :cond_0
    return-void
.end method

.method public damageChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 301
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 305
    iget v0, p1, Landroid/view/View;->mLeft:I

    #@6
    .line 306
    .local v0, "left":I
    iget v1, p1, Landroid/view/View;->mTop:I

    #@8
    .line 307
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
    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    #@15
    .line 310
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@18
    .line 311
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@1a
    invoke-virtual {v2, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@1d
    .line 300
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
    .line 320
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@2
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 321
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
    .line 323
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
    .line 219
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 220
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@5
    if-nez v2, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    .line 221
    .local v1, "numDrawables":I
    :goto_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@b
    .line 222
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
    .line 221
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 220
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
    .line 218
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    #@0
    .prologue
    .line 258
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    #@3
    .line 259
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 260
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@c
    .line 257
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
    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    #@3
    .line 251
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 252
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    #@c
    .line 249
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@3
    .line 243
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 244
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@c
    .line 241
    :cond_0
    return-void
.end method

.method invalidate(Z)V
    .locals 1
    .param p1, "invalidateCache"    # Z

    #@0
    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    #@3
    .line 267
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 268
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Z)V

    #@c
    .line 265
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
    .line 328
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 329
    aget v0, p1, v2

    #@9
    aget v1, p1, v3

    #@b
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@e
    .line 330
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@10
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 331
    aput v2, p1, v2

    #@16
    .line 332
    aput v2, p1, v3

    #@18
    .line 333
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@1b
    .line 334
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
    .line 336
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@27
    .line 339
    :cond_1
    return-object v4
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@7
    .line 213
    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 1

    #@0
    .prologue
    .line 282
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentCaches()V

    #@3
    .line 283
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 284
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    #@c
    .line 281
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 290
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentIfNeeded()V

    #@3
    .line 291
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 292
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->invalidateParentIfNeeded()V

    #@c
    .line 289
    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 1
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    #@0
    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    #@3
    .line 275
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 276
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    #@c
    .line 273
    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 205
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->getChildCount()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_1

    #@7
    .line 206
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
    .line 207
    :cond_0
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 209
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
    .line 227
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 154
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 155
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 156
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@11
    .line 157
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@14
    .line 153
    :cond_0
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@3
    .line 193
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 163
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
