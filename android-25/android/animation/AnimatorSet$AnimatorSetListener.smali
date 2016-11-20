.class Landroid/animation/AnimatorSet$AnimatorSetListener;
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
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;

    #@0
    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 760
    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@5
    .line 759
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 765
    iget-object v3, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2
    invoke-static {v3}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 768
    iget-object v3, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@a
    invoke-static {v3}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_0

    #@14
    .line 769
    iget-object v3, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@16
    iget-object v1, v3, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@18
    .line 770
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v1, :cond_0

    #@1a
    .line 771
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v2

    #@1e
    .line 772
    .local v2, "numListeners":I
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@21
    .line 773
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@27
    iget-object v4, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@29
    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@2c
    .line 772
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 763
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 782
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3
    .line 783
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@5
    invoke-static {v0}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    .line 784
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@e
    invoke-static {v0, p1}, Landroid/animation/AnimatorSet;->-wrap1(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    #@11
    .line 781
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 788
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 792
    return-void
.end method
