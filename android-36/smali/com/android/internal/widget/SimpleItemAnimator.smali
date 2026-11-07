.class public abstract Lcom/android/internal/widget/SimpleItemAnimator;
.super Lcom/android/internal/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field blacklist mSupportsChangeAnimations:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract blacklist animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public blacklist animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 12
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 116
    if-eqz p2, :cond_20

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_11

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_f

    goto :goto_11

    :cond_f
    move-object v3, p1

    goto :goto_21

    .line 122
    :cond_11
    :goto_11
    iget v4, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v3, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 116
    .end local v3    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_20
    move-object v3, p1

    .line 128
    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v3    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_21
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SimpleItemAnimator;->animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 12
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 153
    iget v3, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 154
    .local v3, "fromLeft":I
    iget v4, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 156
    .local v4, "fromTop":I
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 157
    iget v0, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 158
    .local v0, "toLeft":I
    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, v0

    move v6, v1

    .local v1, "toTop":I
    goto :goto_17

    .line 160
    .end local v0    # "toLeft":I
    .end local v1    # "toTop":I
    :cond_11
    iget v0, p4, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 161
    .restart local v0    # "toLeft":I
    iget v1, p4, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, v0

    move v6, v1

    .line 163
    .end local v0    # "toLeft":I
    .local v5, "toLeft":I
    .local v6, "toTop":I
    :goto_17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local p2    # "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v1, "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v2, "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/SimpleItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public blacklist animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 11
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 92
    iget v2, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 93
    .local v2, "oldLeft":I
    iget v3, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 94
    .local v3, "oldTop":I
    iget-object v6, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 95
    .local v6, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_d

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_f

    :cond_d
    iget v0, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_f
    move v4, v0

    .line 96
    .local v4, "newLeft":I
    if-nez p3, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_19

    :cond_17
    iget v0, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_19
    move v5, v0

    .line 97
    .local v5, "newTop":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3c

    if-ne v2, v4, :cond_27

    if-eq v3, v5, :cond_25

    goto :goto_27

    :cond_25
    move-object v1, p1

    goto :goto_3d

    .line 98
    :cond_27
    :goto_27
    nop

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 98
    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 104
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 97
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3c
    move-object v1, p1

    .line 109
    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_3d
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SimpleItemAnimator;->animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract blacklist animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public blacklist animatePersistence(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 11
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 135
    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_12

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_d

    goto :goto_12

    .line 143
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 144
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_12
    :goto_12
    iget v3, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v5, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v2, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public abstract blacklist animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public blacklist canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 86
    iget-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final blacklist dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 304
    return-void
.end method

.method public final blacklist dispatchAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 346
    return-void
.end method

.method public final blacklist dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->onChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 319
    return-void
.end method

.method public final blacklist dispatchChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->onChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 359
    return-void
.end method

.method public final blacklist dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 294
    return-void
.end method

.method public final blacklist dispatchMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 337
    return-void
.end method

.method public final blacklist dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 280
    return-void
.end method

.method public final blacklist dispatchRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 328
    return-void
.end method

.method public blacklist getSupportsChangeAnimations()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public blacklist onAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 405
    return-void
.end method

.method public blacklist onAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 394
    return-void
.end method

.method public blacklist onChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 455
    return-void
.end method

.method public blacklist onChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 442
    return-void
.end method

.method public blacklist onMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 428
    return-void
.end method

.method public blacklist onMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 417
    return-void
.end method

.method public blacklist onRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 382
    return-void
.end method

.method public blacklist onRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 371
    return-void
.end method

.method public blacklist setSupportsChangeAnimations(Z)V
    .registers 2
    .param p1, "supportsChangeAnimations"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 74
    return-void
.end method
