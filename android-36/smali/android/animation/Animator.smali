.class public abstract Landroid/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Animator$AnimatorCaller;,
        Landroid/animation/Animator$AnimatorConstantState;,
        Landroid/animation/Animator$AnimatorPauseListener;,
        Landroid/animation/Animator$AnimatorListener;
    }
.end annotation


# static fields
.field public static final whitelist DURATION_INFINITE:J = -0x1L

.field private static blacklist sBackgroundPauseDelay:J

.field static blacklist sPostNotifyEndListenerEnabled:Z


# instance fields
.field private blacklist mCachedList:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mConstantState:Landroid/animation/Animator$AnimatorConstantState;

.field greylist-max-o mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPaused:Z

.field private blacklist mPendingEndCallback:Ljava/lang/Runnable;

.field blacklist mStartListenersCalled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$vqRTc3pKTROGRt8AIq6jHFDWrEs(Landroid/animation/Animator;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/animation/Animator;->lambda$notifyEndListenersFromEndAnimation$0(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConstantState(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    const-wide/16 v0, 0x3e8

    sput-wide v0, Landroid/animation/Animator;->sBackgroundPauseDelay:J

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 63
    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 95
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Landroid/animation/Animator;->mCachedList:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    iput-boolean v0, p0, Landroid/animation/Animator;->mStartListenersCalled:Z

    return-void
.end method

.method public static blacklist getBackgroundPauseDelay()J
    .registers 2

    .line 123
    sget-wide v0, Landroid/animation/Animator;->sBackgroundPauseDelay:J

    return-wide v0
.end method

.method public static blacklist isPostNotifyEndListenerEnabled()Z
    .registers 1

    .line 154
    sget-boolean v0, Landroid/animation/Animator;->sPostNotifyEndListenerEnabled:Z

    return v0
.end method

.method private synthetic blacklist lambda$notifyEndListenersFromEndAnimation$0(Z)V
    .registers 3
    .param p1, "isReversing"    # Z

    .line 692
    const-string/jumbo v0, "postNotifyAnimEnd"

    invoke-virtual {p0, p1, v0}, Landroid/animation/Animator;->completeEndAnimation(ZLjava/lang/String;)V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPendingEndCallback:Ljava/lang/Runnable;

    .line 694
    return-void
.end method

.method public static blacklist setAnimatorPausingEnabled(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .line 137
    invoke-static {p0}, Landroid/animation/AnimationHandler;->setAnimatorPausingEnabled(Z)V

    .line 138
    xor-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroid/animation/AnimationHandler;->setOverrideAnimatorPausingSystemProperty(Z)V

    .line 139
    return-void
.end method

.method public static blacklist setBackgroundPauseDelay(J)V
    .registers 2
    .param p0, "value"    # J

    .line 112
    sput-wide p0, Landroid/animation/Animator;->sBackgroundPauseDelay:J

    .line 113
    return-void
.end method

.method public static blacklist setPostNotifyEndListenerEnabled(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 146
    sput-boolean p0, Landroid/animation/Animator;->sPostNotifyEndListenerEnabled:Z

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 344
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 347
    :cond_b
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public whitelist addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 383
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 386
    :cond_b
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method blacklist animateSkipToEnds(JJ)V
    .registers 5
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J

    .line 609
    return-void
.end method

.method blacklist animateValuesInRange(JJ)V
    .registers 5
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J

    .line 603
    return-void
.end method

.method public greylist-max-o appendChangingConfigurations(I)V
    .registers 3
    .param p1, "configs"    # I

    .line 456
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 457
    return-void
.end method

.method blacklist callOnList(Ljava/util/ArrayList;Landroid/animation/Animator$AnimatorCaller;Ljava/lang/Object;Z)V
    .registers 10
    .param p4, "isReverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Landroid/animation/Animator$AnimatorCaller<",
            "TT;TA;>;TA;Z)V"
        }
    .end annotation

    .line 731
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "call":Landroid/animation/Animator$AnimatorCaller;, "Landroid/animation/Animator$AnimatorCaller<TT;TA;>;"
    .local p3, "animator":Ljava/lang/Object;, "TA;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 732
    .local v0, "size":I
    :goto_8
    if-lez v0, :cond_2f

    .line 734
    iget-object v1, p0, Landroid/animation/Animator;->mCachedList:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 735
    .local v1, "array":[Ljava/lang/Object;
    if-eqz v1, :cond_18

    array-length v3, v1

    if-ge v3, v0, :cond_1a

    .line 736
    :cond_18
    new-array v1, v0, [Ljava/lang/Object;

    .line 738
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 739
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v0, :cond_2a

    .line 741
    aget-object v4, v1, v3

    .line 742
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4, p3, p4}, Landroid/animation/Animator$AnimatorCaller;->call(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 743
    aput-object v2, v1, v3

    .line 739
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 746
    .end local v3    # "i":I
    :cond_2a
    iget-object v3, p0, Landroid/animation/Animator;->mCachedList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 748
    .end local v1    # "array":[Ljava/lang/Object;
    :cond_2f
    return-void
.end method

.method public greylist-max-o canReverse()Z
    .registers 2

    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist cancel()V
    .registers 1

    .line 183
    return-void
.end method

.method public whitelist clone()Landroid/animation/Animator;
    .registers 4

    .line 480
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 481
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 484
    :cond_13
    iget-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 487
    :cond_20
    iget-object v1, v0, Landroid/animation/Animator;->mCachedList:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 488
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/Animator;->mStartListenersCalled:Z
    :try_end_29
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 489
    return-object v0

    .line 490
    .end local v0    # "anim":Landroid/animation/Animator;
    :catch_2a
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method blacklist completeEndAnimation(ZLjava/lang/String;)V
    .registers 8
    .param p1, "isReversing"    # Z
    .param p2, "notifyListenerTraceName"    # Ljava/lang/String;

    .line 703
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_e

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 704
    .local v0, "useTrace":Z
    :goto_f
    if-eqz v0, :cond_33

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 706
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 708
    :cond_33
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->notifyEndListeners(Z)V

    .line 709
    if-eqz v0, :cond_3b

    .line 710
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    :cond_3b
    return-void
.end method

.method blacklist consumePendingEndListeners(Z)Z
    .registers 5
    .param p1, "notifyListeners"    # Z

    .line 678
    iget-object v0, p0, Landroid/animation/Animator;->mPendingEndCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 679
    return v1

    .line 681
    :cond_6
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    iget-object v2, p0, Landroid/animation/Animator;->mPendingEndCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/animation/AnimationHandler;->removePendingEndAnimationCallback(Ljava/lang/Runnable;)V

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPendingEndCallback:Ljava/lang/Runnable;

    .line 683
    if-eqz p1, :cond_17

    .line 684
    invoke-virtual {p0, v1}, Landroid/animation/Animator;->notifyEndListeners(Z)V

    .line 686
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o createConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Landroid/animation/Animator$AnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/Animator$AnimatorConstantState;-><init>(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public whitelist end()V
    .registers 1

    .line 194
    return-void
.end method

.method public greylist-max-o getChangingConfigurations()I
    .registers 2

    .line 432
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return v0
.end method

.method public abstract whitelist getDuration()J
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method blacklist getStartAndEndTimes(Landroid/util/LongArray;J)V
    .registers 11
    .param p1, "times"    # Landroid/util/LongArray;
    .param p2, "offset"    # J

    .line 616
    invoke-virtual {p0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 617
    .local v0, "startTime":J
    invoke-virtual {p1, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    move-result v2

    if-gez v2, :cond_e

    .line 618
    invoke-virtual {p1, v0, v1}, Landroid/util/LongArray;->add(J)V

    .line 620
    :cond_e
    invoke-virtual {p0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v2

    .line 621
    .local v2, "duration":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_23

    .line 622
    add-long v4, v2, p2

    .line 623
    .local v4, "endTime":J
    invoke-virtual {p1, v4, v5}, Landroid/util/LongArray;->indexOf(J)I

    move-result v6

    if-gez v6, :cond_23

    .line 624
    invoke-virtual {p1, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 627
    .end local v4    # "endTime":J
    :cond_23
    return-void
.end method

.method public abstract whitelist getStartDelay()J
.end method

.method public whitelist getTotalDuration()J
    .registers 6

    .line 283
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    .line 284
    .local v0, "duration":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 285
    return-wide v2

    .line 287
    :cond_b
    invoke-virtual {p0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method greylist-max-o isInitialized()Z
    .registers 2

    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPaused()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    return v0
.end method

.method public abstract whitelist isRunning()Z
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 334
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method blacklist notifyEndListeners(Z)V
    .registers 4
    .param p1, "isReversing"    # Z

    .line 662
    iget-boolean v0, p0, Landroid/animation/Animator;->mStartListenersCalled:Z

    .line 663
    .local v0, "startListenersCalled":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/Animator;->mStartListenersCalled:Z

    .line 664
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 665
    sget-object v1, Landroid/animation/Animator$AnimatorCaller;->ON_END:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v1, p1}, Landroid/animation/Animator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 667
    :cond_10
    return-void
.end method

.method blacklist notifyEndListenersFromEndAnimation(ZZ)V
    .registers 5
    .param p1, "isReversing"    # Z
    .param p2, "postNotifyEndListener"    # Z

    .line 690
    if-eqz p2, :cond_13

    .line 691
    new-instance v0, Landroid/animation/Animator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/animation/Animator$$ExternalSyntheticLambda0;-><init>(Landroid/animation/Animator;Z)V

    iput-object v0, p0, Landroid/animation/Animator;->mPendingEndCallback:Ljava/lang/Runnable;

    .line 695
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/Animator;->mPendingEndCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->postEndAnimationCallback(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 697
    :cond_13
    const-string/jumbo v0, "notifyAnimEnd"

    invoke-virtual {p0, p1, v0}, Landroid/animation/Animator;->completeEndAnimation(ZLjava/lang/String;)V

    .line 699
    :goto_19
    return-void
.end method

.method blacklist notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V
    .registers 4
    .param p2, "isReverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    .line 640
    .local p1, "notification":Landroid/animation/Animator$AnimatorCaller;, "Landroid/animation/Animator$AnimatorCaller<Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;>;"
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p0, p2}, Landroid/animation/Animator;->callOnList(Ljava/util/ArrayList;Landroid/animation/Animator$AnimatorCaller;Ljava/lang/Object;Z)V

    .line 641
    return-void
.end method

.method blacklist notifyPauseListeners(Landroid/animation/Animator$AnimatorCaller;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 650
    .local p1, "notification":Landroid/animation/Animator$AnimatorCaller;, "Landroid/animation/Animator$AnimatorCaller<Landroid/animation/Animator$AnimatorPauseListener;Landroid/animation/Animator;>;"
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p0, v1}, Landroid/animation/Animator;->callOnList(Ljava/util/ArrayList;Landroid/animation/Animator$AnimatorCaller;Ljava/lang/Object;Z)V

    .line 651
    return-void
.end method

.method blacklist notifyStartListeners(Z)V
    .registers 4
    .param p1, "isReversing"    # Z

    .line 654
    iget-boolean v0, p0, Landroid/animation/Animator;->mStartListenersCalled:Z

    .line 655
    .local v0, "startListenersCalled":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/Animator;->mStartListenersCalled:Z

    .line 656
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    .line 657
    sget-object v1, Landroid/animation/Animator$AnimatorCaller;->ON_START:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v1, p1}, Landroid/animation/Animator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 659
    :cond_10
    return-void
.end method

.method public whitelist pause()V
    .registers 2

    .line 209
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/animation/Animator;->mStartListenersCalled:Z

    if-eqz v0, :cond_16

    :cond_a
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-nez v0, :cond_16

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 211
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_PAUSE:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->notifyPauseListeners(Landroid/animation/Animator$AnimatorCaller;)V

    .line 213
    :cond_16
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4
    .param p1, "frameTime"    # J

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeAllListeners()V
    .registers 3

    .line 411
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 412
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 415
    :cond_c
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 416
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 419
    :cond_17
    return-void
.end method

.method public whitelist removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 357
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 358
    return-void

    .line 360
    :cond_5
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 364
    :cond_15
    return-void
.end method

.method public whitelist removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 396
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 397
    return-void

    .line 399
    :cond_5
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 403
    :cond_15
    return-void
.end method

.method public whitelist resume()V
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v0, :cond_c

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 228
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_RESUME:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->notifyPauseListeners(Landroid/animation/Animator$AnimatorCaller;)V

    .line 230
    :cond_c
    return-void
.end method

.method public greylist-max-r reverse()V
    .registers 3

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reverse is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setAllowRunningAsynchronously(Z)V
    .registers 2
    .param p1, "mayRunAsync"    # Z

    .line 876
    return-void
.end method

.method public greylist-max-o setChangingConfigurations(I)V
    .registers 2
    .param p1, "configs"    # I

    .line 446
    iput p1, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 447
    return-void
.end method

.method public abstract whitelist setDuration(J)Landroid/animation/Animator;
.end method

.method public abstract whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
.end method

.method public abstract whitelist setStartDelay(J)V
.end method

.method public whitelist setTarget(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 532
    return-void
.end method

.method public whitelist setupEndValues()V
    .registers 1

    .line 517
    return-void
.end method

.method public whitelist setupStartValues()V
    .registers 1

    .line 505
    return-void
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 2
    .param p1, "inReverse"    # Z

    .line 584
    return-void
.end method

.method public whitelist start()V
    .registers 1

    .line 171
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 2
    .param p1, "inReverse"    # Z

    .line 569
    if-eqz p1, :cond_6

    .line 570
    invoke-virtual {p0}, Landroid/animation/Animator;->reverse()V

    goto :goto_9

    .line 572
    :cond_6
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 574
    :goto_9
    return-void
.end method
