.class Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/AutoScrollHelper;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/AutoScrollHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 686
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@3
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get0(Lcom/android/internal/widget/AutoScrollHelper;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 687
    return-void

    #@a
    .line 690
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@c
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get2(Lcom/android/internal/widget/AutoScrollHelper;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 691
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@14
    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set2(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    #@17
    .line 692
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@19
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->start()V

    #@20
    .line 695
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@22
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    #@25
    move-result-object v2

    #@26
    .line 696
    .local v2, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_3

    #@2c
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@2e
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-wrap0(Lcom/android/internal/widget/AutoScrollHelper;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_3

    #@34
    .line 701
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@36
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get1(Lcom/android/internal/widget/AutoScrollHelper;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 702
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@3e
    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set1(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    #@41
    .line 703
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@43
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-wrap3(Lcom/android/internal/widget/AutoScrollHelper;)V

    #@46
    .line 706
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    #@49
    .line 708
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    #@4c
    move-result v0

    #@4d
    .line 709
    .local v0, "deltaX":I
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    #@50
    move-result v1

    #@51
    .line 710
    .local v1, "deltaY":I
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@53
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->scrollTargetBy(II)V

    #@56
    .line 713
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@58
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get4(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    #@5f
    .line 685
    return-void

    #@60
    .line 697
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    #@62
    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set0(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    #@65
    .line 698
    return-void
.end method
