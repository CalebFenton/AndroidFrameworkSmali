.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecAnimationBridge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$UpdateHandler;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SPEC:I = 0x1


# instance fields
.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadId:J

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTransformationAnimator:Landroid/animation/ValueAnimator;

.field private final mWindowManager:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    .locals 0
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;Z)V
    .locals 0
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecInternal(Landroid/view/MagnificationSpec;Z)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 736
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@7
    move-result-object v5

    #@8
    iput-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@a
    .line 748
    iput-boolean v8, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    #@c
    .line 751
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    #@e
    .line 752
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@11
    move-result-object v3

    #@12
    .line 753
    .local v3, "mainLooper":Landroid/os/Looper;
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    #@19
    move-result-wide v6

    #@1a
    iput-wide v6, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mMainThreadId:J

    #@1c
    .line 755
    new-instance v5, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$UpdateHandler;

    #@1e
    invoke-direct {v5, p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$UpdateHandler;-><init>(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/content/Context;)V

    #@21
    iput-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mHandler:Landroid/os/Handler;

    #@23
    .line 756
    const-class v5, Landroid/view/WindowManagerInternal;

    #@25
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/view/WindowManagerInternal;

    #@2b
    iput-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@2d
    .line 758
    new-instance v4, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;

    #@2f
    invoke-direct {v4}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;-><init>()V

    #@32
    .line 759
    .local v4, "property":Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;

    #@34
    const/4 v5, 0x0

    #@35
    invoke-direct {v2, v5}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;-><init>(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;)V

    #@38
    .line 760
    .local v2, "evaluator":Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b
    move-result-object v5

    #@3c
    .line 761
    const v6, 0x10e0002

    #@3f
    .line 760
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    #@42
    move-result v5

    #@43
    int-to-long v0, v5

    #@44
    .line 762
    .local v0, "animationDuration":J
    const/4 v5, 0x1

    #@45
    new-array v5, v5, [Landroid/view/MagnificationSpec;

    #@47
    .line 763
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@49
    aput-object v6, v5, v8

    #@4b
    .line 762
    invoke-static {p0, v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@4e
    move-result-object v5

    #@4f
    iput-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@51
    .line 764
    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@53
    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@56
    .line 765
    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@58
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    #@5a
    const/high16 v7, 0x40200000    # 2.5f

    #@5c
    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@5f
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@62
    .line 750
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "toSpec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    const/4 v2, 0x1

    #@b
    aput-object p1, v1, v2

    #@d
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@10
    .line 817
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@15
    .line 815
    return-void
.end method

.method private setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 826
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    #@9
    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@b
    invoke-virtual {v0, p1}, Landroid/view/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    #@e
    .line 820
    :cond_0
    return-void
.end method

.method private updateSentSpecInternal(Landroid/view/MagnificationSpec;Z)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 799
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@a
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    #@d
    .line 803
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v2

    #@10
    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@12
    invoke-virtual {v1, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    const/4 v0, 0x0

    #@19
    .line 805
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    #@1b
    .line 806
    if-eqz p2, :cond_3

    #@1d
    .line 807
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_1
    :goto_1
    monitor-exit v2

    #@21
    .line 797
    return-void

    #@22
    .line 804
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x1

    #@23
    .restart local v0    # "changed":Z
    goto :goto_0

    #@24
    .line 809
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_1

    #@28
    .line 803
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 774
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 775
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    #@9
    .line 776
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 777
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@f
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    #@12
    .line 778
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@14
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@16
    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 772
    return-void

    #@1b
    .line 773
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public updateSentSpec(Landroid/view/MagnificationSpec;Z)V
    .locals 8
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 785
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    #@9
    move-result-wide v4

    #@a
    iget-wide v6, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mMainThreadId:J

    #@c
    cmp-long v0, v4, v6

    #@e
    if-nez v0, :cond_0

    #@10
    .line 787
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecInternal(Landroid/view/MagnificationSpec;Z)V

    #@13
    .line 784
    :goto_0
    return-void

    #@14
    .line 789
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mHandler:Landroid/os/Handler;

    #@16
    .line 790
    if-eqz p2, :cond_1

    #@18
    move v0, v1

    #@19
    .line 789
    :goto_1
    invoke-virtual {v3, v1, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@20
    goto :goto_0

    #@21
    :cond_1
    move v0, v2

    #@22
    .line 790
    goto :goto_1
.end method
