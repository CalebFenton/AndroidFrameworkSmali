.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$SeekState;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$AnimationEvent;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private blacklist mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private blacklist mChildStartAndStopTimes:[J

.field private greylist-max-o mChildrenInitialized:Z

.field private greylist-max-o mDelayAnim:Landroid/animation/ValueAnimator;

.field private greylist-max-o mDependencyDirty:Z

.field private greylist-max-o mDuration:J

.field private final greylist-max-o mEndCanBeCalled:Z

.field private greylist-max-o mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstFrame:J

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastEventId:I

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRootNode:Landroid/animation/AnimatorSet$Node;

.field private greylist-max-o mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private greylist-max-o mSelfPulse:Z

.field private final greylist-max-o mShouldIgnoreEndWithoutStart:Z

.field private final greylist-max-o mShouldResetValuesAtStart:Z

.field private greylist-max-o mStartDelay:J

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mTotalDuration:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReversing(Landroid/animation/AnimatorSet;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartDelay(Landroid/animation/AnimatorSet;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDependencyDirty(Landroid/animation/AnimatorSet;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .registers 2

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 7

    .line 206
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 109
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 112
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 115
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_b2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 121
    new-instance v3, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {v3, v4}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 126
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 130
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 133
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 156
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 161
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 168
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 175
    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v2, p0, v5}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet-IA;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 178
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 185
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 194
    new-instance v2, Landroid/animation/AnimatorSet$1;

    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 207
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 212
    .local v2, "app":Landroid/app/Application;
    if-eqz v2, :cond_a2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_85

    goto :goto_a2

    .line 216
    :cond_85
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_92

    .line 217
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_94

    .line 219
    :cond_92
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 222
    :goto_94
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_a0

    move v3, v1

    goto :goto_a1

    :cond_a0
    move v3, v0

    .local v3, "isPreO":Z
    :goto_a1
    goto :goto_a5

    .line 213
    .end local v3    # "isPreO":Z
    :cond_a2
    :goto_a2
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 214
    const/4 v3, 0x1

    .line 224
    .restart local v3    # "isPreO":Z
    :goto_a5
    if-nez v3, :cond_a9

    move v4, v1

    goto :goto_aa

    :cond_a9
    move v4, v0

    :goto_aa
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    .line 225
    if-nez v3, :cond_af

    move v0, v1

    :cond_af
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    .line 226
    return-void

    :array_b2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .registers 4
    .param p1, "delay"    # J

    .line 1498
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1499
    return-void

    .line 1501
    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1502
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1503
    return-void
.end method

.method private blacklist addAnimationEndListener()V
    .registers 4

    .line 1419
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1420
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1422
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private greylist-max-o animateBasedOnPlayTime(JJZ)V
    .registers 12
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .line 841
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_67

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-ltz v2, :cond_67

    .line 846
    if-eqz p5, :cond_27

    .line 847
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    .line 848
    .local v2, "duration":J
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1f

    .line 854
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 855
    sub-long p1, v2, p1

    .line 856
    sub-long p3, v2, p3

    goto :goto_27

    .line 849
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot reverse AnimatorSet with infinite duration"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    .end local v2    # "duration":J
    :cond_27
    :goto_27
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->ensureChildStartAndEndTimes()[J

    move-result-object v0

    .line 860
    .local v0, "startEndTimes":[J
    invoke-direct {p0, p3, p4, v0}, Landroid/animation/AnimatorSet;->findNextIndex(J[J)I

    move-result v1

    .line 861
    .local v1, "index":I
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/AnimatorSet;->findNextIndex(J[J)I

    move-result v2

    .line 866
    .local v2, "endIndex":I
    cmp-long v3, p1, p3

    if-ltz v3, :cond_4a

    .line 867
    :goto_37
    if-ge v1, v2, :cond_5c

    .line 868
    aget-wide v3, v0, v1

    .line 869
    .local v3, "playTime":J
    cmp-long v5, p3, v3

    if-eqz v5, :cond_46

    .line 870
    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateSkipToEnds(JJ)V

    .line 871
    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateValuesInRange(JJ)V

    .line 872
    move-wide p3, v3

    .line 874
    :cond_46
    nop

    .end local v3    # "playTime":J
    add-int/lit8 v1, v1, 0x1

    .line 875
    goto :goto_37

    .line 877
    :cond_4a
    :goto_4a
    if-le v1, v2, :cond_5c

    .line 878
    add-int/lit8 v1, v1, -0x1

    .line 879
    aget-wide v3, v0, v1

    .line 880
    .restart local v3    # "playTime":J
    cmp-long v5, p3, v3

    if-eqz v5, :cond_5b

    .line 881
    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateSkipToEnds(JJ)V

    .line 882
    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateValuesInRange(JJ)V

    .line 883
    move-wide p3, v3

    .line 885
    .end local v3    # "playTime":J
    :cond_5b
    goto :goto_4a

    .line 887
    :cond_5c
    cmp-long v3, p1, p3

    if-eqz v3, :cond_66

    .line 888
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/animation/AnimatorSet;->animateSkipToEnds(JJ)V

    .line 889
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/animation/AnimatorSet;->animateValuesInRange(JJ)V

    .line 891
    :cond_66
    return-void

    .line 842
    .end local v0    # "startEndTimes":[J
    .end local v1    # "index":I
    .end local v2    # "endIndex":I
    :cond_67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should never be negative."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist callOnPlayingSet(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/animation/Animator;>;"
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 448
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 450
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_17

    .line 451
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 452
    .local v3, "animator":Landroid/animation/Animator;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 450
    .end local v3    # "animator":Landroid/animation/Animator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 454
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method private greylist-max-o createDependencyGraph()V
    .registers 9

    .line 1651
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v0, :cond_32

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "durationChanged":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 1655
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1656
    .local v2, "anim":Landroid/animation/Animator;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-wide v3, v3, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v2}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2c

    .line 1657
    const/4 v0, 0x1

    .line 1658
    goto :goto_2f

    .line 1654
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1661
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    if-nez v0, :cond_32

    .line 1662
    return-void

    .line 1666
    .end local v0    # "durationChanged":Z
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1668
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1669
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v1, :cond_4b

    .line 1670
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iput-boolean v0, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1669
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1672
    .end local v2    # "i":I
    :cond_4b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    const/4 v2, 0x1

    if-ge v0, v1, :cond_9e

    .line 1673
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1674
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v4, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v4, :cond_5c

    .line 1675
    goto :goto_9b

    .line 1678
    :cond_5c
    iput-boolean v2, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1679
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v4, :cond_63

    .line 1680
    goto :goto_9b

    .line 1684
    :cond_63
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1685
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1688
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1689
    .local v4, "siblingSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_74
    if-ge v5, v4, :cond_86

    .line 1690
    iget-object v6, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v6, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 1689
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 1694
    .end local v5    # "j":I
    :cond_86
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_87
    if-ge v5, v4, :cond_9b

    .line 1695
    iget-object v6, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1696
    .local v6, "sibling":Landroid/animation/AnimatorSet$Node;
    iget-object v7, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 1697
    iput-boolean v2, v6, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1694
    .end local v6    # "sibling":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 1672
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v4    # "siblingSize":I
    .end local v5    # "j":I
    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 1701
    .end local v0    # "i":I
    :cond_9e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9f
    if-ge v0, v1, :cond_b9

    .line 1702
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1703
    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_b6

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v4, :cond_b6

    .line 1704
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1701
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 1709
    .end local v0    # "i":I
    :cond_b9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1711
    .local v0, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1712
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1713
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v3, v0}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1715
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    .line 1716
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 1717
    return-void
.end method

.method private greylist-max-o endAnimation()V
    .registers 2

    .line 1456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/AnimatorSet;->endAnimation(Z)V

    .line 1457
    return-void
.end method

.method private blacklist endAnimation(Z)V
    .registers 8
    .param p1, "fromLastFrame"    # Z

    .line 1460
    sget-boolean v0, Landroid/animation/AnimatorSet;->sPostNotifyEndListenerEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    move v0, v1

    .line 1462
    .local v0, "postNotifyEndListener":Z
    :goto_16
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1463
    const/4 v4, -0x1

    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1464
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 1465
    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1466
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1467
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1470
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 1473
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {p0, v1, v0}, Landroid/animation/AnimatorSet;->notifyEndListenersFromEndAnimation(ZZ)V

    .line 1474
    return-void
.end method

.method private blacklist endAnimationAndNotifyEndListenersImmediately()V
    .registers 4

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->consumePendingEndListeners(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 434
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_1f

    .line 435
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->consumePendingEndListeners(Z)Z

    .line 434
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 438
    .end local v0    # "i":I
    :cond_1f
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 439
    return-void
.end method

.method private blacklist ensureChildStartAndEndTimes()[J
    .registers 4

    .line 1021
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mChildStartAndStopTimes:[J

    if-nez v0, :cond_17

    .line 1022
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 1023
    .local v0, "startAndEndTimes":Landroid/util/LongArray;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/animation/AnimatorSet;->getStartAndEndTimes(Landroid/util/LongArray;J)V

    .line 1024
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    .line 1025
    .local v1, "times":[J
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 1026
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mChildStartAndStopTimes:[J

    .line 1028
    .end local v0    # "startAndEndTimes":Landroid/util/LongArray;
    .end local v1    # "times":[J
    :cond_17
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mChildStartAndStopTimes:[J

    return-object v0
.end method

.method private greylist-max-o findLatestEventIdForTime(J)I
    .registers 11
    .param p1, "currentPlayTime"    # J

    .line 1431
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1432
    .local v0, "size":I
    iget v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1434
    .local v1, "latestId":I
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_38

    .line 1435
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    sub-long p1, v2, p1

    .line 1436
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    move v2, v0

    goto :goto_1b

    :cond_19
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :goto_1b
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1437
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_21
    if-ltz v2, :cond_37

    .line 1438
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1439
    .local v3, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_34

    .line 1440
    move v1, v2

    .line 1437
    .end local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .end local v2    # "j":I
    :cond_37
    goto :goto_5c

    .line 1444
    :cond_38
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_3c
    if-ge v2, v0, :cond_5c

    .line 1445
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1447
    .restart local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_59

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_59

    .line 1448
    move v1, v2

    .line 1444
    .end local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1452
    .end local v2    # "i":I
    :cond_5c
    :goto_5c
    return v1
.end method

.method private blacklist findNextIndex(J[J)I
    .registers 6
    .param p1, "playTime"    # J
    .param p3, "startEndTimes"    # [J

    .line 899
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 900
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 901
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_c

    .line 903
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_a
    add-int/lit8 v1, v0, 0x1

    .line 905
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_c
    return v1
.end method

.method private greylist-max-o findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1898
    .local p2, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1899
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1901
    return-void

    .line 1903
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1904
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1903
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1907
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private greylist-max-o forceToEnd()V
    .registers 5

    .line 458
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    if-eqz v0, :cond_8

    .line 459
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 460
    return-void

    .line 466
    :cond_8
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_17

    .line 467
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    goto :goto_31

    .line 469
    :cond_17
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    .line 470
    .local v0, "zeroScalePlayTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_24

    .line 472
    const-wide/32 v0, 0x7fffffff

    .line 474
    :cond_24
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 476
    .end local v0    # "zeroScalePlayTime":J
    :goto_31
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 478
    return-void
.end method

.method private greylist-max-o getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .registers 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 1931
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1932
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v0, :cond_1a

    .line 1933
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    move-object v0, v1

    .line 1934
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    :cond_1a
    return-object v0
.end method

.method private blacklist getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J
    .registers 6
    .param p1, "overallPlayTime"    # J
    .param p3, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 1332
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;Z)J
    .registers 7
    .param p1, "overallPlayTime"    # J
    .param p3, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p4, "inReverse"    # Z

    .line 1340
    if-eqz p4, :cond_b

    .line 1341
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 1342
    .end local p1    # "overallPlayTime":J
    .local v0, "overallPlayTime":J
    iget-wide p1, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 1344
    .end local v0    # "overallPlayTime":J
    .restart local p1    # "overallPlayTime":J
    :cond_b
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private greylist-max-o handleAnimationEvents(IIJ)V
    .registers 15
    .param p1, "startId"    # I
    .param p2, "latestId"    # I
    .param p3, "playTime"    # J

    .line 1268
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_59

    .line 1269
    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_13

    :cond_12
    move v0, p1

    :goto_13
    move p1, v0

    .line 1270
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_16
    if-lt v0, p2, :cond_58

    .line 1271
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1272
    .local v5, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1273
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x1

    if-ne v7, v3, :cond_46

    .line 1274
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1279
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1281
    :cond_34
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1282
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 1284
    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_55

    .line 1285
    :cond_46
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v8, :cond_55

    iget-boolean v7, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v7, :cond_55

    .line 1287
    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1270
    .end local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .end local v0    # "i":I
    :cond_58
    goto :goto_9c

    .line 1291
    :cond_59
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_5b
    if-gt v0, p2, :cond_9c

    .line 1292
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1293
    .restart local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1294
    .restart local v6    # "node":Landroid/animation/AnimatorSet$Node;
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v7, :cond_8a

    .line 1295
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1301
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1303
    :cond_7f
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1304
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 1305
    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_99

    .line 1306
    :cond_8a
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v3, :cond_99

    iget-boolean v7, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v7, :cond_99

    .line 1308
    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1291
    .end local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_99
    :goto_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 1312
    .end local v0    # "i":I
    :cond_9c
    :goto_9c
    return-void
.end method

.method private greylist-max-o initAnimation()V
    .registers 5

    .line 716
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_1f

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 718
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 719
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 717
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 722
    .end local v0    # "i":I
    :cond_1f
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 723
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 724
    return-void
.end method

.method private greylist-max-o initChildren()V
    .registers 2

    .line 1140
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 1142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 1144
    :cond_d
    return-void
.end method

.method private static greylist-max-o isEmptySet(Landroid/animation/AnimatorSet;)Z
    .registers 5
    .param p0, "set"    # Landroid/animation/AnimatorSet;

    .line 769
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_c

    .line 770
    return v1

    .line 772
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 773
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 774
    .local v2, "anim":Landroid/animation/Animator;
    instance-of v3, v2, Landroid/animation/AnimatorSet;

    if-nez v3, :cond_26

    .line 776
    return v1

    .line 778
    :cond_26
    move-object v3, v2

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-static {v3}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 779
    return v1

    .line 772
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 783
    .end local v0    # "i":I
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o printChildCount()V
    .registers 11

    .line 1624
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1625
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    const-string v1, "Current tree: "

    const-string v2, "AnimatorSet"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v1, 0x0

    .line 1628
    .local v1, "index":I
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_64

    .line 1629
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1630
    .local v3, "listSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1631
    .local v4, "builder":Ljava/lang/StringBuilder;
    :goto_27
    if-ge v1, v3, :cond_5c

    .line 1632
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1633
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    const/4 v6, 0x0

    .line 1634
    .local v6, "num":I
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v7, :cond_51

    .line 1635
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    iget-object v8, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_51

    .line 1636
    iget-object v8, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 1637
    .local v8, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v9, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v9, v5, :cond_4e

    .line 1638
    add-int/lit8 v6, v6, 0x1

    .line 1639
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    .end local v8    # "child":Landroid/animation/AnimatorSet$Node;
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 1643
    .end local v7    # "i":I
    :cond_51
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1631
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "num":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1646
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    .end local v3    # "listSize":I
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    goto :goto_18

    .line 1648
    :cond_64
    return-void
.end method

.method private greylist-max-o pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .registers 8
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p2, "animPlayTime"    # J

    .line 1322
    iget-boolean v0, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v0, :cond_1f

    .line 1323
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 1324
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_10
    move v1, v0

    .line 1325
    .end local v0    # "durationScale":F
    .local v1, "durationScale":F
    :goto_11
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    long-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1329
    .end local v1    # "durationScale":F
    :cond_1f
    return-void
.end method

.method private greylist-max-o removeAnimationCallback()V
    .registers 2

    .line 1490
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1491
    return-void

    .line 1493
    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1494
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1495
    return-void
.end method

.method private blacklist removeAnimationEndListener()V
    .registers 4

    .line 1425
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1426
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1428
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private greylist-max-o sortAnimationEvents()V
    .registers 13

    .line 1722
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1723
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, v1, :cond_3a

    .line 1724
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1725
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v6, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v6, v1, v2}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v5, v1, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v4, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v4, v1, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1729
    .end local v0    # "i":I
    :cond_3a
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v1, Landroid/animation/AnimatorSet$3;

    invoke-direct {v1, p0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1756
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1758
    .local v0, "eventSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4b
    if-ge v1, v0, :cond_100

    .line 1759
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1760
    .local v5, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v6, v3, :cond_fc

    .line 1762
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_67

    .line 1763
    const/4 v6, 0x1

    .local v6, "needToSwapStart":Z
    goto :goto_7d

    .line 1764
    .end local v6    # "needToSwapStart":Z
    :cond_67
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v10, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1765
    invoke-virtual {v10}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_f8

    .line 1767
    const/4 v6, 0x0

    .line 1773
    .restart local v6    # "needToSwapStart":Z
    :goto_7d
    move v7, v0

    .line 1774
    .local v7, "startEventId":I
    move v8, v0

    .line 1775
    .local v8, "startDelayEndId":I
    add-int/lit8 v9, v1, 0x1

    .local v9, "j":I
    :goto_81
    if-ge v9, v0, :cond_b4

    .line 1776
    if-ge v7, v0, :cond_88

    if-ge v8, v0, :cond_88

    .line 1777
    goto :goto_b4

    .line 1779
    :cond_88
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v11, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    if-ne v10, v11, :cond_b1

    .line 1780
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v10, :cond_a4

    .line 1782
    move v7, v9

    goto :goto_b1

    .line 1783
    :cond_a4
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v10, v4, :cond_b1

    .line 1784
    move v8, v9

    .line 1775
    :cond_b1
    :goto_b1
    add-int/lit8 v9, v9, 0x1

    goto :goto_81

    .line 1789
    .end local v9    # "j":I
    :cond_b4
    :goto_b4
    if-eqz v6, :cond_c7

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v7, v9, :cond_bf

    goto :goto_c7

    .line 1790
    :cond_bf
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1795
    :cond_c7
    :goto_c7
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_f0

    .line 1804
    if-eqz v6, :cond_e0

    .line 1805
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1806
    .local v9, "startEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1807
    add-int/lit8 v1, v1, 0x1

    .line 1810
    .end local v9    # "startEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_e0
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1811
    .local v9, "startDelayEndEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1812
    nop

    .end local v6    # "needToSwapStart":Z
    .end local v7    # "startEventId":I
    .end local v8    # "startDelayEndId":I
    .end local v9    # "startDelayEndEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    add-int/2addr v1, v3

    .line 1813
    goto :goto_fe

    .line 1796
    .restart local v6    # "needToSwapStart":Z
    .restart local v7    # "startEventId":I
    .restart local v8    # "startDelayEndId":I
    :cond_f0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1769
    .end local v6    # "needToSwapStart":Z
    .end local v7    # "startEventId":I
    .end local v8    # "startDelayEndId":I
    :cond_f8
    add-int/lit8 v1, v1, 0x1

    .line 1770
    goto/16 :goto_4b

    .line 1814
    :cond_fc
    add-int/lit8 v1, v1, 0x1

    .line 1816
    .end local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :goto_fe
    goto/16 :goto_4b

    .line 1818
    .end local v1    # "i":I
    :cond_100
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11d

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v1, :cond_115

    goto :goto_11d

    .line 1819
    :cond_115
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1824
    :cond_11d
    :goto_11d
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v5, v6, v2}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1825
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1826
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1828
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v1, :cond_168

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 1829
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eq v1, v4, :cond_168

    .line 1833
    return-void

    .line 1830
    :cond_168
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Something went wrong, the last event is not an end event"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o start(ZZ)V
    .registers 8
    .param p1, "inReverse"    # Z
    .param p2, "selfPulse"    # Z

    .line 727
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 730
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-ne p1, v0, :cond_13

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-ne p2, v0, :cond_13

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    if-eqz v0, :cond_13

    .line 732
    return-void

    .line 734
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 735
    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 737
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 739
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 740
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_3a

    .line 741
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 742
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iput-boolean v0, v3, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 743
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    .line 740
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 746
    .end local v2    # "i":I
    :cond_3a
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 747
    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_4e

    .line 748
    :cond_46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot reverse infinite AnimatorSet"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_4e
    :goto_4e
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 754
    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v0

    .line 755
    .local v0, "isEmptySet":Z
    if-nez v0, :cond_59

    .line 756
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    .line 759
    :cond_59
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    .line 760
    if-eqz v0, :cond_61

    .line 763
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 765
    :cond_61
    return-void

    .line 728
    .end local v0    # "isEmptySet":Z
    .end local v1    # "size":I
    :cond_62
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o startAnimation()V
    .registers 9

    .line 1349
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addAnimationEndListener()V

    .line 1352
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 1354
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_1b

    .line 1357
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1360
    :cond_1b
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_68

    .line 1361
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1362
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_68

    .line 1363
    :cond_2d
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_3b

    .line 1365
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 1366
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_68

    .line 1369
    :cond_3b
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_42
    if-ltz v2, :cond_68

    .line 1370
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v3, :cond_65

    .line 1371
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1375
    .local v4, "anim":Landroid/animation/Animator;
    invoke-virtual {v4}, Landroid/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1376
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 1369
    .end local v4    # "anim":Landroid/animation/Animator;
    :cond_65
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    .line 1383
    .end local v2    # "i":I
    :cond_68
    :goto_68
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v2, :cond_7a

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1387
    :cond_7a
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1388
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 1389
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v0

    .local v0, "playTime":J
    goto :goto_92

    .line 1391
    .end local v0    # "playTime":J
    :cond_90
    const-wide/16 v0, 0x0

    .line 1393
    .restart local v0    # "playTime":J
    :goto_92
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v2

    .line 1394
    .local v2, "toId":I
    const/4 v4, -0x1

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 1396
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 1398
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a3
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c1

    .line 1399
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1400
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v6, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v6, :cond_be

    .line 1401
    invoke-direct {p0, v0, v1, v5}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1398
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    .line 1407
    .end local v4    # "i":I
    :cond_c1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_c8
    if-ltz v4, :cond_de

    .line 1408
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-boolean v3, v3, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v3, :cond_db

    .line 1409
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1407
    :cond_db
    add-int/lit8 v4, v4, -0x1

    goto :goto_c8

    .line 1412
    .end local v4    # "i":I
    :cond_de
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1414
    .end local v0    # "playTime":J
    .end local v2    # "toId":I
    :cond_e0
    return-void
.end method

.method private greylist-max-o updateAnimatorsDuration()V
    .registers 7

    .line 787
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 789
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 790
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_23

    .line 791
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 794
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 790
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 797
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_23
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 798
    return-void
.end method

.method private greylist-max-o updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .registers 13
    .param p1, "parent"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1841
    .local p2, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_27

    .line 1842
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v0, :cond_26

    .line 1844
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 1845
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1846
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_23

    .line 1847
    iput-wide v1, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1848
    iput-wide v1, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1844
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1852
    .end local v0    # "i":I
    :cond_26
    return-void

    .line 1855
    :cond_27
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1857
    .local v0, "childrenSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v0, :cond_c2

    .line 1858
    iget-object v4, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 1859
    .local v4, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1861
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1862
    .local v5, "index":I
    if-ltz v5, :cond_8b

    .line 1864
    move v6, v5

    .local v6, "j":I
    :goto_4a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_6c

    .line 1865
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1866
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v7, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1867
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1864
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 1869
    .end local v6    # "j":I
    :cond_6c
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1870
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1871
    iput-object v8, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cycle found in AnimatorSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AnimatorSet"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    goto :goto_be

    .line 1876
    :cond_8b
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v1

    if-eqz v6, :cond_bb

    .line 1877
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_9e

    .line 1878
    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1879
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1880
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_bb

    .line 1882
    :cond_9e
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v8, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_ac

    .line 1883
    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1884
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1887
    :cond_ac
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_b4

    .line 1888
    move-wide v6, v1

    goto :goto_b9

    :cond_b4
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v8, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    add-long/2addr v6, v8

    :goto_b9
    iput-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1891
    :cond_bb
    :goto_bb
    invoke-direct {p0, v4, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1857
    .end local v4    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v5    # "index":I
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 1893
    .end local v3    # "i":I
    :cond_c2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1894
    return-void
.end method


# virtual methods
.method blacklist animateSkipToEnds(JJ)V
    .registers 22
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J

    .line 910
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 912
    cmp-long v1, p3, p1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    if-lez v1, :cond_82

    .line 913
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    .line 914
    iget-object v1, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    .local v1, "i":I
    :goto_16
    const-wide/16 v7, 0x0

    if-ltz v1, :cond_79

    .line 915
    iget-object v9, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 916
    .local v9, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v10, v9, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 917
    .local v10, "node":Landroid/animation/AnimatorSet$Node;
    iget v11, v9, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_76

    iget-wide v11, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v11, v11, v4

    if-eqz v11, :cond_76

    .line 920
    iget-object v11, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 921
    .local v11, "animator":Landroid/animation/Animator;
    iget-wide v12, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 922
    .local v12, "start":J
    iget-wide v14, v10, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v14, v14, v4

    if-nez v14, :cond_3f

    .line 923
    const-wide v14, 0x7fffffffffffffffL

    goto :goto_41

    :cond_3f
    iget-wide v14, v10, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 924
    .local v14, "end":J
    :goto_41
    cmp-long v16, p1, v12

    if-gtz v16, :cond_56

    cmp-long v16, v12, p3

    if-gez v16, :cond_56

    .line 925
    iget-wide v2, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {v11, v7, v8, v2, v3}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    .line 929
    iget-object v2, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_76

    .line 930
    :cond_56
    cmp-long v2, v12, p1

    if-gtz v2, :cond_76

    cmp-long v2, p1, v14

    if-gtz v2, :cond_76

    .line 931
    iget-wide v2, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v2, p1, v2

    iget-wide v7, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v7, p3, v7

    invoke-virtual {v11, v2, v3, v7, v8}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    .line 935
    iget-object v2, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 936
    iget-object v2, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    .end local v9    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v12    # "start":J
    .end local v14    # "end":J
    :cond_76
    :goto_76
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 941
    .end local v1    # "i":I
    :cond_79
    cmp-long v1, p1, v7

    if-gtz v1, :cond_fe

    .line 942
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->notifyEndListeners(Z)V

    goto/16 :goto_fe

    .line 945
    :cond_82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    .line 946
    iget-object v2, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 947
    .local v2, "eventsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8d
    if-ge v3, v2, :cond_f3

    .line 948
    iget-object v7, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 949
    .local v7, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v8, v7, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 950
    .local v8, "node":Landroid/animation/AnimatorSet$Node;
    iget v9, v7, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v9, v6, :cond_ee

    iget-wide v9, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v9, v9, v4

    if-eqz v9, :cond_ee

    .line 953
    iget-object v9, v8, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 954
    .local v9, "animator":Landroid/animation/Animator;
    iget-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 955
    .local v10, "start":J
    iget-wide v12, v8, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v12, v12, v4

    if-nez v12, :cond_b3

    .line 956
    const-wide v12, 0x7fffffffffffffffL

    goto :goto_b5

    :cond_b3
    iget-wide v12, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 957
    .local v12, "end":J
    :goto_b5
    cmp-long v14, p3, v12

    if-gez v14, :cond_ce

    cmp-long v14, v12, p1

    if-gtz v14, :cond_ce

    .line 958
    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v14, v12, v14

    iget-wide v4, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v4, p3, v4

    invoke-virtual {v9, v14, v15, v4, v5}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    .line 962
    iget-object v4, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 963
    :cond_ce
    cmp-long v4, v10, p1

    if-gtz v4, :cond_ee

    cmp-long v4, p1, v12

    if-gtz v4, :cond_ee

    .line 964
    iget-wide v4, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v4, p1, v4

    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v14, p3, v14

    invoke-virtual {v9, v4, v5, v14, v15}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    .line 968
    iget-object v4, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ee

    .line 969
    iget-object v4, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v7    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "animator":Landroid/animation/Animator;
    .end local v10    # "start":J
    .end local v12    # "end":J
    :cond_ee
    :goto_ee
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, -0x1

    goto :goto_8d

    .line 974
    .end local v3    # "i":I
    :cond_f3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_fe

    .line 975
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->notifyEndListeners(Z)V

    .line 978
    .end local v2    # "eventsSize":I
    :cond_fe
    :goto_fe
    return-void
.end method

.method blacklist animateValuesInRange(JJ)V
    .registers 22
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J

    .line 982
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 984
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    const/4 v4, 0x1

    if-ltz v3, :cond_2d

    cmp-long v3, p3, v1

    if-nez v3, :cond_15

    cmp-long v3, p1, v1

    if-lez v3, :cond_15

    goto :goto_2d

    .line 987
    :cond_15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    .line 988
    .local v5, "duration":J
    cmp-long v1, v5, v1

    if-ltz v1, :cond_31

    cmp-long v1, p3, v5

    if-gtz v1, :cond_29

    cmp-long v1, p3, v5

    if-nez v1, :cond_31

    cmp-long v1, p1, v5

    if-gez v1, :cond_31

    .line 992
    :cond_29
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    goto :goto_31

    .line 985
    .end local v5    # "duration":J
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    .line 996
    :cond_31
    :goto_31
    iget-object v1, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 997
    .local v1, "eventsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_97

    .line 998
    iget-object v3, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 999
    .local v3, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v5, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1000
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    iget v6, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v6, v4, :cond_91

    iget-wide v6, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_91

    .line 1003
    iget-object v6, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1004
    .local v6, "animator":Landroid/animation/Animator;
    iget-wide v10, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1005
    .local v10, "start":J
    iget-wide v12, v5, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v7, v12, v8

    if-nez v7, :cond_60

    .line 1006
    const-wide v12, 0x7fffffffffffffffL

    goto :goto_62

    :cond_60
    iget-wide v12, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1007
    .local v12, "end":J
    :goto_62
    cmp-long v7, v10, p1

    if-gez v7, :cond_6a

    cmp-long v7, p1, v12

    if-ltz v7, :cond_7a

    :cond_6a
    cmp-long v7, v10, p1

    if-nez v7, :cond_72

    cmp-long v7, p3, v10

    if-ltz v7, :cond_7a

    :cond_72
    cmp-long v7, v12, p1

    if-nez v7, :cond_8e

    cmp-long v7, p3, v12

    if-lez v7, :cond_8e

    .line 1011
    :cond_7a
    iget-wide v14, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v14, p1, v14

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v7, p3, v8

    .line 1013
    move-object/from16 v16, v5

    const-wide/16 v4, -0x1

    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    .local v16, "node":Landroid/animation/AnimatorSet$Node;
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1011
    invoke-virtual {v6, v14, v15, v4, v5}, Landroid/animation/Animator;->animateValuesInRange(JJ)V

    goto :goto_93

    .line 1007
    .end local v16    # "node":Landroid/animation/AnimatorSet$Node;
    .restart local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_8e
    move-object/from16 v16, v5

    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    .restart local v16    # "node":Landroid/animation/AnimatorSet$Node;
    goto :goto_93

    .line 1000
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v16    # "node":Landroid/animation/AnimatorSet$Node;
    .restart local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_91
    move-object/from16 v16, v5

    .line 997
    .end local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :goto_93
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_38

    .line 1018
    .end local v2    # "i":I
    :cond_97
    return-void
.end method

.method public greylist-max-o canReverse()Z
    .registers 5

    .line 1594
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist cancel()V
    .registers 3

    .line 419
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 422
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStartListenersCalled:Z

    if-eqz v0, :cond_26

    .line 423
    :cond_10
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    .line 424
    new-instance v0, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Landroid/animation/AnimatorSet;->callOnPlayingSet(Ljava/util/function/Consumer;)V

    .line 425
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimationAndNotifyEndListenersImmediately()V

    .line 428
    :cond_26
    return-void

    .line 420
    :cond_27
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 63
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/AnimatorSet;
    .registers 13

    .line 1507
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1516
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1517
    .local v1, "nodeCount":I
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 1518
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1519
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1520
    const/4 v5, -0x1

    iput v5, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1521
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 1522
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1523
    new-instance v3, Landroid/animation/AnimatorSet$SeekState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet-IA;)V

    iput-object v3, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 1524
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 1525
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mStartListenersCalled:Z

    .line 1526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 1527
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 1528
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 1529
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 1530
    new-instance v5, Landroid/animation/AnimatorSet$2;

    invoke-direct {v5, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1541
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 1542
    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1548
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1549
    .local v3, "clonesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;>;"
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_56
    if-ge v5, v1, :cond_7d

    .line 1550
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1551
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v6}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v7

    .line 1553
    .local v7, "nodeClone":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1554
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget-object v8, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    iget-object v8, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v9, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 1559
    .end local v5    # "n":I
    :cond_7d
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 1560
    iget-object v5, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/ValueAnimator;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 1564
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_90
    if-ge v5, v1, :cond_11d

    .line 1565
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1567
    .restart local v6    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 1568
    .restart local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v8, :cond_a6

    .line 1569
    move-object v8, v4

    goto :goto_ae

    :cond_a6
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    :goto_ae
    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1570
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_b6

    move v8, v2

    goto :goto_bc

    :cond_b6
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1571
    .local v8, "size":I
    :goto_bc
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_bd
    if-ge v9, v8, :cond_d3

    .line 1572
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1571
    add-int/lit8 v9, v9, 0x1

    goto :goto_bd

    .line 1574
    .end local v9    # "j":I
    :cond_d3
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v9, :cond_d9

    move v9, v2

    goto :goto_df

    :cond_d9
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1575
    .end local v8    # "size":I
    .local v9, "size":I
    :goto_df
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_e0
    if-ge v8, v9, :cond_f6

    .line 1576
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1575
    add-int/lit8 v8, v8, 0x1

    goto :goto_e0

    .line 1578
    .end local v8    # "j":I
    :cond_f6
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v8, :cond_fc

    move v8, v2

    goto :goto_102

    :cond_fc
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1579
    .end local v9    # "size":I
    .local v8, "size":I
    :goto_102
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_103
    if-ge v9, v8, :cond_119

    .line 1580
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1579
    add-int/lit8 v9, v9, 0x1

    goto :goto_103

    .line 1564
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    .end local v8    # "size":I
    .end local v9    # "j":I
    :cond_119
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_90

    .line 1583
    .end local v5    # "i":I
    :cond_11d
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .registers 3
    .param p1, "frameTime"    # J

    .line 1253
    return-void
.end method

.method blacklist completeEndAnimation(ZLjava/lang/String;)V
    .registers 6
    .param p1, "isReversing"    # Z
    .param p2, "notifyListenerTraceName"    # Ljava/lang/String;

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 1482
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1483
    invoke-super {p0, p1, p2}, Landroid/animation/Animator;->completeEndAnimation(ZLjava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationEndListener()V

    .line 1485
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 1486
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 1487
    return-void
.end method

.method public greylist-max-o doAnimationFrame(J)Z
    .registers 14
    .param p1, "frameTime"    # J

    .line 1154
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 1155
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 1157
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    .line 1158
    return v2

    .line 1163
    :cond_e
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_18

    .line 1164
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1168
    :cond_18
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    .line 1172
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1173
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 1174
    return v3

    .line 1175
    :cond_23
    iget-wide v7, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_36

    .line 1177
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1178
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1182
    :cond_36
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1183
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 1184
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_57

    .line 1185
    long-to-float v1, p1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_67

    .line 1187
    :cond_57
    long-to-float v1, p1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    add-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1190
    :goto_67
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1193
    :cond_6c
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v1, :cond_7e

    long-to-float v1, p1

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    long-to-float v4, v4

    iget-wide v5, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    long-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7e

    .line 1195
    return v3

    .line 1200
    :cond_7e
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v4, p1, v4

    long-to-float v1, v4

    div-float/2addr v1, v0

    float-to-long v4, v1

    .line 1201
    .local v4, "unscaledPlayTime":J
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1205
    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v1

    .line 1206
    .local v1, "latestId":I
    iget v6, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1208
    .local v6, "startId":I
    invoke-direct {p0, v6, v1, v4, v5}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 1210
    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1213
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_93
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b1

    .line 1214
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 1215
    .local v8, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v9, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v9, :cond_ae

    .line 1216
    invoke-direct {p0, v4, v5, v8}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v9

    invoke-direct {p0, v8, v9, v10}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1213
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    .line 1221
    .end local v7    # "i":I
    :cond_b1
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    .restart local v7    # "i":I
    :goto_b8
    if-ltz v7, :cond_ce

    .line 1222
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v8, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v8, :cond_cb

    .line 1223
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1221
    :cond_cb
    add-int/lit8 v7, v7, -0x1

    goto :goto_b8

    .line 1227
    .end local v7    # "i":I
    :cond_ce
    const/4 v7, 0x0

    .line 1228
    .local v7, "finished":Z
    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v8, :cond_f6

    .line 1229
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v2, :cond_e7

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v9, :cond_e7

    .line 1231
    const/4 v7, 0x1

    goto :goto_10d

    .line 1232
    :cond_e7
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10d

    iget v8, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_10d

    .line 1234
    const/4 v7, 0x1

    goto :goto_10d

    .line 1237
    :cond_f6
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10b

    iget v8, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v8, v9, :cond_10b

    move v8, v2

    goto :goto_10c

    :cond_10b
    move v8, v3

    :goto_10c
    move v7, v8

    .line 1240
    :cond_10d
    :goto_10d
    if-eqz v7, :cond_113

    .line 1241
    invoke-direct {p0, v2}, Landroid/animation/AnimatorSet;->endAnimation(Z)V

    .line 1242
    return v2

    .line 1244
    :cond_113
    return v3
.end method

.method public whitelist end()V
    .registers 7

    .line 488
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 491
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 492
    return-void

    .line 494
    :cond_11
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 497
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_67

    .line 499
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2c

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2e

    :cond_2c
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :goto_2e
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 500
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    sub-int/2addr v0, v2

    .local v0, "eventId":I
    :goto_33
    if-ltz v0, :cond_66

    .line 501
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 502
    .local v3, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v4, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 503
    .local v4, "anim":Landroid/animation/Animator;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-boolean v5, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v5, :cond_4e

    .line 504
    goto :goto_63

    .line 506
    :cond_4e
    iget v5, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v1, :cond_56

    .line 507
    invoke-virtual {v4}, Landroid/animation/Animator;->reverse()V

    goto :goto_63

    .line 508
    :cond_56
    iget v5, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v2, :cond_63

    .line 509
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 513
    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 500
    .end local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v4    # "anim":Landroid/animation/Animator;
    :cond_63
    :goto_63
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .end local v0    # "eventId":I
    :cond_66
    goto :goto_a3

    .line 517
    :cond_67
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/2addr v0, v2

    .restart local v0    # "eventId":I
    :goto_6a
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a3

    .line 520
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 521
    .local v2, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 522
    .local v3, "anim":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v4, :cond_8b

    .line 523
    goto :goto_a0

    .line 525
    :cond_8b
    iget v4, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v4, :cond_93

    .line 526
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_a0

    .line 527
    :cond_93
    iget v4, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v1, :cond_a0

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 531
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 517
    .end local v2    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v3    # "anim":Landroid/animation/Animator;
    :cond_a0
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 536
    .end local v0    # "eventId":I
    :cond_a3
    :goto_a3
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimationAndNotifyEndListenersImmediately()V

    .line 537
    return-void

    .line 489
    :cond_a7
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .registers 5

    .line 348
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    .line 349
    .local v0, "conf":I
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 350
    .local v1, "nodeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1f

    .line 351
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 353
    .end local v2    # "i":I
    :cond_1f
    return v0
.end method

.method public whitelist getChildAnimations()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 313
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_22

    .line 314
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 315
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_1f

    .line 316
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 319
    .end local v2    # "i":I
    :cond_22
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .registers 7

    .line 1123
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1124
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v0

    return-wide v0

    .line 1126
    :cond_f
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1128
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1130
    :cond_1a
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 1131
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_26

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_27

    :cond_26
    move v1, v0

    .line 1132
    .end local v0    # "durationScale":F
    .local v1, "durationScale":F
    :goto_27
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_34

    .line 1133
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    div-float/2addr v0, v1

    float-to-long v2, v0

    return-wide v2

    .line 1135
    :cond_34
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    div-float/2addr v0, v1

    float-to-long v2, v0

    return-wide v2
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 621
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method blacklist getStartAndEndTimes(Landroid/util/LongArray;J)V
    .registers 11
    .param p1, "times"    # Landroid/util/LongArray;
    .param p2, "offset"    # J

    .line 1033
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1034
    .local v0, "eventsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 1035
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1036
    .local v2, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v3, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2c

    .line 1039
    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v4, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v4, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/animation/Animator;->getStartAndEndTimes(Landroid/util/LongArray;J)V

    .line 1034
    .end local v2    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1042
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 568
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .registers 3

    .line 1925
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1926
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1927
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method greylist-max-o isInitialized()Z
    .registers 4

    .line 1046
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    if-eqz v0, :cond_6

    .line 1047
    const/4 v0, 0x1

    return v0

    .line 1050
    :cond_6
    const/4 v0, 0x1

    .line 1051
    .local v0, "allInitialized":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 1052
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1053
    const/4 v0, 0x0

    .line 1054
    goto :goto_25

    .line 1051
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1057
    .end local v1    # "i":I
    :cond_25
    :goto_25
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 1058
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    return v1
.end method

.method public whitelist isRunning()Z
    .registers 5

    .line 549
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 550
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0

    .line 552
    :cond_b
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 557
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public whitelist pause()V
    .registers 4

    .line 667
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 670
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 671
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 672
    if-nez v0, :cond_1d

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v1, :cond_1d

    .line 673
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 674
    new-instance v1, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v1}, Landroid/animation/AnimatorSet;->callOnPlayingSet(Ljava/util/function/Consumer;)V

    .line 676
    :cond_1d
    return-void

    .line 668
    .end local v0    # "previouslyPaused":Z
    :cond_1e
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .registers 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 404
    if-eqz p1, :cond_8

    .line 405
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    .line 407
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist playSequentially(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 293
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3a

    .line 295
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_3a

    .line 296
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 300
    .end local v0    # "i":I
    :cond_3a
    :goto_3a
    return-void
.end method

.method public varargs whitelist playSequentially([Landroid/animation/Animator;)V
    .registers 6
    .param p1, "items"    # [Landroid/animation/Animator;

    .line 273
    if-eqz p1, :cond_22

    .line 274
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 275
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_22

    .line 277
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_22

    .line 278
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 282
    .end local v0    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist playTogether(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 257
    .local v2, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_20

    .line 258
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_23

    .line 260
    :cond_20
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 262
    .end local v2    # "anim":Landroid/animation/Animator;
    :goto_23
    goto :goto_d

    .line 264
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_24
    return-void
.end method

.method public varargs whitelist playTogether([Landroid/animation/Animator;)V
    .registers 5
    .param p1, "items"    # [Landroid/animation/Animator;

    .line 240
    if-eqz p1, :cond_15

    .line 241
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 242
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 243
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 246
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4
    .param p1, "frameTime"    # J

    .line 1257
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public whitelist resume()V
    .registers 6

    .line 680
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 683
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 684
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 685
    if-eqz v0, :cond_24

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-nez v1, :cond_24

    .line 686
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1c

    .line 687
    invoke-direct {p0, v3, v4}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 689
    :cond_1c
    new-instance v1, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v1}, Landroid/animation/AnimatorSet;->callOnPlayingSet(Ljava/util/function/Consumer;)V

    .line 691
    :cond_24
    return-void

    .line 681
    .end local v0    # "previouslyPaused":Z
    :cond_25
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .registers 2

    .line 1608
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 1609
    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .registers 12
    .param p1, "playTime"    # J

    .line 1080
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    goto :goto_17

    .line 1082
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    move-wide v4, p1

    goto :goto_87

    :cond_2d
    :goto_2d
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_86

    .line 1092
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 1094
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v6

    .line 1095
    .local v6, "lastPlayTime":J
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1096
    :cond_48
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_5b

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_5b

    .line 1097
    :cond_53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_5b
    :goto_5b
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v2

    if-nez v2, :cond_77

    .line 1101
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 1102
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 1104
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 1105
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v2, v0, v1, v3}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 1108
    :cond_77
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 1109
    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    move-object v3, p0

    move-wide v4, p1

    .end local p1    # "playTime":J
    .local v4, "playTime":J
    invoke-direct/range {v3 .. v8}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    .line 1110
    return-void

    .line 1086
    .end local v4    # "playTime":J
    .end local v6    # "lastPlayTime":J
    .restart local p1    # "playTime":J
    :cond_86
    move-wide v4, p1

    .line 1088
    .end local p1    # "playTime":J
    .restart local v4    # "playTime":J
    :goto_87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Error: Play time should always be in between 0 and duration."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/AnimatorSet;
    .registers 5
    .param p1, "duration"    # J

    .line 634
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 639
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 640
    return-object p0

    .line 635
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 367
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 368
    return-void
.end method

.method public whitelist setStartDelay(J)V
    .registers 12
    .param p1, "startDelay"    # J

    .line 581
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    .line 582
    const-string v2, "AnimatorSet"

    const-string v3, "Start delay should always be non-negative"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-wide/16 p1, 0x0

    .line 585
    :cond_f
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v2, p1, v2

    .line 586
    .local v2, "delta":J
    cmp-long v0, v2, v0

    if-nez v0, :cond_18

    .line 587
    return-void

    .line 589
    :cond_18
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 590
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v0, :cond_61

    .line 592
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    const-wide/16 v4, -0x1

    if-ge v1, v0, :cond_56

    .line 594
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 595
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v6, v7, :cond_3a

    .line 596
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_53

    .line 598
    :cond_3a
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_42

    .line 599
    move-wide v7, v4

    goto :goto_45

    :cond_42
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v7, v2

    :goto_45
    iput-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 600
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_4e

    .line 601
    goto :goto_51

    :cond_4e
    iget-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v4, v2

    :goto_51
    iput-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 593
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 605
    .end local v1    # "i":I
    :cond_56
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_61

    .line 606
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 609
    .end local v0    # "size":I
    :cond_61
    return-void
.end method

.method public whitelist setTarget(Ljava/lang/Object;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 333
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 334
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 335
    .local v3, "animation":Landroid/animation/Animator;
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1e

    .line 336
    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_28

    .line 337
    :cond_1e
    instance-of v4, v3, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_28

    .line 338
    move-object v4, v3

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 332
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "animation":Landroid/animation/Animator;
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 341
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method public whitelist setupEndValues()V
    .registers 5

    .line 656
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 657
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 658
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 659
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v3, :cond_1a

    .line 660
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    .line 657
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 663
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public whitelist setupStartValues()V
    .registers 5

    .line 645
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 646
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 647
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 648
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v3, :cond_1a

    .line 649
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    .line 646
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 652
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public greylist-max-o shouldPlayTogether()Z
    .registers 4

    .line 1917
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1918
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1920
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    return v1
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 6
    .param p1, "inReverse"    # Z

    .line 803
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 804
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 809
    if-eqz p1, :cond_29

    .line 810
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_28

    .line 811
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 812
    .local v2, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v3, v1, :cond_25

    .line 813
    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 810
    .end local v2    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .end local v0    # "i":I
    :cond_28
    goto :goto_4a

    .line 817
    :cond_29
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2a
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 818
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 819
    .local v1, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_47

    .line 820
    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 817
    .end local v1    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 824
    .end local v0    # "i":I
    :cond_4a
    :goto_4a
    return-void
.end method

.method public whitelist start()V
    .registers 3

    .line 707
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 708
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 3
    .param p1, "inReverse"    # Z

    .line 712
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 713
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatorSet@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1615
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_53

    .line 1616
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1617
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1615
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1619
    .end local v2    # "i":I
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
