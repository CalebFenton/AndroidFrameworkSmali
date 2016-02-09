.class Landroid/widget/AbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AbsListView$FlingRunnable;

    #@0
    .prologue
    .line 4395
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 4398
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@2
    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@4
    invoke-static {v4}, Landroid/widget/AbsListView;->-get0(Landroid/widget/AbsListView;)I

    #@7
    move-result v0

    #@8
    .line 4399
    .local v0, "activeId":I
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@a
    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@c
    invoke-static {v4}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;

    #@f
    move-result-object v2

    #@10
    .line 4400
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@12
    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    #@15
    move-result-object v1

    #@16
    .line 4401
    .local v1, "scroller":Landroid/widget/OverScroller;
    if-eqz v2, :cond_0

    #@18
    const/4 v4, -0x1

    #@19
    if-ne v0, v4, :cond_1

    #@1b
    .line 4402
    :cond_0
    return-void

    #@1c
    .line 4405
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@1e
    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@20
    invoke-static {v4}, Landroid/widget/AbsListView;->-get8(Landroid/widget/AbsListView;)I

    #@23
    move-result v4

    #@24
    int-to-float v4, v4

    #@25
    const/16 v5, 0x3e8

    #@27
    invoke-virtual {v2, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@2a
    .line 4406
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@2d
    move-result v4

    #@2e
    neg-float v3, v4

    #@2f
    .line 4408
    .local v3, "yvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@32
    move-result v4

    #@33
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@35
    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@37
    invoke-static {v5}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    #@3a
    move-result v5

    #@3b
    int-to-float v5, v5

    #@3c
    cmpl-float v4, v4, v5

    #@3e
    if-ltz v4, :cond_2

    #@40
    .line 4409
    const/4 v4, 0x0

    #@41
    invoke-virtual {v1, v4, v3}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    #@44
    move-result v4

    #@45
    .line 4408
    if-eqz v4, :cond_2

    #@47
    .line 4411
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@49
    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@4b
    const-wide/16 v6, 0x28

    #@4d
    invoke-virtual {v4, p0, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@50
    .line 4397
    :goto_0
    return-void

    #@51
    .line 4413
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@53
    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@56
    .line 4414
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@58
    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@5a
    const/4 v5, 0x3

    #@5b
    iput v5, v4, Landroid/widget/AbsListView;->mTouchMode:I

    #@5d
    .line 4415
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #@5f
    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@61
    const/4 v5, 0x1

    #@62
    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@65
    goto :goto_0
.end method
