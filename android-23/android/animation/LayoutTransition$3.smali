.class Landroid/animation/LayoutTransition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
    .param p2, "val$parent"    # Landroid/view/ViewGroup;
    .param p3, "val$child"    # Landroid/view/View;
    .param p4, "val$changeReason"    # I
    .param p5, "val$listener"    # Landroid/view/View$OnLayoutChangeListener;

    #@0
    .prologue
    .line 956
    iput-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@2
    iput-object p2, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    #@6
    iput p4, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    #@8
    iput-object p5, p0, Landroid/animation/LayoutTransition$3;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    #@a
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 974
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@7
    .line 975
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@9
    invoke-static {v0}, Landroid/animation/LayoutTransition;->-get3(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 973
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 980
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@2
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    #@8
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 981
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@d
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-wrap0(Landroid/animation/LayoutTransition;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 983
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@15
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get13(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/util/ArrayList;

    #@1f
    .line 984
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    #@2f
    .line 985
    .local v0, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@31
    iget-object v5, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    #@33
    iget-object v6, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    #@35
    .line 986
    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    #@37
    const/4 v7, 0x2

    #@38
    if-ne v3, v7, :cond_0

    #@3a
    .line 987
    const/4 v3, 0x0

    #@3b
    .line 985
    :goto_1
    invoke-interface {v0, v4, v5, v6, v3}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@3e
    goto :goto_0

    #@3f
    .line 987
    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    #@41
    const/4 v7, 0x3

    #@42
    if-ne v3, v7, :cond_1

    #@44
    .line 988
    const/4 v3, 0x1

    #@45
    goto :goto_1

    #@46
    :cond_1
    const/4 v3, 0x4

    #@47
    goto :goto_1

    #@48
    .line 979
    .end local v0    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 960
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@2
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-wrap0(Landroid/animation/LayoutTransition;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 962
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@a
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get13(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/util/ArrayList;

    #@14
    .line 963
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_2

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    #@24
    .line 964
    .local v0, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    #@26
    iget-object v5, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    #@28
    iget-object v6, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    #@2a
    .line 965
    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    #@2c
    const/4 v7, 0x2

    #@2d
    if-ne v3, v7, :cond_0

    #@2f
    .line 966
    const/4 v3, 0x0

    #@30
    .line 964
    :goto_1
    invoke-interface {v0, v4, v5, v6, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@33
    goto :goto_0

    #@34
    .line 966
    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    #@36
    const/4 v7, 0x3

    #@37
    if-ne v3, v7, :cond_1

    #@39
    .line 967
    const/4 v3, 0x1

    #@3a
    goto :goto_1

    #@3b
    :cond_1
    const/4 v3, 0x4

    #@3c
    goto :goto_1

    #@3d
    .line 959
    .end local v0    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_2
    return-void
.end method
