.class Landroid/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mNode:Landroid/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V
    .locals 0
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 735
    iput-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@5
    .line 736
    iput-object p2, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@7
    .line 737
    iput p3, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    #@9
    .line 734
    return-void
.end method

.method private startIfReady(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "dependencyAnimation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 779
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2
    iget-boolean v4, v4, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 781
    return-void

    #@7
    .line 783
    :cond_0
    const/4 v1, 0x0

    #@8
    .line 784
    .local v1, "dependencyToRemove":Landroid/animation/AnimatorSet$Dependency;
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@a
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v3

    #@10
    .line 785
    .local v3, "numDependencies":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@13
    .line 786
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@15
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    #@1d
    .line 787
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget v4, v0, Landroid/animation/AnimatorSet$Dependency;->rule:I

    #@1f
    iget v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    #@21
    if-ne v4, v5, :cond_3

    #@23
    .line 788
    iget-object v4, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@25
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@27
    if-ne v4, p1, :cond_3

    #@29
    .line 791
    move-object v1, v0

    #@2a
    .line 792
    .local v1, "dependencyToRemove":Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2d
    .line 796
    .end local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v1    # "dependencyToRemove":Landroid/animation/AnimatorSet$Dependency;
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@2f
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@34
    .line 797
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@36
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_2

    #@3e
    .line 799
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@40
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@42
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    #@45
    .line 800
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@47
    invoke-static {v4}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@4a
    move-result-object v4

    #@4b
    iget-object v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    #@4d
    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@4f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 778
    :cond_2
    return-void

    #@53
    .line 785
    .restart local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .local v1, "dependencyToRemove":Landroid/animation/AnimatorSet$Dependency;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 745
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 752
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 753
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    #@8
    .line 751
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 760
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 767
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 768
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    #@7
    .line 766
    :cond_0
    return-void
.end method
