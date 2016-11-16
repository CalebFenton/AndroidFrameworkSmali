.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDependencyDirty:Z

.field private mDuration:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReversible:Z

.field private mRootNode:Landroid/animation/AnimatorSet$Node;

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private final mShouldIgnoreEndWithoutStart:Z

.field private mStartDelay:J

.field private mStarted:Z

.field private mTerminated:Z

.field private mTotalDuration:J


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->onChildAnimatorEnded(Landroid/animation/Animator;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 146
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@8
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@f
    .line 77
    new-instance v1, Landroid/util/ArrayMap;

    #@11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@14
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@16
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@1d
    .line 90
    new-instance v1, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@1f
    invoke-direct {v1, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;)V

    #@22
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@24
    .line 99
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@26
    .line 105
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    #@28
    .line 111
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@2a
    .line 114
    iput-wide v8, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@2c
    .line 117
    const/4 v1, 0x2

    #@2d
    new-array v1, v1, [F

    #@2f
    fill-array-data v1, :array_0

    #@32
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@3c
    .line 123
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    #@3e
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@40
    invoke-direct {v1, v2}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    #@43
    iput-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@45
    .line 128
    const-wide/16 v2, -0x1

    #@47
    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@49
    .line 132
    iput-object v6, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@4b
    .line 135
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@4d
    .line 137
    iput-wide v8, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    #@4f
    .line 147
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@51
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@53
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@55
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 148
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@5a
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@5c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 150
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@62
    move-result-object v0

    #@63
    .line 151
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    #@65
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@68
    move-result-object v1

    #@69
    if-nez v1, :cond_1

    #@6b
    .line 152
    :cond_0
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    #@6d
    .line 145
    :goto_0
    return-void

    #@6e
    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@71
    move-result-object v1

    #@72
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@74
    const/16 v2, 0x18

    #@76
    if-ge v1, v2, :cond_2

    #@78
    .line 154
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    #@7a
    goto :goto_0

    #@7b
    .line 156
    :cond_2
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    #@7d
    goto :goto_0

    #@7e
    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createDependencyGraph()V
    .locals 18

    #@0
    .prologue
    .line 913
    move-object/from16 v0, p0

    #@2
    iget-boolean v13, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    #@4
    if-nez v13, :cond_2

    #@6
    .line 915
    const/4 v3, 0x0

    #@7
    .line 916
    .local v3, "durationChanged":Z
    const/4 v4, 0x0

    #@8
    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@a
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v13

    #@10
    if-ge v4, v13, :cond_0

    #@12
    .line 917
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v13

    #@1a
    check-cast v13, Landroid/animation/AnimatorSet$Node;

    #@1c
    iget-object v2, v13, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@1e
    .line 918
    .local v2, "anim":Landroid/animation/Animator;
    move-object/from16 v0, p0

    #@20
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v13

    #@26
    check-cast v13, Landroid/animation/AnimatorSet$Node;

    #@28
    iget-wide v14, v13, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    #@2a
    invoke-virtual {v2}, Landroid/animation/Animator;->getTotalDuration()J

    #@2d
    move-result-wide v16

    #@2e
    cmp-long v13, v14, v16

    #@30
    if-eqz v13, :cond_1

    #@32
    .line 919
    const/4 v3, 0x1

    #@33
    .line 923
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    if-nez v3, :cond_2

    #@35
    .line 924
    return-void

    #@36
    .line 916
    .restart local v2    # "anim":Landroid/animation/Animator;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 928
    .end local v2    # "anim":Landroid/animation/Animator;
    .end local v3    # "durationChanged":Z
    .end local v4    # "i":I
    :cond_2
    const/4 v13, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput-boolean v13, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    #@3e
    .line 930
    move-object/from16 v0, p0

    #@40
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v11

    #@46
    .line 931
    .local v11, "size":I
    const/4 v4, 0x0

    #@47
    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v11, :cond_3

    #@49
    .line 932
    move-object/from16 v0, p0

    #@4b
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v13

    #@51
    check-cast v13, Landroid/animation/AnimatorSet$Node;

    #@53
    const/4 v14, 0x0

    #@54
    iput-boolean v14, v13, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    #@56
    .line 931
    add-int/lit8 v4, v4, 0x1

    #@58
    goto :goto_1

    #@59
    .line 934
    :cond_3
    const/4 v4, 0x0

    #@5a
    :goto_2
    if-ge v4, v11, :cond_7

    #@5c
    .line 935
    move-object/from16 v0, p0

    #@5e
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v8

    #@64
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@66
    .line 936
    .local v8, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v13, v8, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    #@68
    if-eqz v13, :cond_5

    #@6a
    .line 934
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@6c
    goto :goto_2

    #@6d
    .line 940
    :cond_5
    const/4 v13, 0x1

    #@6e
    iput-boolean v13, v8, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    #@70
    .line 941
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@72
    if-eqz v13, :cond_4

    #@74
    .line 946
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@76
    move-object/from16 v0, p0

    #@78
    invoke-direct {v0, v8, v13}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    #@7b
    .line 947
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@80
    .line 950
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@85
    move-result v10

    #@86
    .line 951
    .local v10, "siblingSize":I
    const/4 v5, 0x0

    #@87
    .local v5, "j":I
    :goto_3
    if-ge v5, v10, :cond_6

    #@89
    .line 952
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v13

    #@8f
    check-cast v13, Landroid/animation/AnimatorSet$Node;

    #@91
    iget-object v13, v13, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@93
    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    #@96
    .line 951
    add-int/lit8 v5, v5, 0x1

    #@98
    goto :goto_3

    #@99
    .line 956
    :cond_6
    const/4 v5, 0x0

    #@9a
    :goto_4
    if-ge v5, v10, :cond_4

    #@9c
    .line 957
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v9

    #@a2
    check-cast v9, Landroid/animation/AnimatorSet$Node;

    #@a4
    .line 958
    .local v9, "sibling":Landroid/animation/AnimatorSet$Node;
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    #@a9
    .line 959
    const/4 v13, 0x1

    #@aa
    iput-boolean v13, v9, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    #@ac
    .line 956
    add-int/lit8 v5, v5, 0x1

    #@ae
    goto :goto_4

    #@af
    .line 963
    .end local v5    # "j":I
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "sibling":Landroid/animation/AnimatorSet$Node;
    .end local v10    # "siblingSize":I
    :cond_7
    const/4 v4, 0x0

    #@b0
    :goto_5
    if-ge v4, v11, :cond_9

    #@b2
    .line 964
    move-object/from16 v0, p0

    #@b4
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@b6
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b9
    move-result-object v8

    #@ba
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@bc
    .line 965
    .restart local v8    # "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    #@be
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@c0
    if-eq v8, v13, :cond_8

    #@c2
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@c4
    if-nez v13, :cond_8

    #@c6
    .line 966
    move-object/from16 v0, p0

    #@c8
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@ca
    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    #@cd
    .line 963
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@cf
    goto :goto_5

    #@d0
    .line 971
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@d6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@d9
    move-result v13

    #@da
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    #@dd
    .line 973
    .local v12, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    move-object/from16 v0, p0

    #@df
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@e1
    const-wide/16 v14, 0x0

    #@e3
    iput-wide v14, v13, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@e5
    .line 974
    move-object/from16 v0, p0

    #@e7
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v14, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@ed
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getDuration()J

    #@f0
    move-result-wide v14

    #@f1
    iput-wide v14, v13, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@f3
    .line 975
    move-object/from16 v0, p0

    #@f5
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@f7
    move-object/from16 v0, p0

    #@f9
    invoke-direct {v0, v13, v12}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    #@fc
    .line 977
    const-wide/16 v6, 0x0

    #@fe
    .line 978
    .local v6, "maxEndTime":J
    const/4 v4, 0x0

    #@ff
    :goto_6
    if-ge v4, v11, :cond_a

    #@101
    .line 979
    move-object/from16 v0, p0

    #@103
    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@105
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@108
    move-result-object v8

    #@109
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@10b
    .line 980
    .restart local v8    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@10d
    invoke-virtual {v13}, Landroid/animation/Animator;->getTotalDuration()J

    #@110
    move-result-wide v14

    #@111
    iput-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    #@113
    .line 981
    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@115
    const-wide/16 v16, -0x1

    #@117
    cmp-long v13, v14, v16

    #@119
    if-nez v13, :cond_b

    #@11b
    .line 982
    const-wide/16 v6, -0x1

    #@11d
    .line 988
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_a
    move-object/from16 v0, p0

    #@11f
    iput-wide v6, v0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    #@121
    .line 912
    return-void

    #@122
    .line 985
    .restart local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b
    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@124
    cmp-long v13, v14, v6

    #@126
    if-lez v13, :cond_c

    #@128
    iget-wide v6, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@12a
    .line 978
    :cond_c
    add-int/lit8 v4, v4, 0x1

    #@12c
    goto :goto_6
.end method

.method private endRemainingAnimations()V
    .locals 8

    #@0
    .prologue
    .line 407
    new-instance v6, Ljava/util/ArrayList;

    #@2
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v7

    #@8
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 408
    .local v6, "remainingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@10
    .line 410
    const/4 v4, 0x0

    #@11
    .line 411
    .local v4, "index":I
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v7

    #@15
    if-ge v4, v7, :cond_2

    #@17
    .line 412
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/animation/Animator;

    #@1d
    .line 413
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@20
    .line 414
    add-int/lit8 v4, v4, 0x1

    #@22
    .line 415
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@24
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Landroid/animation/AnimatorSet$Node;

    #@2a
    .line 416
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@2c
    if-eqz v7, :cond_0

    #@2e
    .line 417
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    .line 418
    .local v2, "childSize":I
    const/4 v3, 0x0

    #@35
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@37
    .line 419
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@3f
    .line 420
    .local v1, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v7, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@41
    if-eq v7, v5, :cond_1

    #@43
    .line 418
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_0

    #@46
    .line 423
    :cond_1
    iget-object v7, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@48
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_1

    #@4c
    .line 406
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "childSize":I
    .end local v3    # "i":I
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method private findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1053
    .local p2, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1054
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 1055
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1056
    return-void

    #@e
    .line 1058
    :cond_0
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    if-ge v0, v1, :cond_1

    #@17
    .line 1059
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@1f
    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    #@22
    .line 1058
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1052
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1086
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@8
    .line 1087
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v0, :cond_0

    #@a
    .line 1088
    new-instance v0, Landroid/animation/AnimatorSet$Node;

    #@c
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v0, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    #@f
    .line 1089
    .restart local v0    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 1090
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 1092
    :cond_0
    return-object v0
.end method

.method private onChildAnimatorEnded(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 798
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@9
    .line 799
    .local v1, "animNode":Landroid/animation/AnimatorSet$Node;
    const/4 v8, 0x1

    #@a
    iput-boolean v8, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    #@c
    .line 801
    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@e
    if-nez v8, :cond_6

    #@10
    .line 802
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@12
    .line 804
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/animation/AnimatorSet$Node;>;"
    if-nez v2, :cond_1

    #@14
    const/4 v3, 0x0

    #@15
    .line 805
    .local v3, "childrenSize":I
    :goto_0
    const/4 v4, 0x0

    #@16
    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    #@18
    .line 806
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@1e
    iget-object v8, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@20
    if-ne v8, v1, :cond_0

    #@22
    .line 807
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v8

    #@26
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@28
    invoke-virtual {p0, v8}, Landroid/animation/AnimatorSet;->start(Landroid/animation/AnimatorSet$Node;)V

    #@2b
    .line 805
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 804
    .end local v3    # "childrenSize":I
    .end local v4    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@31
    move-result v3

    #@32
    .restart local v3    # "childrenSize":I
    goto :goto_0

    #@33
    .line 812
    .restart local v4    # "i":I
    :cond_2
    const/4 v0, 0x1

    #@34
    .line 814
    .local v0, "allDone":Z
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v6

    #@3a
    .line 815
    .local v6, "size":I
    const/4 v4, 0x0

    #@3b
    :goto_2
    if-ge v4, v6, :cond_3

    #@3d
    .line 816
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v8

    #@43
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@45
    iget-boolean v8, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    #@47
    if-nez v8, :cond_4

    #@49
    .line 817
    const/4 v0, 0x0

    #@4a
    .line 821
    :cond_3
    if-eqz v0, :cond_6

    #@4c
    .line 824
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@4e
    if-eqz v8, :cond_5

    #@50
    .line 826
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@55
    move-result-object v7

    #@56
    check-cast v7, Ljava/util/ArrayList;

    #@58
    .line 827
    .local v7, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v5

    #@5c
    .line 828
    .local v5, "numListeners":I
    const/4 v4, 0x0

    #@5d
    :goto_3
    if-ge v4, v5, :cond_5

    #@5f
    .line 829
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v8

    #@63
    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    #@65
    invoke-interface {v8, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@68
    .line 828
    add-int/lit8 v4, v4, 0x1

    #@6a
    goto :goto_3

    #@6b
    .line 815
    .end local v5    # "numListeners":I
    .end local v7    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 832
    :cond_5
    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@70
    .line 833
    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@72
    .line 797
    .end local v0    # "allDone":Z
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/animation/AnimatorSet$Node;>;"
    .end local v3    # "childrenSize":I
    .end local v4    # "i":I
    .end local v6    # "size":I
    :cond_6
    return-void
.end method

.method private printChildCount()V
    .locals 10

    #@0
    .prologue
    .line 886
    new-instance v4, Ljava/util/ArrayList;

    #@2
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v8

    #@8
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 887
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@d
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 888
    const-string/jumbo v8, "AnimatorSet"

    #@13
    const-string/jumbo v9, "Current tree: "

    #@16
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 889
    const/4 v3, 0x0

    #@1a
    .line 890
    .local v3, "index":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v8

    #@1e
    if-ge v3, v8, :cond_3

    #@20
    .line 891
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v5

    #@24
    .line 892
    .local v5, "listSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    .line 893
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-ge v3, v5, :cond_2

    #@2b
    .line 894
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    #@31
    .line 895
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    const/4 v7, 0x0

    #@32
    .line 896
    .local v7, "num":I
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@34
    if-eqz v8, :cond_1

    #@36
    .line 897
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v8

    #@3d
    if-ge v2, v8, :cond_1

    #@3f
    .line 898
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@47
    .line 899
    .local v1, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@49
    if-ne v8, v6, :cond_0

    #@4b
    .line 900
    add-int/lit8 v7, v7, 0x1

    #@4d
    .line 901
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 897
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_2

    #@53
    .line 905
    .end local v1    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v8, " "

    #@56
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 906
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    .line 893
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 908
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "num":I
    :cond_2
    const-string/jumbo v8, "AnimatorSet"

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    goto :goto_0

    #@6a
    .line 884
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "listSize":I
    :cond_3
    return-void
.end method

.method private updateAnimatorsDuration()V
    .locals 8

    #@0
    .prologue
    .line 661
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@2
    const-wide/16 v6, 0x0

    #@4
    cmp-long v3, v4, v6

    #@6
    if-ltz v3, :cond_0

    #@8
    .line 663
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .line 664
    .local v2, "size":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@11
    .line 665
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@19
    .line 668
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@1b
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@1d
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@20
    .line 664
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 671
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "size":I
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@25
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@27
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@2a
    .line 660
    return-void
.end method

.method private updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "parent"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 997
    .local p2, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@2
    if-nez v8, :cond_2

    #@4
    .line 998
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@6
    if-ne p1, v8, :cond_1

    #@8
    .line 1000
    const/4 v4, 0x0

    #@9
    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v8

    #@f
    if-ge v4, v8, :cond_1

    #@11
    .line 1001
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    check-cast v7, Landroid/animation/AnimatorSet$Node;

    #@19
    .line 1002
    .local v7, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@1b
    if-eq v7, v8, :cond_0

    #@1d
    .line 1003
    const-wide/16 v8, -0x1

    #@1f
    iput-wide v8, v7, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@21
    .line 1004
    const-wide/16 v8, -0x1

    #@23
    iput-wide v8, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@25
    .line 1000
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1008
    .end local v4    # "i":I
    .end local v7    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void

    #@29
    .line 1011
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1012
    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v1

    #@32
    .line 1013
    .local v1, "childrenSize":I
    const/4 v4, 0x0

    #@33
    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v1, :cond_9

    #@35
    .line 1014
    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@3d
    .line 1015
    .local v0, "child":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@40
    move-result v5

    #@41
    .line 1016
    .local v5, "index":I
    if-ltz v5, :cond_4

    #@43
    .line 1018
    move v6, v5

    #@44
    .local v6, "j":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v8

    #@48
    if-ge v6, v8, :cond_3

    #@4a
    .line 1019
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v8

    #@4e
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@50
    const/4 v9, 0x0

    #@51
    iput-object v9, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@53
    .line 1020
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v8

    #@57
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@59
    const-wide/16 v10, -0x1

    #@5b
    iput-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@5d
    .line 1021
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v8

    #@61
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@63
    const-wide/16 v10, -0x1

    #@65
    iput-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@67
    .line 1018
    add-int/lit8 v6, v6, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 1023
    :cond_3
    const-wide/16 v8, -0x1

    #@6c
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@6e
    .line 1024
    const-wide/16 v8, -0x1

    #@70
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@72
    .line 1025
    const/4 v8, 0x0

    #@73
    iput-object v8, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@75
    .line 1026
    const-string/jumbo v8, "AnimatorSet"

    #@78
    new-instance v9, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v10, "Cycle found in AnimatorSet: "

    #@80
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v9

    #@8c
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 1013
    .end local v6    # "j":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@91
    goto :goto_1

    #@92
    .line 1030
    :cond_4
    iget-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@94
    const-wide/16 v10, -0x1

    #@96
    cmp-long v8, v8, v10

    #@98
    if-eqz v8, :cond_5

    #@9a
    .line 1031
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@9c
    const-wide/16 v10, -0x1

    #@9e
    cmp-long v8, v8, v10

    #@a0
    if-nez v8, :cond_6

    #@a2
    .line 1032
    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@a4
    .line 1033
    const-wide/16 v8, -0x1

    #@a6
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@a8
    .line 1034
    const-wide/16 v8, -0x1

    #@aa
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@ac
    .line 1046
    :cond_5
    :goto_4
    invoke-direct {p0, v0, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    #@af
    goto :goto_3

    #@b0
    .line 1036
    :cond_6
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@b2
    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@b4
    cmp-long v8, v8, v10

    #@b6
    if-ltz v8, :cond_7

    #@b8
    .line 1037
    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@ba
    .line 1038
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@bc
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@be
    .line 1041
    :cond_7
    iget-object v8, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@c0
    invoke-virtual {v8}, Landroid/animation/Animator;->getTotalDuration()J

    #@c3
    move-result-wide v2

    #@c4
    .line 1042
    .local v2, "duration":J
    const-wide/16 v8, -0x1

    #@c6
    cmp-long v8, v2, v8

    #@c8
    if-nez v8, :cond_8

    #@ca
    .line 1043
    const-wide/16 v8, -0x1

    #@cc
    .line 1042
    :goto_5
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@ce
    goto :goto_4

    #@cf
    .line 1043
    :cond_8
    iget-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@d1
    add-long/2addr v8, v2

    #@d2
    goto :goto_5

    #@d3
    .line 1048
    .end local v0    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "duration":J
    .end local v5    # "index":I
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d6
    .line 996
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 845
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 846
    return v8

    #@6
    .line 849
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    .line 850
    .local v2, "size":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@f
    .line 851
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@17
    .line 852
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@19
    invoke-virtual {v3}, Landroid/animation/Animator;->canReverse()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@21
    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    #@24
    move-result-wide v4

    #@25
    const-wide/16 v6, 0x0

    #@27
    cmp-long v3, v4, v6

    #@29
    if-lez v3, :cond_2

    #@2b
    .line 853
    :cond_1
    return v8

    #@2c
    .line 850
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 856
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v3, 0x1

    #@30
    return v3
.end method

.method public cancel()V
    .locals 6

    #@0
    .prologue
    .line 353
    const/4 v5, 0x1

    #@1
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@3
    .line 354
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_3

    #@9
    .line 355
    const/4 v4, 0x0

    #@a
    .line 356
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 357
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v4, Ljava/util/ArrayList;

    #@16
    .line 358
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v3

    #@1a
    .line 359
    .local v3, "size":I
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@1d
    .line 360
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    #@23
    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@26
    .line 359
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 363
    .end local v0    # "i":I
    .end local v3    # "size":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@2b
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@2d
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@30
    .line 364
    .local v1, "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    .line 365
    .local v2, "setSize":I
    const/4 v0, 0x0

    #@35
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@37
    .line 366
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v5

    #@3b
    check-cast v5, Landroid/animation/Animator;

    #@3d
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    #@40
    .line 365
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_1

    #@43
    .line 368
    :cond_1
    if-eqz v4, :cond_2

    #@45
    .line 369
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v3

    #@49
    .line 370
    .restart local v3    # "size":I
    const/4 v0, 0x0

    #@4a
    :goto_2
    if-ge v0, v3, :cond_2

    #@4c
    .line 371
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    #@52
    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@55
    .line 370
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_2

    #@58
    .line 374
    .end local v3    # "size":I
    :cond_2
    const/4 v5, 0x0

    #@59
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@5b
    .line 352
    .end local v0    # "i":I
    .end local v1    # "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "setSize":I
    :cond_3
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    #@0
    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    .line 683
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/animation/AnimatorSet;

    #@8
    .line 692
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v8

    #@e
    .line 693
    .local v8, "nodeCount":I
    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@10
    .line 694
    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@12
    .line 695
    new-instance v10, Ljava/util/ArrayList;

    #@14
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v10, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@19
    .line 696
    new-instance v10, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    iput-object v10, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@20
    .line 697
    new-instance v10, Ljava/util/ArrayList;

    #@22
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@25
    iput-object v10, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@27
    .line 698
    iget-boolean v10, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@29
    iput-boolean v10, v0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@2b
    .line 699
    new-instance v10, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@2d
    invoke-direct {v10, v0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;)V

    #@30
    iput-object v10, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@32
    .line 705
    const/4 v5, 0x0

    #@33
    .local v5, "n":I
    :goto_0
    if-ge v5, v8, :cond_2

    #@35
    .line 706
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    #@3d
    .line 707
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v6}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    #@40
    move-result-object v7

    #@41
    .line 708
    .local v7, "nodeClone":Landroid/animation/AnimatorSet$Node;
    invoke-static {v6, v7}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@44
    .line 709
    iget-object v10, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    .line 710
    iget-object v10, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@4b
    iget-object v12, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@4d
    invoke-virtual {v10, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 713
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@52
    invoke-virtual {v10}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    #@55
    move-result-object v1

    #@56
    .line 714
    .local v1, "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v1, :cond_1

    #@58
    .line 715
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v10

    #@5c
    add-int/lit8 v2, v10, -0x1

    #@5e
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    #@60
    .line 716
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    #@66
    .line 717
    .local v4, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v10, v4, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@68
    if-eqz v10, :cond_0

    #@6a
    .line 718
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@6d
    .line 715
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@6f
    goto :goto_1

    #@70
    .line 705
    .end local v2    # "i":I
    .end local v4    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@72
    goto :goto_0

    #@73
    .line 724
    .end local v1    # "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    :cond_2
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@75
    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@78
    move-result-object v10

    #@79
    iput-object v10, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@7b
    .line 725
    iget-object v10, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@7d
    iget-object v10, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@7f
    check-cast v10, Landroid/animation/ValueAnimator;

    #@81
    iput-object v10, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@83
    .line 729
    const/4 v2, 0x0

    #@84
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v8, :cond_a

    #@86
    .line 730
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@88
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v6

    #@8c
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    #@8e
    .line 732
    .restart local v6    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@91
    move-result-object v12

    #@92
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@94
    if-nez v10, :cond_3

    #@96
    move-object v10, v11

    #@97
    :goto_3
    iput-object v10, v12, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@99
    .line 734
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@9b
    if-nez v10, :cond_4

    #@9d
    const/4 v9, 0x0

    #@9e
    .line 735
    .local v9, "size":I
    :goto_4
    const/4 v3, 0x0

    #@9f
    .local v3, "j":I
    :goto_5
    if-ge v3, v9, :cond_5

    #@a1
    .line 736
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@a4
    move-result-object v10

    #@a5
    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@a7
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@a9
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v10

    #@ad
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@af
    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 735
    add-int/lit8 v3, v3, 0x1

    #@b8
    goto :goto_5

    #@b9
    .line 733
    .end local v3    # "j":I
    .end local v9    # "size":I
    :cond_3
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    #@bb
    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@be
    move-result-object v10

    #@bf
    goto :goto_3

    #@c0
    .line 734
    :cond_4
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@c2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@c5
    move-result v9

    #@c6
    .restart local v9    # "size":I
    goto :goto_4

    #@c7
    .line 738
    .restart local v3    # "j":I
    :cond_5
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@c9
    if-nez v10, :cond_6

    #@cb
    const/4 v9, 0x0

    #@cc
    .line 739
    :goto_6
    const/4 v3, 0x0

    #@cd
    :goto_7
    if-ge v3, v9, :cond_7

    #@cf
    .line 740
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@d2
    move-result-object v10

    #@d3
    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@d5
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@d7
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@da
    move-result-object v10

    #@db
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@dd
    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@e0
    move-result-object v10

    #@e1
    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@e4
    .line 739
    add-int/lit8 v3, v3, 0x1

    #@e6
    goto :goto_7

    #@e7
    .line 738
    :cond_6
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    #@e9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@ec
    move-result v9

    #@ed
    goto :goto_6

    #@ee
    .line 742
    :cond_7
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@f0
    if-nez v10, :cond_8

    #@f2
    const/4 v9, 0x0

    #@f3
    .line 743
    :goto_8
    const/4 v3, 0x0

    #@f4
    :goto_9
    if-ge v3, v9, :cond_9

    #@f6
    .line 744
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@f9
    move-result-object v10

    #@fa
    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@fc
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@fe
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@101
    move-result-object v10

    #@102
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@104
    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@107
    move-result-object v10

    #@108
    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@10b
    .line 743
    add-int/lit8 v3, v3, 0x1

    #@10d
    goto :goto_9

    #@10e
    .line 742
    :cond_8
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    #@110
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@113
    move-result v9

    #@114
    goto :goto_8

    #@115
    .line 729
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@117
    goto/16 :goto_2

    #@119
    .line 748
    .end local v3    # "j":I
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "size":I
    :cond_a
    const/4 v5, 0x0

    #@11a
    :goto_a
    if-ge v5, v8, :cond_b

    #@11c
    .line 749
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@11e
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@121
    move-result-object v10

    #@122
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@124
    invoke-static {v10, v11}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@127
    .line 748
    add-int/lit8 v5, v5, 0x1

    #@129
    goto :goto_a

    #@12a
    .line 751
    :cond_b
    return-object v0
.end method

.method public end()V
    .locals 3

    #@0
    .prologue
    .line 386
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 389
    :cond_0
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@d
    .line 390
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 391
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endRemainingAnimations()V

    #@16
    .line 393
    :cond_1
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 395
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/ArrayList;

    #@22
    .line 396
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    if-ge v0, v2, :cond_3

    #@29
    .line 397
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    #@2f
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@32
    .line 396
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 387
    .end local v0    # "i":I
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    return-void

    #@36
    .line 400
    :cond_3
    const/4 v2, 0x0

    #@37
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@39
    .line 385
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    #@0
    .prologue
    .line 282
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    .line 283
    .local v0, "conf":I
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 284
    .local v2, "nodeCount":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 285
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    #@15
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@17
    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    #@1a
    move-result v3

    #@1b
    or-int/2addr v0, v3

    #@1c
    .line 284
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 287
    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 246
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    .line 247
    .local v3, "size":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@e
    .line 248
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    #@16
    .line 249
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@18
    if-eq v2, v4, :cond_0

    #@1a
    .line 250
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@1c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 253
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 519
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 463
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@2
    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    #@0
    .prologue
    .line 1080
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    #@3
    .line 1081
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    #@6
    .line 1082
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    #@8
    return-wide v0
.end method

.method public isRunning()Z
    .locals 4

    #@0
    .prologue
    .line 440
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 441
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 442
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@11
    .line 443
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@13
    if-eq v1, v3, :cond_0

    #@15
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@17
    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 444
    const/4 v3, 0x1

    #@1e
    return v3

    #@1f
    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 447
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    const/4 v3, 0x0

    #@23
    return v3
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 452
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@2
    return v0
.end method

.method public pause()V
    .locals 5

    #@0
    .prologue
    .line 565
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@2
    .line 566
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    #@5
    .line 567
    if-nez v2, :cond_0

    #@7
    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 568
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@d
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 570
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@15
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->pause()V

    #@18
    .line 564
    :cond_0
    return-void

    #@19
    .line 572
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v3

    #@1f
    .line 573
    .local v3, "size":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@22
    .line 574
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@2a
    .line 575
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@2c
    if-eq v1, v4, :cond_2

    #@2e
    .line 576
    iget-object v4, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@30
    invoke-virtual {v4}, Landroid/animation/Animator;->pause()V

    #@33
    .line 573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 338
    if-eqz p1, :cond_0

    #@3
    .line 339
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    #@5
    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    #@8
    return-object v0

    #@9
    .line 341
    :cond_0
    return-object v0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    #@1
    .line 224
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x1

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 226
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/animation/Animator;

    #@16
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@19
    .line 223
    :cond_0
    return-void

    #@1a
    .line 228
    :cond_1
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@1c
    .line 229
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@20
    move-result v1

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    if-ge v0, v1, :cond_0

    #@25
    .line 230
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/animation/Animator;

    #@2b
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@2e
    move-result-object v2

    #@2f
    add-int/lit8 v1, v0, 0x1

    #@31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/animation/Animator;

    #@37
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@3a
    .line 229
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 4
    .param p1, "items"    # [Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 205
    if-eqz p1, :cond_0

    #@3
    .line 206
    array-length v1, p1

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_1

    #@7
    .line 207
    aget-object v1, p1, v3

    #@9
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@c
    .line 204
    :cond_0
    return-void

    #@d
    .line 209
    :cond_1
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@f
    .line 210
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 211
    aget-object v1, p1, v0

    #@17
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1a
    move-result-object v1

    #@1b
    add-int/lit8 v2, v0, 0x1

    #@1d
    aget-object v2, p1, v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@22
    .line 210
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v3

    #@6
    if-lez v3, :cond_1

    #@8
    .line 187
    const/4 v2, 0x0

    #@9
    .line 188
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/animation/Animator;

    #@19
    .line 189
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    #@1b
    .line 190
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    #@20
    .line 192
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@23
    goto :goto_0

    #@24
    .line 185
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3
    .param p1, "items"    # [Landroid/animation/Animator;

    #@0
    .prologue
    .line 172
    if-eqz p1, :cond_0

    #@2
    .line 173
    const/4 v2, 0x0

    #@3
    aget-object v2, p1, v2

    #@5
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@8
    move-result-object v0

    #@9
    .line 174
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    #@a
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 175
    aget-object v2, p1, v1

    #@f
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@12
    .line 174
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 171
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    #@0
    .prologue
    .line 585
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@2
    .line 586
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    #@5
    .line 587
    if-eqz v2, :cond_0

    #@7
    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 584
    :cond_0
    :goto_0
    return-void

    #@c
    .line 588
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@e
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_2

    #@14
    .line 590
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@16
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->resume()V

    #@19
    goto :goto_0

    #@1a
    .line 592
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v3

    #@20
    .line 593
    .local v3, "size":I
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    #@23
    .line 594
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@2b
    .line 595
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@2d
    if-eq v1, v4, :cond_3

    #@2f
    .line 596
    iget-object v4, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@31
    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    #@34
    .line 593
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_1
.end method

.method public reverse()V
    .locals 4

    #@0
    .prologue
    .line 864
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 865
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    .line 866
    .local v2, "size":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@f
    .line 867
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@17
    .line 868
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@19
    invoke-virtual {v3}, Landroid/animation/Animator;->reverse()V

    #@1c
    .line 866
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 863
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 531
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 532
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "duration must be a value of zero or greater"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 535
    :cond_0
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    #@12
    .line 537
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@14
    .line 538
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 301
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    .line 300
    return-void
.end method

.method public setStartDelay(J)V
    .locals 13
    .param p1, "startDelay"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const-wide/16 v8, -0x1

    #@4
    .line 476
    cmp-long v5, p1, v10

    #@6
    if-gez v5, :cond_0

    #@8
    .line 477
    const-string/jumbo v5, "AnimatorSet"

    #@b
    const-string/jumbo v6, "Start delay should always be non-negative"

    #@e
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 478
    const-wide/16 p1, 0x0

    #@13
    .line 480
    :cond_0
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@15
    sub-long v0, p1, v6

    #@17
    .line 481
    .local v0, "delta":J
    cmp-long v5, v0, v10

    #@19
    if-nez v5, :cond_1

    #@1b
    .line 482
    return-void

    #@1c
    .line 484
    :cond_1
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@1e
    .line 485
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@20
    cmp-long v5, v6, v10

    #@22
    if-lez v5, :cond_2

    #@24
    .line 486
    const/4 v5, 0x0

    #@25
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@27
    .line 488
    :cond_2
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    #@29
    if-nez v5, :cond_7

    #@2b
    .line 490
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v4

    #@31
    .line 491
    .local v4, "size":I
    const/4 v2, 0x0

    #@32
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    #@34
    .line 492
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    #@3c
    .line 493
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@3e
    if-ne v3, v5, :cond_3

    #@40
    .line 494
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@42
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@44
    .line 491
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 496
    :cond_3
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@49
    cmp-long v5, v6, v8

    #@4b
    if-nez v5, :cond_4

    #@4d
    move-wide v6, v8

    #@4e
    :goto_2
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@50
    .line 498
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@52
    cmp-long v5, v6, v8

    #@54
    if-nez v5, :cond_5

    #@56
    move-wide v6, v8

    #@57
    :goto_3
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@59
    goto :goto_1

    #@5a
    .line 497
    :cond_4
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    #@5c
    add-long/2addr v6, v0

    #@5d
    goto :goto_2

    #@5e
    .line 499
    :cond_5
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    #@60
    add-long/2addr v6, v0

    #@61
    goto :goto_3

    #@62
    .line 503
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_6
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    #@64
    cmp-long v5, v6, v8

    #@66
    if-eqz v5, :cond_7

    #@68
    .line 504
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    #@6a
    add-long/2addr v6, v0

    #@6b
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    #@6d
    .line 474
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_7
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 265
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 266
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@9
    .line 267
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    #@11
    .line 268
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@13
    .line 269
    .local v0, "animation":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 270
    check-cast v0, Landroid/animation/AnimatorSet;

    #@19
    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    #@1c
    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 271
    .restart local v0    # "animation":Landroid/animation/Animator;
    :cond_1
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 272
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@25
    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@28
    goto :goto_1

    #@29
    .line 264
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 4

    #@0
    .prologue
    .line 554
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 555
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 556
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@11
    .line 557
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@13
    if-eq v1, v3, :cond_0

    #@15
    .line 558
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@17
    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    #@1a
    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 553
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    #@0
    .prologue
    .line 543
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 544
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 545
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@11
    .line 546
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@13
    if-eq v1, v3, :cond_0

    #@15
    .line 547
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@17
    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    #@1a
    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 542
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public shouldPlayTogether()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1072
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    #@4
    .line 1073
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    #@7
    .line 1075
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@9
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@f
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    :cond_0
    :goto_0
    return v0

    #@20
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public start()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 613
    iput-boolean v7, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@4
    .line 614
    iput-boolean v10, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@6
    .line 615
    iput-boolean v7, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@8
    .line 617
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v4

    #@e
    .line 618
    .local v4, "size":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@11
    .line 619
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@19
    .line 620
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iput-boolean v7, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    #@1b
    .line 621
    iget-object v6, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@1d
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    #@20
    .line 618
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 624
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@25
    if-eqz v6, :cond_1

    #@27
    .line 625
    const/4 v0, 0x0

    #@28
    :goto_1
    if-ge v0, v4, :cond_1

    #@2a
    .line 626
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@32
    .line 627
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v6, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@34
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@36
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@39
    .line 625
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 631
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    #@3f
    .line 632
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    #@42
    .line 635
    const/4 v3, 0x0

    #@43
    .line 636
    .local v3, "setIsEmpty":Z
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@45
    const-wide/16 v8, 0x0

    #@47
    cmp-long v6, v6, v8

    #@49
    if-lez v6, :cond_2

    #@4b
    .line 637
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    #@4d
    invoke-virtual {p0, v6}, Landroid/animation/AnimatorSet;->start(Landroid/animation/AnimatorSet$Node;)V

    #@50
    .line 646
    :goto_2
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@52
    if-eqz v6, :cond_4

    #@54
    .line 648
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Ljava/util/ArrayList;

    #@5c
    .line 649
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v2

    #@60
    .line 650
    .local v2, "numListeners":I
    const/4 v0, 0x0

    #@61
    :goto_3
    if-ge v0, v2, :cond_4

    #@63
    .line 651
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v6

    #@67
    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    #@69
    invoke-interface {v6, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@6c
    .line 650
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_3

    #@6f
    .line 638
    .end local v2    # "numListeners":I
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@74
    move-result v6

    #@75
    if-le v6, v10, :cond_3

    #@77
    .line 640
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@79
    invoke-direct {p0, v6}, Landroid/animation/AnimatorSet;->onChildAnimatorEnded(Landroid/animation/Animator;)V

    #@7c
    goto :goto_2

    #@7d
    .line 643
    :cond_3
    const/4 v3, 0x1

    #@7e
    goto :goto_2

    #@7f
    .line 654
    :cond_4
    if-eqz v3, :cond_5

    #@81
    .line 656
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@83
    invoke-direct {p0, v6}, Landroid/animation/AnimatorSet;->onChildAnimatorEnded(Landroid/animation/Animator;)V

    #@86
    .line 612
    :cond_5
    return-void
.end method

.method start(Landroid/animation/AnimatorSet$Node;)V
    .locals 2
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    #@0
    .prologue
    .line 675
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@2
    .line 676
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    .line 677
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@c
    .line 678
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@f
    .line 674
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "AnimatorSet@"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->hashCode()I

    #@f
    move-result v5

    #@10
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, "{"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 876
    .local v2, "returnVal":Ljava/lang/String;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v3

    #@29
    .line 877
    .local v3, "size":I
    const/4 v0, 0x0

    #@2a
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@2c
    .line 878
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@34
    .line 879
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, "\n    "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    iget-object v5, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    #@46
    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 877
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 881
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    const-string/jumbo v5, "\n}"

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    return-object v4
.end method
