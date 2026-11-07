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
.field final synthetic blacklist this$0:Landroid/animation/LayoutTransition;

.field final synthetic blacklist val$changeReason:I

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$listener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic blacklist val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V
    .registers 6
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 962
    iput-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iput p4, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    iput-object p5, p0, Landroid/animation/LayoutTransition$3;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 980
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 981
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$fgetlayoutChangeListenerMap(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 10
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 986
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$fgetcurrentChangingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$mhasListeners(Landroid/animation/LayoutTransition;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 988
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmListeners(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 990
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/LayoutTransition$TransitionListener;

    .line 991
    .local v2, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    .line 992
    iget v6, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3c

    .line 993
    const/4 v6, 0x0

    goto :goto_44

    :cond_3c
    iget v6, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_43

    .line 994
    const/4 v6, 0x1

    goto :goto_44

    :cond_43
    const/4 v6, 0x4

    .line 991
    :goto_44
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 995
    .end local v2    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    goto :goto_23

    .line 997
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_48
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 10
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 966
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$mhasListeners(Landroid/animation/LayoutTransition;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 967
    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmListeners(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 969
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/LayoutTransition$TransitionListener;

    .line 970
    .local v2, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    .line 971
    iget v6, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_31

    .line 972
    const/4 v6, 0x0

    goto :goto_39

    :cond_31
    iget v6, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_38

    .line 973
    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x4

    .line 970
    :goto_39
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 974
    .end local v2    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    goto :goto_18

    .line 976
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_3d
    return-void
.end method
