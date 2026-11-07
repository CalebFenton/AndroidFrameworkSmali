.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;

.field greylist-max-o x:F

.field greylist-max-o y:F


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3578
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 3584
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_de

    .line 3585
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3586
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3587
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_de

    invoke-virtual {v0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v2

    if-nez v2, :cond_de

    .line 3588
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3590
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    const/4 v4, 0x2

    if-nez v2, :cond_da

    .line 3591
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmTmpPoint(Landroid/widget/AbsListView;)[F

    move-result-object v2

    .line 3592
    .local v2, "point":[F
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    aput v5, v2, v3

    .line 3593
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    aput v5, v2, v1

    .line 3594
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3595
    aget v3, v2, v3

    aget v5, v2, v1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 3596
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3597
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3598
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3599
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3600
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 3602
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 3603
    .local v1, "longPressTimeout":I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 3605
    .local v3, "longClickable":Z
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9b

    .line 3606
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3607
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_90

    instance-of v6, v5, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_90

    .line 3608
    if-eqz v3, :cond_8a

    .line 3609
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_90

    .line 3611
    :cond_8a
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3614
    :cond_90
    :goto_90
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v8, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3617
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9b
    if-eqz v3, :cond_d5

    .line 3618
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_b2

    .line 3619
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    new-instance v5, Landroid/widget/AbsListView$CheckForLongPress;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    invoke-static {v4, v5}, Landroid/widget/AbsListView;->-$$Nest$fputmPendingCheckForLongPress(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V

    .line 3621
    :cond_b2
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-static {v4, v5, v6}, Landroid/widget/AbsListView$CheckForLongPress;->-$$Nest$msetCoords(Landroid/widget/AbsListView$CheckForLongPress;FF)V

    .line 3622
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3623
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d9

    .line 3625
    :cond_d5
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v4, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3627
    .end local v1    # "longPressTimeout":I
    .end local v2    # "point":[F
    .end local v3    # "longClickable":Z
    :goto_d9
    goto :goto_de

    .line 3628
    :cond_da
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v4, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3632
    .end local v0    # "child":Landroid/view/View;
    :cond_de
    :goto_de
    return-void
.end method
