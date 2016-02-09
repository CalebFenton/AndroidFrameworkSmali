.class Landroid/animation/LayoutTransition$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$preAnimAlpha:F


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/View;FLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$preAnimAlpha"    # F
    .param p4, "val$parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1218
    iput-object p1, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    #@2
    iput-object p2, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    #@4
    iput p3, p0, Landroid/animation/LayoutTransition$5;->val$preAnimAlpha:F

    #@6
    iput-object p4, p0, Landroid/animation/LayoutTransition$5;->val$parent:Landroid/view/ViewGroup;

    #@8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1221
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    #@2
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get2(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    #@8
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1222
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    #@d
    iget v4, p0, Landroid/animation/LayoutTransition$5;->val$preAnimAlpha:F

    #@f
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    #@12
    .line 1223
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    #@14
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-wrap0(Landroid/animation/LayoutTransition;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 1225
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    #@1c
    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get13(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/util/ArrayList;

    #@26
    .line 1226
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    #@36
    .line 1227
    .local v0, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    #@38
    iget-object v4, p0, Landroid/animation/LayoutTransition$5;->val$parent:Landroid/view/ViewGroup;

    #@3a
    iget-object v5, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    #@3c
    const/4 v6, 0x3

    #@3d
    invoke-interface {v0, v3, v4, v5, v6}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@40
    goto :goto_0

    #@41
    .line 1220
    .end local v0    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_0
    return-void
.end method
