.class final Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "BoundsAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppTransitionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BoundsAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/BoundsAnimationController;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@2
    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/BoundsAnimationController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    #@3
    return-void
.end method

.method private animationFinished()V
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@2
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get1(Lcom/android/server/wm/BoundsAnimationController;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 68
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@a
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@11
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@13
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->animationFinished()V

    #@3
    .line 60
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->animationFinished()V

    #@3
    .line 63
    return-void
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 78
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@3
    invoke-static {v2}, Lcom/android/server/wm/BoundsAnimationController;->-get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 79
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@f
    invoke-static {v2}, Lcom/android/server/wm/BoundsAnimationController;->-get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    #@19
    .line 80
    .local v0, "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->onAnimationEnd(Landroid/animation/Animator;)V

    #@1d
    .line 78
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 77
    .end local v0    # "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    :cond_0
    return-void
.end method
