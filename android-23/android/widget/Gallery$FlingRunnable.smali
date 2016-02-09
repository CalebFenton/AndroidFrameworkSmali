.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method static synthetic -get0(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0
    .param p1, "scrollIntoSlots"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Gallery;

    #@0
    .prologue
    .line 1428
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1429
    new-instance v0, Landroid/widget/Scroller;

    #@7
    invoke-virtual {p1}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #@e
    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    #@10
    .line 1428
    return-void
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    #@0
    .prologue
    .line 1469
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    #@6
    .line 1471
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@a
    invoke-static {v0}, Landroid/widget/Gallery;->-wrap1(Landroid/widget/Gallery;)V

    #@d
    .line 1464
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    #@0
    .prologue
    .line 1434
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@2
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 1432
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1477
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@4
    iget v5, v5, Landroid/widget/Gallery;->mItemCount:I

    #@6
    if-nez v5, :cond_0

    #@8
    .line 1478
    invoke-direct {p0, v8}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    #@b
    .line 1479
    return-void

    #@c
    .line 1482
    :cond_0
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@e
    invoke-static {v5, v6}, Landroid/widget/Gallery;->-set1(Landroid/widget/Gallery;Z)Z

    #@11
    .line 1484
    iget-object v3, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    #@13
    .line 1485
    .local v3, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@16
    move-result v1

    #@17
    .line 1486
    .local v1, "more":Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    #@1a
    move-result v4

    #@1b
    .line 1490
    .local v4, "x":I
    iget v5, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    #@1d
    sub-int v0, v5, v4

    #@1f
    .line 1493
    .local v0, "delta":I
    if-lez v0, :cond_3

    #@21
    .line 1495
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@23
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@25
    invoke-static {v5}, Landroid/widget/Gallery;->-get1(Landroid/widget/Gallery;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_2

    #@2b
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@2d
    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    #@2f
    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@31
    invoke-virtual {v7}, Landroid/widget/Gallery;->getChildCount()I

    #@34
    move-result v7

    #@35
    add-int/2addr v5, v7

    #@36
    add-int/lit8 v5, v5, -0x1

    #@38
    :goto_0
    invoke-static {v6, v5}, Landroid/widget/Gallery;->-set0(Landroid/widget/Gallery;I)I

    #@3b
    .line 1499
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@3d
    invoke-virtual {v5}, Landroid/widget/Gallery;->getWidth()I

    #@40
    move-result v5

    #@41
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@43
    invoke-static {v6}, Landroid/widget/Gallery;->-get2(Landroid/widget/Gallery;)I

    #@46
    move-result v6

    #@47
    sub-int/2addr v5, v6

    #@48
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@4a
    invoke-static {v6}, Landroid/widget/Gallery;->-get3(Landroid/widget/Gallery;)I

    #@4d
    move-result v6

    #@4e
    sub-int/2addr v5, v6

    #@4f
    add-int/lit8 v5, v5, -0x1

    #@51
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@54
    move-result v0

    #@55
    .line 1510
    :goto_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@57
    invoke-virtual {v5, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    #@5a
    .line 1512
    if-eqz v1, :cond_1

    #@5c
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@5e
    invoke-static {v5}, Landroid/widget/Gallery;->-get4(Landroid/widget/Gallery;)Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_5

    #@64
    .line 1516
    :cond_1
    invoke-direct {p0, v8}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    #@67
    .line 1475
    :goto_2
    return-void

    #@68
    .line 1496
    :cond_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@6a
    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    #@6c
    goto :goto_0

    #@6d
    .line 1502
    :cond_3
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@6f
    invoke-virtual {v5}, Landroid/widget/Gallery;->getChildCount()I

    #@72
    move-result v5

    #@73
    add-int/lit8 v2, v5, -0x1

    #@75
    .line 1503
    .local v2, "offsetToLast":I
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@77
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@79
    invoke-static {v5}, Landroid/widget/Gallery;->-get1(Landroid/widget/Gallery;)Z

    #@7c
    move-result v5

    #@7d
    if-eqz v5, :cond_4

    #@7f
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@81
    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    #@83
    :goto_3
    invoke-static {v6, v5}, Landroid/widget/Gallery;->-set0(Landroid/widget/Gallery;I)I

    #@86
    .line 1507
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@88
    invoke-virtual {v5}, Landroid/widget/Gallery;->getWidth()I

    #@8b
    move-result v5

    #@8c
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@8e
    invoke-static {v6}, Landroid/widget/Gallery;->-get3(Landroid/widget/Gallery;)I

    #@91
    move-result v6

    #@92
    sub-int/2addr v5, v6

    #@93
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@95
    invoke-static {v6}, Landroid/widget/Gallery;->-get2(Landroid/widget/Gallery;)I

    #@98
    move-result v6

    #@99
    sub-int/2addr v5, v6

    #@9a
    add-int/lit8 v5, v5, -0x1

    #@9c
    neg-int v5, v5

    #@9d
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    #@a0
    move-result v0

    #@a1
    goto :goto_1

    #@a2
    .line 1504
    :cond_4
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@a4
    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    #@a6
    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@a8
    invoke-virtual {v7}, Landroid/widget/Gallery;->getChildCount()I

    #@ab
    move-result v7

    #@ac
    add-int/2addr v5, v7

    #@ad
    add-int/lit8 v5, v5, -0x1

    #@af
    goto :goto_3

    #@b0
    .line 1513
    .end local v2    # "offsetToLast":I
    :cond_5
    iput v4, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    #@b2
    .line 1514
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@b4
    invoke-virtual {v5, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    #@b7
    goto :goto_2
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1450
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 1452
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    #@7
    .line 1454
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    #@9
    .line 1455
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    #@b
    neg-int v3, p1

    #@c
    iget-object v2, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@e
    invoke-static {v2}, Landroid/widget/Gallery;->-get0(Landroid/widget/Gallery;)I

    #@11
    move-result v5

    #@12
    move v2, v1

    #@13
    move v4, v1

    #@14
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@17
    .line 1456
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@19
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    #@1c
    .line 1449
    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    const/4 v2, 0x0

    #@4
    .line 1438
    if-nez p1, :cond_0

    #@6
    return-void

    #@7
    .line 1440
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    #@a
    .line 1442
    if-gez p1, :cond_1

    #@c
    const v1, 0x7fffffff

    #@f
    .line 1443
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    #@11
    .line 1444
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    #@13
    move v3, p1

    #@14
    move v4, v2

    #@15
    move v5, v2

    #@16
    move v7, v2

    #@17
    move v8, v6

    #@18
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@1b
    .line 1446
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@1d
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    #@20
    .line 1437
    return-void

    #@21
    .line 1442
    .end local v1    # "initialX":I
    :cond_1
    const/4 v1, 0x0

    #@22
    .restart local v1    # "initialX":I
    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    #@0
    .prologue
    .line 1460
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #@2
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 1461
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    #@8
    .line 1459
    return-void
.end method
