.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field greylist-max-o fireActionPerformed:Z

.field greylist-max-o resetMultipleStrokes:Z

.field final synthetic blacklist this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor blacklist <init>(Landroid/gesture/GestureOverlayView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 741
    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 746
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmIsFadingOut(Landroid/gesture/GestureOverlayView;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_8f

    .line 747
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    .line 748
    .local v5, "now":J
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadingStart(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v7

    sub-long v7, v5, v7

    .line 750
    .local v7, "duration":J
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadeDuration(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_4f

    .line 751
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v0, :cond_2c

    .line 752
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$mfireOnGesturePerformed(Landroid/gesture/GestureOverlayView;)V

    .line 755
    :cond_2c
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmPreviousWasGesturing(Landroid/gesture/GestureOverlayView;Z)V

    .line 756
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmIsFadingOut(Landroid/gesture/GestureOverlayView;Z)V

    .line 757
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V

    .line 758
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmPath(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 759
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmCurrentGesture(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    .line 760
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_8e

    .line 762
    :cond_4f
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V

    .line 763
    long-to-float v0, v7

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadeDuration(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 764
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 763
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 765
    .local v0, "interpolatedTime":F
    iget-object v2, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmInterpolator(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingAlpha(Landroid/gesture/GestureOverlayView;F)V

    .line 766
    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v2, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadingAlpha(Landroid/gesture/GestureOverlayView;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V

    .line 767
    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    .end local v0    # "interpolatedTime":F
    .end local v5    # "now":J
    .end local v7    # "duration":J
    :goto_8e
    goto :goto_bb

    :cond_8f
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v0, :cond_99

    .line 770
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmResetGesture(Landroid/gesture/GestureOverlayView;Z)V

    goto :goto_bb

    .line 772
    :cond_99
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$mfireOnGesturePerformed(Landroid/gesture/GestureOverlayView;)V

    .line 774
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V

    .line 775
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmPath(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 776
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmCurrentGesture(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    .line 777
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmPreviousWasGesturing(Landroid/gesture/GestureOverlayView;Z)V

    .line 778
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V

    .line 781
    :goto_bb
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 782
    return-void
.end method
