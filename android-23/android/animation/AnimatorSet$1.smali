.class Landroid/animation/AnimatorSet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Landroid/animation/AnimatorSet;

.field final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;

    #@0
    .prologue
    .line 592
    .local p2, "val$nodesToStart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iput-object p1, p0, Landroid/animation/AnimatorSet$1;->this$0:Landroid/animation/AnimatorSet;

    #@2
    iput-object p2, p0, Landroid/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    .line 593
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/animation/AnimatorSet$1;->canceled:Z

    #@a
    .line 592
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 595
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/animation/AnimatorSet$1;->canceled:Z

    #@3
    .line 594
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 598
    iget-boolean v3, p0, Landroid/animation/AnimatorSet$1;->canceled:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 599
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 600
    .local v2, "numNodes":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@d
    .line 601
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@15
    .line 602
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@17
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    #@1a
    .line 603
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->this$0:Landroid/animation/AnimatorSet;

    #@1c
    invoke-static {v3}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@1f
    move-result-object v3

    #@20
    iget-object v4, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 600
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 606
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "numNodes":I
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->this$0:Landroid/animation/AnimatorSet;

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-static {v3, v4}, Landroid/animation/AnimatorSet;->-set0(Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    #@2e
    .line 597
    return-void
.end method
