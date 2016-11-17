.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimationController"
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final MSG_FRAME_SHOWN_STATE_CHANGED:I = 0x1

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"


# instance fields
.field private final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$3:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "this$3"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$3:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@2
    .line 829
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 831
    const-string/jumbo v1, "alpha"

    #@8
    const/4 v4, 0x0

    #@9
    const/16 v5, 0xff

    #@b
    .line 830
    filled-new-array {v4, v5}, [I

    #@e
    move-result-object v4

    #@f
    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@15
    .line 833
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@17
    const/high16 v1, 0x40200000    # 2.5f

    #@19
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@1c
    .line 834
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v1

    #@20
    .line 835
    const v4, 0x10e0002

    #@23
    .line 834
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@26
    move-result v1

    #@27
    int-to-long v2, v1

    #@28
    .line 837
    .local v2, "longAnimationDuration":J
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@2a
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@2d
    .line 838
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@2f
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@32
    .line 828
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 848
    iget v3, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 847
    :goto_0
    return-void

    #@8
    .line 850
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@a
    if-ne v3, v0, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    .line 851
    .local v1, "shown":Z
    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@f
    if-ne v3, v0, :cond_1

    #@11
    .line 853
    .local v0, "animate":Z
    :goto_2
    if-eqz v0, :cond_4

    #@13
    .line 854
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@15
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 855
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@1d
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    #@20
    goto :goto_0

    #@21
    .line 850
    .end local v0    # "animate":Z
    .end local v1    # "shown":Z
    :cond_0
    const/4 v1, 0x0

    #@22
    .restart local v1    # "shown":Z
    goto :goto_1

    #@23
    :cond_1
    move v0, v2

    #@24
    .line 851
    goto :goto_2

    #@25
    .line 857
    .restart local v0    # "animate":Z
    :cond_2
    if-eqz v1, :cond_3

    #@27
    .line 858
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@29
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    #@2c
    goto :goto_0

    #@2d
    .line 860
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@2f
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    #@32
    goto :goto_0

    #@33
    .line 864
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    #@35
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    #@38
    .line 865
    if-eqz v1, :cond_5

    #@3a
    .line 866
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$3:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@3c
    const/16 v3, 0xff

    #@3e
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    #@41
    goto :goto_0

    #@42
    .line 868
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$3:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #@44
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    #@47
    goto :goto_0

    #@48
    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onFrameShownStateChanged(ZZ)V
    .locals 3
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 843
    if-eqz p1, :cond_1

    #@4
    move v2, v1

    #@5
    :goto_0
    if-eqz p2, :cond_0

    #@7
    move v0, v1

    #@8
    .line 842
    :cond_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 841
    return-void

    #@10
    :cond_1
    move v2, v0

    #@11
    .line 843
    goto :goto_0
.end method
