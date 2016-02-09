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
    .line 3267
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
    .line 3273
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@6
    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@8
    if-nez v5, :cond_0

    #@a
    .line 3274
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@c
    iput v8, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@e
    .line 3275
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
    .line 3276
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1f
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 3272
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@26
    .line 3277
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@28
    iput v10, v5, Landroid/widget/AbsListView;->mLayoutMode:I

    #@2a
    .line 3279
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@2c
    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    #@2e
    if-nez v5, :cond_7

    #@30
    .line 3280
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@32
    invoke-static {v5}, Landroid/widget/AbsListView;->-get15(Landroid/widget/AbsListView;)[F

    #@35
    move-result-object v4

    #@36
    .line 3281
    .local v4, "point":[F
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    #@38
    aput v5, v4, v10

    #@3a
    .line 3282
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    #@3c
    aput v5, v4, v8

    #@3e
    .line 3283
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@40
    invoke-virtual {v5, v4, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    #@43
    .line 3284
    aget v5, v4, v10

    #@45
    aget v6, v4, v8

    #@47
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@4a
    .line 3285
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    #@4d
    .line 3286
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@4f
    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@52
    .line 3287
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@54
    invoke-virtual {v5}, Landroid/widget/AbsListView;->layoutChildren()V

    #@57
    .line 3288
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@59
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@5b
    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    #@5d
    invoke-virtual {v5, v6, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    #@60
    .line 3289
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@62
    invoke-virtual {v5}, Landroid/widget/AbsListView;->refreshDrawableState()V

    #@65
    .line 3291
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@68
    move-result v3

    #@69
    .line 3292
    .local v3, "longPressTimeout":I
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@6b
    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    #@6e
    move-result v2

    #@6f
    .line 3294
    .local v2, "longClickable":Z
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@71
    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@73
    if-eqz v5, :cond_3

    #@75
    .line 3295
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@77
    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@79
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@7c
    move-result-object v1

    #@7d
    .line 3296
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    #@7f
    instance-of v5, v1, Landroid/graphics/drawable/TransitionDrawable;

    #@81
    if-eqz v5, :cond_2

    #@83
    .line 3297
    if-eqz v2, :cond_5

    #@85
    .line 3298
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    #@87
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    #@8a
    .line 3303
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
    .line 3306
    :cond_3
    if-eqz v2, :cond_6

    #@97
    .line 3307
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@99
    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@9c
    move-result-object v5

    #@9d
    if-nez v5, :cond_4

    #@9f
    .line 3308
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@a1
    new-instance v6, Landroid/widget/AbsListView$CheckForLongPress;

    #@a3
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@a5
    invoke-direct {v6, v7, v9}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V

    #@a8
    invoke-static {v5, v6}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    #@ab
    .line 3310
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@ad
    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    #@b4
    .line 3311
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@b6
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@b8
    invoke-static {v6}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    #@bb
    move-result-object v6

    #@bc
    int-to-long v8, v3

    #@bd
    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c0
    goto/16 :goto_0

    #@c2
    .line 3300
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    #@c4
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    #@c7
    goto :goto_1

    #@c8
    .line 3313
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@ca
    iput v11, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@cc
    goto/16 :goto_0

    #@ce
    .line 3316
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    #@d0
    iput v11, v5, Landroid/widget/AbsListView;->mTouchMode:I

    #@d2
    goto/16 :goto_0
.end method
