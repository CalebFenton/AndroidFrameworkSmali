.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$DependencyListener;,
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$Dependency;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$Builder;
    }
.end annotation


# instance fields
.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNeedsSort:Z

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

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 51
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@6
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@d
    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@14
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@1b
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@22
    .line 93
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@24
    .line 95
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@26
    .line 104
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@28
    .line 110
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@2a
    .line 113
    const-wide/16 v0, 0x0

    #@2c
    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@2e
    .line 116
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@30
    .line 122
    const-wide/16 v0, -0x1

    #@32
    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@34
    .line 126
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@36
    .line 128
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@38
    .line 51
    return-void
.end method

.method private sortNodes()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 885
    iget-boolean v11, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@3
    if-eqz v11, :cond_7

    #@5
    .line 886
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 887
    new-instance v9, Ljava/util/ArrayList;

    #@c
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 888
    .local v9, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v6

    #@15
    .line 889
    .local v6, "numNodes":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    #@18
    .line 890
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    #@20
    .line 891
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@22
    if-eqz v11, :cond_0

    #@24
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v11

    #@2a
    if-nez v11, :cond_1

    #@2c
    .line 892
    :cond_0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 889
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 895
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    #@34
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@37
    .line 896
    .local v10, "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v11

    #@3b
    if-lez v11, :cond_6

    #@3d
    .line 897
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v7

    #@41
    .line 898
    .local v7, "numRoots":I
    const/4 v1, 0x0

    #@42
    :goto_2
    if-ge v1, v7, :cond_5

    #@44
    .line 899
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v8

    #@48
    check-cast v8, Landroid/animation/AnimatorSet$Node;

    #@4a
    .line 900
    .local v8, "root":Landroid/animation/AnimatorSet$Node;
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 901
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@51
    if-eqz v11, :cond_4

    #@53
    .line 902
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v5

    #@59
    .line 903
    .local v5, "numDependents":I
    const/4 v2, 0x0

    #@5a
    .local v2, "j":I
    :goto_3
    if-ge v2, v5, :cond_4

    #@5c
    .line 904
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    #@64
    .line 905
    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@66
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@69
    .line 906
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v11

    #@6f
    if-nez v11, :cond_3

    #@71
    .line 907
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@74
    .line 903
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@76
    goto :goto_3

    #@77
    .line 898
    .end local v2    # "j":I
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v5    # "numDependents":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@79
    goto :goto_2

    #@7a
    .line 912
    .end local v8    # "root":Landroid/animation/AnimatorSet$Node;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@7d
    .line 913
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@80
    .line 914
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@83
    goto :goto_1

    #@84
    .line 916
    .end local v7    # "numRoots":I
    :cond_6
    iput-boolean v13, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@86
    .line 917
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@88
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@8b
    move-result v11

    #@8c
    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@91
    move-result v12

    #@92
    if-eq v11, v12, :cond_b

    #@94
    .line 918
    new-instance v11, Ljava/lang/IllegalStateException;

    #@96
    const-string/jumbo v12, "Circular dependencies cannot exist in AnimatorSet"

    #@99
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v11

    #@9d
    .line 925
    .end local v1    # "i":I
    .end local v6    # "numNodes":I
    .end local v9    # "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v10    # "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_7
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@a2
    move-result v6

    #@a3
    .line 926
    .restart local v6    # "numNodes":I
    const/4 v1, 0x0

    #@a4
    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_b

    #@a6
    .line 927
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v3

    #@ac
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    #@ae
    .line 928
    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@b0
    if-eqz v11, :cond_a

    #@b2
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@b7
    move-result v11

    #@b8
    if-lez v11, :cond_a

    #@ba
    .line 929
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@bc
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@bf
    move-result v4

    #@c0
    .line 930
    .local v4, "numDependencies":I
    const/4 v2, 0x0

    #@c1
    .restart local v2    # "j":I
    :goto_5
    if-ge v2, v4, :cond_a

    #@c3
    .line 931
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@c5
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v0

    #@c9
    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    #@cb
    .line 932
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@cd
    if-nez v11, :cond_8

    #@cf
    .line 933
    new-instance v11, Ljava/util/ArrayList;

    #@d1
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@d4
    iput-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@d6
    .line 935
    :cond_8
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@d8
    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@da
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@dd
    move-result v11

    #@de
    if-nez v11, :cond_9

    #@e0
    .line 936
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@e2
    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@e4
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e7
    .line 930
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@e9
    goto :goto_5

    #@ea
    .line 942
    .end local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v2    # "j":I
    .end local v4    # "numDependencies":I
    :cond_a
    iput-boolean v13, v3, Landroid/animation/AnimatorSet$Node;->done:Z

    #@ec
    .line 926
    add-int/lit8 v1, v1, 0x1

    #@ee
    goto :goto_4

    #@ef
    .line 884
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 952
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 953
    return v6

    #@6
    .line 956
    :cond_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "node$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_3

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@18
    .line 957
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@1a
    invoke-virtual {v2}, Landroid/animation/Animator;->canReverse()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@22
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    #@25
    move-result-wide v2

    #@26
    const-wide/16 v4, 0x0

    #@28
    cmp-long v2, v2, v4

    #@2a
    if-lez v2, :cond_1

    #@2c
    .line 958
    :cond_2
    return v6

    #@2d
    .line 961
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v2, 0x1

    #@2e
    return v2
.end method

.method public cancel()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 321
    const/4 v5, 0x1

    #@2
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@4
    .line 322
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_4

    #@a
    .line 323
    const/4 v4, 0x0

    #@b
    .line 324
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 325
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v4, Ljava/util/ArrayList;

    #@17
    .line 326
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    #@27
    .line 327
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@2a
    goto :goto_0

    #@2b
    .line 330
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@2d
    if-eqz v5, :cond_2

    #@2f
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@31
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_2

    #@37
    .line 333
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@39
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    #@3c
    .line 339
    :cond_1
    if-eqz v4, :cond_3

    #@3e
    .line 340
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v1

    #@42
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_3

    #@48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    #@4e
    .line 341
    .restart local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@51
    goto :goto_1

    #@52
    .line 334
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@57
    move-result v5

    #@58
    if-lez v5, :cond_1

    #@5a
    .line 335
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@5c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5f
    move-result-object v3

    #@60
    .local v3, "node$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_1

    #@66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v2

    #@6a
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    #@6c
    .line 336
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@6e
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    #@71
    goto :goto_2

    #@72
    .line 344
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "node$iterator":Ljava/util/Iterator;
    :cond_3
    iput-boolean v6, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@74
    .line 320
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    #@0
    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 17

    #@0
    .prologue
    .line 636
    invoke-super/range {p0 .. p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/animation/AnimatorSet;

    #@6
    .line 645
    .local v1, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    #@8
    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v14

    #@e
    .line 646
    .local v14, "nodeCount":I
    const/4 v15, 0x1

    #@f
    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@11
    .line 647
    const/4 v15, 0x0

    #@12
    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@14
    .line 648
    const/4 v15, 0x0

    #@15
    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    #@17
    .line 649
    new-instance v15, Ljava/util/ArrayList;

    #@19
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v15, v1, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@1e
    .line 650
    new-instance v15, Landroid/util/ArrayMap;

    #@20
    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    #@23
    iput-object v15, v1, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@25
    .line 651
    new-instance v15, Ljava/util/ArrayList;

    #@27
    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    #@2a
    iput-object v15, v1, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2c
    .line 652
    new-instance v15, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    #@31
    iput-object v15, v1, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@33
    .line 653
    move-object/from16 v0, p0

    #@35
    iget-boolean v15, v0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@37
    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mReversible:Z

    #@39
    .line 654
    const/4 v15, 0x0

    #@3a
    iput-object v15, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@3c
    .line 660
    const/4 v11, 0x0

    #@3d
    .local v11, "n":I
    :goto_0
    if-ge v11, v14, :cond_2

    #@3f
    .line 661
    move-object/from16 v0, p0

    #@41
    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v12

    #@47
    check-cast v12, Landroid/animation/AnimatorSet$Node;

    #@49
    .line 662
    .local v12, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v12}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    #@4c
    move-result-object v13

    #@4d
    .line 663
    .local v13, "nodeClone":Landroid/animation/AnimatorSet$Node;
    invoke-static {v12, v13}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@50
    .line 664
    iget-object v15, v1, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    .line 665
    iget-object v15, v1, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    #@57
    iget-object v0, v13, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@59
    move-object/from16 v16, v0

    #@5b
    move-object/from16 v0, v16

    #@5d
    invoke-virtual {v15, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 667
    const/4 v15, 0x0

    #@61
    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@63
    .line 668
    const/4 v15, 0x0

    #@64
    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@66
    .line 669
    const/4 v15, 0x0

    #@67
    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@69
    .line 670
    const/4 v15, 0x0

    #@6a
    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@6c
    .line 674
    iget-object v15, v13, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@6e
    invoke-virtual {v15}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    #@71
    move-result-object v4

    #@72
    .line 675
    .local v4, "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v4, :cond_1

    #@74
    .line 676
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@77
    move-result v15

    #@78
    add-int/lit8 v9, v15, -0x1

    #@7a
    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_1

    #@7c
    .line 677
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v10

    #@80
    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    #@82
    .line 678
    .local v10, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v15, v10, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@84
    if-eqz v15, :cond_0

    #@86
    .line 679
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@89
    .line 676
    :cond_0
    add-int/lit8 v9, v9, -0x1

    #@8b
    goto :goto_1

    #@8c
    .line 660
    .end local v9    # "i":I
    .end local v10    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 686
    .end local v4    # "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v12    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v13    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    :cond_2
    const/4 v11, 0x0

    #@90
    :goto_2
    if-ge v11, v14, :cond_6

    #@92
    .line 687
    move-object/from16 v0, p0

    #@94
    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v12

    #@9a
    check-cast v12, Landroid/animation/AnimatorSet$Node;

    #@9c
    .line 688
    .restart local v12    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-static {v12}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@9f
    move-result-object v2

    #@a0
    .line 689
    .local v2, "clone":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@a2
    if-eqz v15, :cond_3

    #@a4
    .line 690
    new-instance v15, Ljava/util/ArrayList;

    #@a6
    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@a8
    move-object/from16 v16, v0

    #@aa
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@ad
    move-result v16

    #@ae
    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    #@b1
    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@b3
    .line 691
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@b5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@b8
    move-result v7

    #@b9
    .line 692
    .local v7, "depSize":I
    const/4 v9, 0x0

    #@ba
    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v7, :cond_3

    #@bc
    .line 693
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@be
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c1
    move-result-object v8

    #@c2
    check-cast v8, Landroid/animation/AnimatorSet$Dependency;

    #@c4
    .line 694
    .local v8, "dependency":Landroid/animation/AnimatorSet$Dependency;
    new-instance v3, Landroid/animation/AnimatorSet$Dependency;

    #@c6
    iget-object v15, v8, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@c8
    invoke-static {v15}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@cb
    move-result-object v15

    #@cc
    .line 695
    iget v0, v8, Landroid/animation/AnimatorSet$Dependency;->rule:I

    #@ce
    move/from16 v16, v0

    #@d0
    .line 694
    move/from16 v0, v16

    #@d2
    invoke-direct {v3, v15, v0}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    #@d5
    .line 696
    .local v3, "cloneDependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@d7
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@da
    .line 692
    add-int/lit8 v9, v9, 0x1

    #@dc
    goto :goto_3

    #@dd
    .line 699
    .end local v3    # "cloneDependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v7    # "depSize":I
    .end local v8    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v9    # "i":I
    :cond_3
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@df
    if-eqz v15, :cond_4

    #@e1
    .line 700
    new-instance v15, Ljava/util/ArrayList;

    #@e3
    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@e5
    move-object/from16 v16, v0

    #@e7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@ea
    move-result v16

    #@eb
    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    #@ee
    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@f0
    .line 701
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@f2
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f5
    move-result-object v6

    #@f6
    .local v6, "dep$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@f9
    move-result v15

    #@fa
    if-eqz v15, :cond_4

    #@fc
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ff
    move-result-object v5

    #@100
    check-cast v5, Landroid/animation/AnimatorSet$Node;

    #@102
    .line 702
    .local v5, "dep":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@104
    invoke-static {v5}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@107
    move-result-object v16

    #@108
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10b
    goto :goto_4

    #@10c
    .line 705
    .end local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "dep$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@10e
    if-eqz v15, :cond_5

    #@110
    .line 706
    new-instance v15, Ljava/util/ArrayList;

    #@112
    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@114
    move-object/from16 v16, v0

    #@116
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@119
    move-result v16

    #@11a
    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    #@11d
    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@11f
    .line 707
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@121
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v6

    #@125
    .restart local v6    # "dep$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@128
    move-result v15

    #@129
    if-eqz v15, :cond_5

    #@12b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12e
    move-result-object v5

    #@12f
    check-cast v5, Landroid/animation/AnimatorSet$Node;

    #@131
    .line 708
    .restart local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@133
    invoke-static {v5}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@136
    move-result-object v16

    #@137
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13a
    goto :goto_5

    #@13b
    .line 686
    .end local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "dep$iterator":Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    #@13d
    goto/16 :goto_2

    #@13f
    .line 712
    .end local v2    # "clone":Landroid/animation/AnimatorSet$Node;
    .end local v12    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_6
    const/4 v11, 0x0

    #@140
    :goto_6
    if-ge v11, v14, :cond_7

    #@142
    .line 713
    move-object/from16 v0, p0

    #@144
    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@146
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@149
    move-result-object v15

    #@14a
    check-cast v15, Landroid/animation/AnimatorSet$Node;

    #@14c
    const/16 v16, 0x0

    #@14e
    invoke-static/range {v15 .. v16}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    #@151
    .line 712
    add-int/lit8 v11, v11, 0x1

    #@153
    goto :goto_6

    #@154
    .line 715
    :cond_7
    return-object v1
.end method

.method public end()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 356
    const/4 v5, 0x1

    #@2
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@4
    .line 357
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_5

    #@a
    .line 358
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v5

    #@10
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v6

    #@16
    if-eq v5, v6, :cond_1

    #@18
    .line 360
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    #@1b
    .line 361
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@1d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    .local v3, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    #@2d
    .line 362
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@2f
    if-nez v5, :cond_0

    #@31
    .line 363
    new-instance v5, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@33
    invoke-direct {v5, p0, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    #@36
    iput-object v5, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@38
    .line 365
    :cond_0
    iget-object v5, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@3a
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@3c
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3f
    goto :goto_0

    #@40
    .line 368
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "node$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@42
    if-eqz v5, :cond_2

    #@44
    .line 369
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@46
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    #@49
    .line 371
    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v5

    #@4f
    if-lez v5, :cond_3

    #@51
    .line 372
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@53
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v3

    #@57
    .restart local v3    # "node$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v5

    #@5b
    if-eqz v5, :cond_3

    #@5d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    #@63
    .line 373
    .restart local v2    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@65
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    #@68
    goto :goto_1

    #@69
    .line 376
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "node$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@6b
    if-eqz v5, :cond_4

    #@6d
    .line 378
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    check-cast v4, Ljava/util/ArrayList;

    #@75
    .line 379
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@78
    move-result-object v1

    #@79
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7c
    move-result v5

    #@7d
    if-eqz v5, :cond_4

    #@7f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    #@85
    .line 380
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@88
    goto :goto_2

    #@89
    .line 383
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    iput-boolean v7, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@8b
    .line 355
    :cond_5
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    #@0
    .prologue
    .line 249
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    .line 250
    .local v0, "conf":I
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 251
    .local v2, "nodeCount":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 252
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    #@15
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@17
    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    #@1a
    move-result v3

    #@1b
    or-int/2addr v0, v3

    #@1c
    .line 251
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 254
    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 4
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
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 219
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@17
    .line 220
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_0

    #@1d
    .line 222
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 442
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 415
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@2
    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    #@0
    .prologue
    .line 394
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "node$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@12
    .line 395
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@14
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 396
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 399
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    const/4 v2, 0x0

    #@1d
    return v2
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    #@2
    return v0
.end method

.method public pause()V
    .locals 4

    #@0
    .prologue
    .line 479
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@2
    .line 480
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    #@5
    .line 481
    if-nez v2, :cond_0

    #@7
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 482
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 483
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@11
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->pause()V

    #@14
    .line 478
    :cond_0
    return-void

    #@15
    .line 485
    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@27
    .line 486
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@29
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    #@2c
    goto :goto_0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 305
    if-eqz p1, :cond_0

    #@3
    .line 306
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@6
    .line 307
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    #@8
    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    #@b
    return-object v0

    #@c
    .line 309
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
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 196
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    .line 197
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@c
    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    if-ne v1, v3, :cond_1

    #@12
    .line 199
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/animation/Animator;

    #@18
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1b
    .line 195
    :cond_0
    return-void

    #@1c
    .line 201
    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@1e
    .line 202
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@22
    move-result v1

    #@23
    add-int/lit8 v1, v1, -0x1

    #@25
    if-ge v0, v1, :cond_0

    #@27
    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Landroid/animation/Animator;

    #@2d
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@30
    move-result-object v2

    #@31
    add-int/lit8 v1, v0, 0x1

    #@33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Landroid/animation/Animator;

    #@39
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@3c
    .line 202
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 4
    .param p1, "items"    # [Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 176
    if-eqz p1, :cond_0

    #@4
    .line 177
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@6
    .line 178
    array-length v1, p1

    #@7
    if-ne v1, v3, :cond_1

    #@9
    .line 179
    aget-object v1, p1, v2

    #@b
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@e
    .line 175
    :cond_0
    return-void

    #@f
    .line 181
    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@11
    .line 182
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    if-ge v0, v1, :cond_0

    #@17
    .line 183
    aget-object v1, p1, v0

    #@19
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1c
    move-result-object v1

    #@1d
    add-int/lit8 v2, v0, 0x1

    #@1f
    aget-object v2, p1, v2

    #@21
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@24
    .line 182
    add-int/lit8 v0, v0, 0x1

    #@26
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
    .line 156
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v3

    #@6
    if-lez v3, :cond_1

    #@8
    .line 157
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@b
    .line 158
    const/4 v2, 0x0

    #@c
    .line 159
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/animation/Animator;

    #@1c
    .line 160
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    #@1e
    .line 161
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@21
    move-result-object v2

    #@22
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    #@23
    .line 163
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@26
    goto :goto_0

    #@27
    .line 155
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
    .line 141
    if-eqz p1, :cond_0

    #@2
    .line 142
    const/4 v2, 0x1

    #@3
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@5
    .line 143
    const/4 v2, 0x0

    #@6
    aget-object v2, p1, v2

    #@8
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@b
    move-result-object v0

    #@c
    .line 144
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    #@d
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@e
    if-ge v1, v2, :cond_0

    #@10
    .line 145
    aget-object v2, p1, v1

    #@12
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@15
    .line 144
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 140
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    #@0
    .prologue
    .line 494
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@2
    .line 495
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    #@5
    .line 496
    if-eqz v2, :cond_0

    #@7
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 493
    :cond_0
    :goto_0
    return-void

    #@c
    .line 497
    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 498
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@12
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->resume()V

    #@15
    goto :goto_0

    #@16
    .line 500
    :cond_2
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@28
    .line 501
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@2a
    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    #@2d
    goto :goto_1
.end method

.method public reverse()V
    .locals 3

    #@0
    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 970
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@18
    .line 971
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@1a
    invoke-virtual {v2}, Landroid/animation/Animator;->reverse()V

    #@1d
    goto :goto_0

    #@1e
    .line 968
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v1    # "node$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 454
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
    .line 455
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "duration must be a value of zero or greater"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 459
    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    #@11
    .line 460
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    .line 267
    return-void
.end method

.method public setStartDelay(J)V
    .locals 5
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 426
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    .line 427
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    #@b
    .line 429
    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@d
    .line 425
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 234
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@12
    .line 235
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@14
    .line 236
    .local v0, "animation":Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/AnimatorSet;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 237
    check-cast v0, Landroid/animation/AnimatorSet;

    #@1a
    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    #@1d
    goto :goto_0

    #@1e
    .line 238
    .restart local v0    # "animation":Landroid/animation/Animator;
    :cond_1
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 239
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@24
    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@27
    goto :goto_0

    #@28
    .line 233
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 3

    #@0
    .prologue
    .line 472
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@12
    .line 473
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@14
    invoke-virtual {v2}, Landroid/animation/Animator;->setupEndValues()V

    #@17
    goto :goto_0

    #@18
    .line 471
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 3

    #@0
    .prologue
    .line 465
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@12
    .line 466
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@14
    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    #@17
    goto :goto_0

    #@18
    .line 464
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 22

    #@0
    .prologue
    .line 517
    const/16 v18, 0x0

    #@2
    move/from16 v0, v18

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@8
    .line 518
    const/16 v18, 0x1

    #@a
    move/from16 v0, v18

    #@c
    move-object/from16 v1, p0

    #@e
    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    #@10
    .line 519
    const/16 v18, 0x0

    #@12
    move/from16 v0, v18

    #@14
    move-object/from16 v1, p0

    #@16
    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mPaused:Z

    #@18
    .line 521
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@1c
    move-object/from16 v18, v0

    #@1e
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v11

    #@22
    .local v11, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v18

    #@26
    if-eqz v18, :cond_0

    #@28
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v10

    #@2c
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@2e
    .line 522
    .local v10, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@30
    move-object/from16 v18, v0

    #@32
    const/16 v19, 0x0

    #@34
    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    #@37
    goto :goto_0

    #@38
    .line 525
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    move-object/from16 v0, p0

    #@3a
    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    #@3c
    move-wide/from16 v18, v0

    #@3e
    const-wide/16 v20, 0x0

    #@40
    cmp-long v18, v18, v20

    #@42
    if-ltz v18, :cond_1

    #@44
    .line 527
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@48
    move-object/from16 v18, v0

    #@4a
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v11

    #@4e
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v18

    #@52
    if-eqz v18, :cond_1

    #@54
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v10

    #@58
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@5a
    .line 530
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@5c
    move-object/from16 v18, v0

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    #@62
    move-wide/from16 v20, v0

    #@64
    move-object/from16 v0, v18

    #@66
    move-wide/from16 v1, v20

    #@68
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@6b
    goto :goto_1

    #@6c
    .line 533
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@70
    move-object/from16 v18, v0

    #@72
    if-eqz v18, :cond_2

    #@74
    .line 534
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@78
    move-object/from16 v18, v0

    #@7a
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v11

    #@7e
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result v18

    #@82
    if-eqz v18, :cond_2

    #@84
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v10

    #@88
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@8a
    .line 535
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@8c
    move-object/from16 v18, v0

    #@8e
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@92
    move-object/from16 v19, v0

    #@94
    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@97
    goto :goto_2

    #@98
    .line 540
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    #@9b
    .line 542
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@9f
    move-object/from16 v18, v0

    #@a1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@a4
    move-result v15

    #@a5
    .line 543
    .local v15, "numSortedNodes":I
    const/4 v6, 0x0

    #@a6
    .local v6, "i":I
    :goto_3
    if-ge v6, v15, :cond_6

    #@a8
    .line 544
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@ac
    move-object/from16 v18, v0

    #@ae
    move-object/from16 v0, v18

    #@b0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v10

    #@b4
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@b6
    .line 546
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@b8
    move-object/from16 v18, v0

    #@ba
    invoke-virtual/range {v18 .. v18}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    #@bd
    move-result-object v16

    #@be
    .line 547
    .local v16, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v16, :cond_5

    #@c0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@c3
    move-result v18

    #@c4
    if-lez v18, :cond_5

    #@c6
    .line 548
    new-instance v4, Ljava/util/ArrayList;

    #@c8
    move-object/from16 v0, v16

    #@ca
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@cd
    .line 551
    .local v4, "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d0
    move-result-object v9

    #@d1
    .local v9, "listener$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@d4
    move-result v18

    #@d5
    if-eqz v18, :cond_5

    #@d7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@da
    move-result-object v8

    #@db
    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    #@dd
    .line 552
    .local v8, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v0, v8, Landroid/animation/AnimatorSet$DependencyListener;

    #@df
    move/from16 v18, v0

    #@e1
    if-nez v18, :cond_4

    #@e3
    .line 553
    instance-of v0, v8, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@e5
    move/from16 v18, v0

    #@e7
    .line 552
    if-eqz v18, :cond_3

    #@e9
    .line 554
    :cond_4
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@eb
    move-object/from16 v18, v0

    #@ed
    move-object/from16 v0, v18

    #@ef
    invoke-virtual {v0, v8}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@f2
    goto :goto_4

    #@f3
    .line 543
    .end local v4    # "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v8    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@f5
    goto :goto_3

    #@f6
    .line 564
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v16    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    #@f8
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@fb
    .line 565
    .local v12, "nodesToStart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v6, 0x0

    #@fc
    :goto_5
    if-ge v6, v15, :cond_b

    #@fe
    .line 566
    move-object/from16 v0, p0

    #@100
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@102
    move-object/from16 v18, v0

    #@104
    move-object/from16 v0, v18

    #@106
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@109
    move-result-object v10

    #@10a
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@10c
    .line 567
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@110
    move-object/from16 v18, v0

    #@112
    if-nez v18, :cond_7

    #@114
    .line 568
    new-instance v18, Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@116
    move-object/from16 v0, v18

    #@118
    move-object/from16 v1, p0

    #@11a
    move-object/from16 v2, p0

    #@11c
    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    #@11f
    move-object/from16 v0, v18

    #@121
    move-object/from16 v1, p0

    #@123
    iput-object v0, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@125
    .line 570
    :cond_7
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@127
    move-object/from16 v18, v0

    #@129
    if-eqz v18, :cond_8

    #@12b
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@12d
    move-object/from16 v18, v0

    #@12f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@132
    move-result v18

    #@133
    if-nez v18, :cond_9

    #@135
    .line 571
    :cond_8
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@138
    .line 581
    :goto_6
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@13a
    move-object/from16 v18, v0

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    #@140
    move-object/from16 v19, v0

    #@142
    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@145
    .line 565
    add-int/lit8 v6, v6, 0x1

    #@147
    goto :goto_5

    #@148
    .line 573
    :cond_9
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@14a
    move-object/from16 v18, v0

    #@14c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@14f
    move-result v13

    #@150
    .line 574
    .local v13, "numDependencies":I
    const/4 v7, 0x0

    #@151
    .local v7, "j":I
    :goto_7
    if-ge v7, v13, :cond_a

    #@153
    .line 575
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@155
    move-object/from16 v18, v0

    #@157
    move-object/from16 v0, v18

    #@159
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15c
    move-result-object v5

    #@15d
    check-cast v5, Landroid/animation/AnimatorSet$Dependency;

    #@15f
    .line 576
    .local v5, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v0, v5, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@161
    move-object/from16 v18, v0

    #@163
    move-object/from16 v0, v18

    #@165
    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@167
    move-object/from16 v18, v0

    #@169
    .line 577
    new-instance v19, Landroid/animation/AnimatorSet$DependencyListener;

    #@16b
    iget v0, v5, Landroid/animation/AnimatorSet$Dependency;->rule:I

    #@16d
    move/from16 v20, v0

    #@16f
    move-object/from16 v0, v19

    #@171
    move-object/from16 v1, p0

    #@173
    move/from16 v2, v20

    #@175
    invoke-direct {v0, v1, v10, v2}, Landroid/animation/AnimatorSet$DependencyListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V

    #@178
    .line 576
    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@17b
    .line 574
    add-int/lit8 v7, v7, 0x1

    #@17d
    goto :goto_7

    #@17e
    .line 579
    .end local v5    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    :cond_a
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@180
    move-object/from16 v18, v0

    #@182
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@185
    move-result-object v18

    #@186
    check-cast v18, Ljava/util/ArrayList;

    #@188
    move-object/from16 v0, v18

    #@18a
    iput-object v0, v10, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@18c
    goto :goto_6

    #@18d
    .line 584
    .end local v7    # "j":I
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v13    # "numDependencies":I
    :cond_b
    move-object/from16 v0, p0

    #@18f
    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@191
    move-wide/from16 v18, v0

    #@193
    const-wide/16 v20, 0x0

    #@195
    cmp-long v18, v18, v20

    #@197
    if-gtz v18, :cond_c

    #@199
    .line 585
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19c
    move-result-object v11

    #@19d
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1a0
    move-result v18

    #@1a1
    if-eqz v18, :cond_d

    #@1a3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a6
    move-result-object v10

    #@1a7
    check-cast v10, Landroid/animation/AnimatorSet$Node;

    #@1a9
    .line 586
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@1ab
    move-object/from16 v18, v0

    #@1ad
    invoke-virtual/range {v18 .. v18}, Landroid/animation/Animator;->start()V

    #@1b0
    .line 587
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    #@1b4
    move-object/from16 v18, v0

    #@1b6
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@1b8
    move-object/from16 v19, v0

    #@1ba
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1bd
    goto :goto_8

    #@1be
    .line 590
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_c
    const/16 v18, 0x2

    #@1c0
    move/from16 v0, v18

    #@1c2
    new-array v0, v0, [F

    #@1c4
    move-object/from16 v18, v0

    #@1c6
    fill-array-data v18, :array_0

    #@1c9
    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@1cc
    move-result-object v18

    #@1cd
    move-object/from16 v0, v18

    #@1cf
    move-object/from16 v1, p0

    #@1d1
    iput-object v0, v1, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@1d3
    .line 591
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@1d7
    move-object/from16 v18, v0

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@1dd
    move-wide/from16 v20, v0

    #@1df
    move-object/from16 v0, v18

    #@1e1
    move-wide/from16 v1, v20

    #@1e3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@1e6
    .line 592
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@1ea
    move-object/from16 v18, v0

    #@1ec
    new-instance v19, Landroid/animation/AnimatorSet$1;

    #@1ee
    move-object/from16 v0, v19

    #@1f0
    move-object/from16 v1, p0

    #@1f2
    invoke-direct {v0, v1, v12}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    #@1f5
    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1f8
    .line 609
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    #@1fc
    move-object/from16 v18, v0

    #@1fe
    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    #@201
    .line 611
    :cond_d
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@205
    move-object/from16 v18, v0

    #@207
    if-eqz v18, :cond_e

    #@209
    .line 613
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@20d
    move-object/from16 v18, v0

    #@20f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@212
    move-result-object v17

    #@213
    check-cast v17, Ljava/util/ArrayList;

    #@215
    .line 614
    .local v17, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@218
    move-result v14

    #@219
    .line 615
    .local v14, "numListeners":I
    const/4 v6, 0x0

    #@21a
    :goto_9
    if-ge v6, v14, :cond_e

    #@21c
    .line 616
    move-object/from16 v0, v17

    #@21e
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@221
    move-result-object v18

    #@222
    check-cast v18, Landroid/animation/Animator$AnimatorListener;

    #@224
    move-object/from16 v0, v18

    #@226
    move-object/from16 v1, p0

    #@228
    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@22b
    .line 615
    add-int/lit8 v6, v6, 0x1

    #@22d
    goto :goto_9

    #@22e
    .line 619
    .end local v14    # "numListeners":I
    .end local v17    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_e
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    #@232
    move-object/from16 v18, v0

    #@234
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@237
    move-result v18

    #@238
    if-nez v18, :cond_f

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    #@23e
    move-wide/from16 v18, v0

    #@240
    const-wide/16 v20, 0x0

    #@242
    cmp-long v18, v18, v20

    #@244
    if-nez v18, :cond_f

    #@246
    .line 622
    const/16 v18, 0x0

    #@248
    move/from16 v0, v18

    #@24a
    move-object/from16 v1, p0

    #@24c
    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    #@24e
    .line 623
    move-object/from16 v0, p0

    #@250
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@252
    move-object/from16 v18, v0

    #@254
    if-eqz v18, :cond_f

    #@256
    .line 625
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@25a
    move-object/from16 v18, v0

    #@25c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@25f
    move-result-object v17

    #@260
    check-cast v17, Ljava/util/ArrayList;

    #@262
    .line 626
    .restart local v17    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@265
    move-result v14

    #@266
    .line 627
    .restart local v14    # "numListeners":I
    const/4 v6, 0x0

    #@267
    :goto_a
    if-ge v6, v14, :cond_f

    #@269
    .line 628
    move-object/from16 v0, v17

    #@26b
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26e
    move-result-object v18

    #@26f
    check-cast v18, Landroid/animation/Animator$AnimatorListener;

    #@271
    move-object/from16 v0, v18

    #@273
    move-object/from16 v1, p0

    #@275
    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@278
    .line 627
    add-int/lit8 v6, v6, 0x1

    #@27a
    goto :goto_a

    #@27b
    .line 516
    .end local v14    # "numListeners":I
    .end local v17    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_f
    return-void

    #@27c
    .line 590
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 978
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
    move-result-object v3

    #@23
    .line 979
    .local v3, "returnVal":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@25
    .line 980
    .local v2, "prevNeedsSort":Z
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    #@28
    .line 981
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    #@2a
    .line 982
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    #@2c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_0

    #@36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@3c
    .line 983
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    const-string/jumbo v5, "\n    "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    iget-object v5, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@4e
    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    goto :goto_0

    #@5b
    .line 985
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    const-string/jumbo v5, "\n}"

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    return-object v4
.end method
