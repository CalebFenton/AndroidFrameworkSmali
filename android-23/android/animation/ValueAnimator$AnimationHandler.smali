.class public Landroid/animation/ValueAnimator$AnimationHandler;
.super Ljava/lang/Object;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimationHandler$1;,
        Landroid/animation/ValueAnimator$AnimationHandler$2;
    }
.end annotation


# instance fields
.field final mAnimate:Ljava/lang/Runnable;

.field private mAnimationScheduled:Z

.field protected final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Landroid/view/Choreographer;

.field final mCommit:Ljava/lang/Runnable;

.field protected final mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field protected final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/animation/ValueAnimator$AnimationHandler;)Landroid/view/Choreographer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/ValueAnimator$AnimationHandler;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    #@2
    return p1
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 674
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@a
    .line 677
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    #@11
    .line 681
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@18
    .line 688
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@1f
    .line 689
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    #@26
    .line 690
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    #@2d
    .line 797
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler$1;

    #@2f
    invoke-direct {v0, p0}, Landroid/animation/ValueAnimator$AnimationHandler$1;-><init>(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@32
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimate:Ljava/lang/Runnable;

    #@34
    .line 806
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler$2;

    #@36
    invoke-direct {v0, p0}, Landroid/animation/ValueAnimator$AnimationHandler$2;-><init>(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@39
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mCommit:Ljava/lang/Runnable;

    #@3b
    .line 697
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    #@41
    .line 696
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    #@3
    return-void
.end method

.method private scheduleAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 790
    iget-boolean v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 791
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    #@7
    iget-object v1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimate:Ljava/lang/Runnable;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@d
    .line 792
    iput-boolean v3, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    #@f
    .line 789
    :cond_0
    return-void
.end method


# virtual methods
.method commitAnimationFrame(J)V
    .locals 7
    .param p1, "frameTime"    # J

    #@0
    .prologue
    .line 782
    iget-wide v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mLastFrameTime:J

    #@2
    sub-long v0, p1, v4

    #@4
    .line 783
    .local v0, "adjustment":J
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    .line 784
    .local v3, "numAnims":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@d
    .line 785
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroid/animation/ValueAnimator;

    #@15
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->commitAnimationFrame(J)V

    #@18
    .line 784
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 781
    :cond_0
    return-void
.end method

.method doAnimationFrame(J)V
    .locals 13
    .param p1, "frameTime"    # J

    #@0
    .prologue
    .line 708
    iput-wide p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mLastFrameTime:J

    #@2
    .line 715
    :cond_0
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v7

    #@8
    if-lez v7, :cond_2

    #@a
    .line 717
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Ljava/util/ArrayList;

    #@12
    .line 718
    .local v6, "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@17
    .line 719
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v1

    #@1b
    .line 720
    .local v1, "count":I
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@1e
    .line 721
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/animation/ValueAnimator;

    #@24
    .line 723
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-static {v0}, Landroid/animation/ValueAnimator;->-get0(Landroid/animation/ValueAnimator;)J

    #@27
    move-result-wide v8

    #@28
    const-wide/16 v10, 0x0

    #@2a
    cmp-long v7, v8, v10

    #@2c
    if-nez v7, :cond_1

    #@2e
    .line 724
    invoke-static {v0, p0}, Landroid/animation/ValueAnimator;->-wrap1(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@31
    .line 720
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 726
    :cond_1
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_1

    #@3a
    .line 733
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_2
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v4

    #@40
    .line 734
    .local v4, "numDelayedAnims":I
    const/4 v2, 0x0

    #@41
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_4

    #@43
    .line 735
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/animation/ValueAnimator;

    #@4b
    .line 736
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    invoke-static {v0, p1, p2}, Landroid/animation/ValueAnimator;->-wrap0(Landroid/animation/ValueAnimator;J)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_3

    #@51
    .line 737
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 734
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_2

    #@59
    .line 740
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_4
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v5

    #@5f
    .line 741
    .local v5, "numReadyAnims":I
    if-lez v5, :cond_6

    #@61
    .line 742
    const/4 v2, 0x0

    #@62
    :goto_3
    if-ge v2, v5, :cond_5

    #@64
    .line 743
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    #@66
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Landroid/animation/ValueAnimator;

    #@6c
    .line 744
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    invoke-static {v0, p0}, Landroid/animation/ValueAnimator;->-wrap1(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@6f
    .line 745
    const/4 v7, 0x1

    #@70
    invoke-static {v0, v7}, Landroid/animation/ValueAnimator;->-set0(Landroid/animation/ValueAnimator;Z)Z

    #@73
    .line 746
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@78
    .line 742
    add-int/lit8 v2, v2, 0x1

    #@7a
    goto :goto_3

    #@7b
    .line 748
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_5
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@80
    .line 753
    :cond_6
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@85
    move-result v3

    #@86
    .line 754
    .local v3, "numAnims":I
    const/4 v2, 0x0

    #@87
    :goto_4
    if-ge v2, v3, :cond_7

    #@89
    .line 755
    iget-object v8, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    #@8b
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v7

    #@91
    check-cast v7, Landroid/animation/ValueAnimator;

    #@93
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@96
    .line 754
    add-int/lit8 v2, v2, 0x1

    #@98
    goto :goto_4

    #@99
    .line 757
    :cond_7
    const/4 v2, 0x0

    #@9a
    :goto_5
    if-ge v2, v3, :cond_9

    #@9c
    .line 758
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v0

    #@a2
    check-cast v0, Landroid/animation/ValueAnimator;

    #@a4
    .line 759
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@a9
    move-result v7

    #@aa
    if-eqz v7, :cond_8

    #@ac
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    #@af
    move-result v7

    #@b0
    if-eqz v7, :cond_8

    #@b2
    .line 760
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    .line 757
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@b9
    goto :goto_5

    #@ba
    .line 763
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_9
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    #@bc
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@bf
    .line 764
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@c4
    move-result v7

    #@c5
    if-lez v7, :cond_b

    #@c7
    .line 765
    const/4 v2, 0x0

    #@c8
    :goto_6
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    #@ca
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@cd
    move-result v7

    #@ce
    if-ge v2, v7, :cond_a

    #@d0
    .line 766
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    #@d2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d5
    move-result-object v7

    #@d6
    check-cast v7, Landroid/animation/ValueAnimator;

    #@d8
    invoke-virtual {v7, p0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    #@db
    .line 765
    add-int/lit8 v2, v2, 0x1

    #@dd
    goto :goto_6

    #@de
    .line 768
    :cond_a
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@e3
    .line 772
    :cond_b
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    #@e5
    iget-object v8, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mCommit:Ljava/lang/Runnable;

    #@e7
    const/4 v9, 0x3

    #@e8
    const/4 v10, 0x0

    #@e9
    invoke-virtual {v7, v9, v8, v10}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@ec
    .line 776
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@ee
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@f1
    move-result v7

    #@f2
    if-eqz v7, :cond_c

    #@f4
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@f6
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@f9
    move-result v7

    #@fa
    if-eqz v7, :cond_c

    #@fc
    .line 707
    :goto_7
    return-void

    #@fd
    .line 777
    :cond_c
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    #@100
    goto :goto_7
.end method

.method public start()V
    .locals 0

    #@0
    .prologue
    .line 704
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    #@3
    .line 703
    return-void
.end method
