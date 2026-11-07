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
.field final synthetic blacklist this$0:Lcom/android/internal/widget/AutoScrollHelper;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/AutoScrollHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 686
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fgetmAnimating(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 687
    return-void

    .line 690
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fgetmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fputmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;Z)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fgetmScroller(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 695
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fgetmScroller(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v0

    .line 696
    .local v0, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$mshouldAnimate(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_61

    .line 701
    :cond_35
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fgetmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 702
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fputmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;Z)V

    .line 703
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v1}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$mcancelTargetTouch(Lcom/android/internal/widget/AutoScrollHelper;)V

    .line 706
    :cond_47
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 708
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v1

    .line 709
    .local v1, "deltaX":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v2

    .line 710
    .local v2, "deltaY":I
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 713
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fgetmTarget(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 714
    return-void

    .line 697
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$fputmAnimating(Lcom/android/internal/widget/AutoScrollHelper;Z)V

    .line 698
    return-void
.end method
