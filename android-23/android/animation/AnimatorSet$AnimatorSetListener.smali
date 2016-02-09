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
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;
    .param p2, "animatorSet"    # Landroid/animation/AnimatorSet;

    #@0
    .prologue
    .line 810
    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 811
    iput-object p2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@7
    .line 810
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 815
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@2
    iget-boolean v2, v2, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 818
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@8
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 819
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@14
    iget-object v2, v2, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 820
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@1a
    iget-object v2, v2, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v1

    #@20
    .line 821
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@23
    .line 822
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@25
    iget-object v2, v2, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    #@2d
    iget-object v3, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2f
    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@32
    .line 821
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 814
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 831
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@4
    .line 832
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@6
    invoke-static {v7}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@9
    move-result-object v7

    #@a
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 833
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@f
    invoke-static {v7}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@19
    .line 834
    .local v1, "animNode":Landroid/animation/AnimatorSet$Node;
    const/4 v7, 0x1

    #@1a
    iput-boolean v7, v1, Landroid/animation/AnimatorSet$Node;->done:Z

    #@1c
    .line 835
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@1e
    iget-boolean v7, v7, Landroid/animation/AnimatorSet;->mTerminated:Z

    #@20
    if-nez v7, :cond_3

    #@22
    .line 838
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@24
    invoke-static {v7}, Landroid/animation/AnimatorSet;->-get3(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@27
    move-result-object v5

    #@28
    .line 839
    .local v5, "sortedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v0, 0x1

    #@29
    .line 840
    .local v0, "allDone":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v4

    #@2d
    .line 841
    .local v4, "numSortedNodes":I
    const/4 v2, 0x0

    #@2e
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@30
    .line 842
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v7

    #@34
    check-cast v7, Landroid/animation/AnimatorSet$Node;

    #@36
    iget-boolean v7, v7, Landroid/animation/AnimatorSet$Node;->done:Z

    #@38
    if-nez v7, :cond_1

    #@3a
    .line 843
    const/4 v0, 0x0

    #@3b
    .line 847
    :cond_0
    if-eqz v0, :cond_3

    #@3d
    .line 850
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@3f
    iget-object v7, v7, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@41
    if-eqz v7, :cond_2

    #@43
    .line 852
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #@45
    iget-object v7, v7, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/util/ArrayList;

    #@4d
    .line 853
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v3

    #@51
    .line 854
    .local v3, "numListeners":I
    const/4 v2, 0x0

    #@52
    :goto_1
    if-ge v2, v3, :cond_2

    #@54
    .line 855
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v7

    #@58
    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    #@5a
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@5c
    invoke-interface {v7, v8}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@5f
    .line 854
    add-int/lit8 v2, v2, 0x1

    #@61
    goto :goto_1

    #@62
    .line 841
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_0

    #@65
    .line 858
    :cond_2
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@67
    invoke-static {v7, v9}, Landroid/animation/AnimatorSet;->-set2(Landroid/animation/AnimatorSet;Z)Z

    #@6a
    .line 859
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@6c
    iput-boolean v9, v7, Landroid/animation/AnimatorSet;->mPaused:Z

    #@6e
    .line 830
    .end local v0    # "allDone":Z
    .end local v2    # "i":I
    .end local v4    # "numSortedNodes":I
    .end local v5    # "sortedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 865
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 869
    return-void
.end method
