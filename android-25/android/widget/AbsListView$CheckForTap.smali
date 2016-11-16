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
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 3410
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, 0x1

    #@4
    .line 3416
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@6
    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@8
    if-nez v5, :cond_0

    #@a
    .line 3417
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@c
    iput v8, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@e
    .line 3418
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@10
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@12
    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    #@14
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@16
    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    #@18
    sub-int/2addr v6, v7

    #@19
    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    .line 3419
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1f
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 3415
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@26
    .line 3420
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@28
    iput v10, v5, Landroid/widget/AbsListView;->mLayoutMode:I

    #@2a
    .line 3422
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@2c
    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    #@2e
    if-nez v5, :cond_7

    #@30
    .line 3423
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@32
    invoke-static {v5}, Landroid/widget/AbsListView;->-get15(Landroid/widget/AbsListView;)[F

    #@35
    move-result-object v4

    #@36
    .line 3424
    .local v4, "point":[F
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    #@38
    aput v5, v4, v10

    #@3a
    .line 3425
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    #@3c
    aput v5, v4, v8

    #@3e
    .line 3426
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@40
    invoke-virtual {v5, v4, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    #@43
    .line 3427
    aget v5, v4, v10

    #@45
    aget v6, v4, v8

    #@47
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@4a
    .line 3428
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    #@4d
    .line 3429
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@4f
    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@52
    .line 3430
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@54
    invoke-virtual {v5}, Landroid/widget/AbsListView;->layoutChildren()V

    #@57
    .line 3431
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@59
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@5b
    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    #@5d
    invoke-virtual {v5, v6, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    #@60
    .line 3432
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@62
    invoke-virtual {v5}, Landroid/widget/AbsListView;->refreshDrawableState()V

    #@65
    .line 3434
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@68
    move-result v3

    #@69
    .line 3435
    .local v3, "longPressTimeout":I
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@6b
    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    #@6e
    move-result v2

    #@6f
    .line 3437
    .local v2, "longClickable":Z
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@71
    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@73
    if-eqz v5, :cond_3

    #@75
    .line 3438
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@77
    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@79
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@7c
    move-result-object v1

    #@7d
    .line 3439
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    #@7f
    instance-of v5, v1, Landroid/graphics/drawable/TransitionDrawable;

    #@81
    if-eqz v5, :cond_2

    #@83
    .line 3440
    if-eqz v2, :cond_5

    #@85
    .line 3441
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    #@87
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    #@8a
    .line 3446
    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@8c
    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@8e
    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    #@90
    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    #@92
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@95
    .line 3449
    :cond_3
    if-eqz v2, :cond_6

    #@97
    .line 3450
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@99
    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@9c
    move-result-object v5

    #@9d
    if-nez v5, :cond_4

    #@9f
    .line 3451
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@a1
    new-instance v6, Landroid/widget/AbsListView$CheckForLongPress;

    #@a3
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@a5
    invoke-direct {v6, v7, v9}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V

    #@a8
    invoke-static {v5, v6}, Landroid/widget/AbsListView;->-set2(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    #@ab
    .line 3453
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@ad
    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@b0
    move-result-object v5

    #@b1
    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    #@b3
    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    #@b5
    invoke-static {v5, v6, v7}, Landroid/widget/AbsListView$CheckForLongPress;->-wrap0(Landroid/widget/AbsListView$CheckForLongPress;FF)V

    #@b8
    .line 3454
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@ba
    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    #@c1
    .line 3455
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@c3
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@c5
    invoke-static {v6}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@c8
    move-result-object v6

    #@c9
    int-to-long v8, v3

    #@ca
    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@cd
    goto/16 :goto_0

    #@cf
    .line 3443
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    #@d1
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    #@d4
    goto :goto_1

    #@d5
    .line 3457
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@d7
    iput v11, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@d9
    goto/16 :goto_0

    #@db
    .line 3460
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@dd
    iput v11, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@df
    goto/16 :goto_0
.end method
