.class Landroid/transition/TransitionManager$MultiListener$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/transition/TransitionManager$MultiListener;

.field final synthetic val$runningTransitions:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$1"    # Landroid/transition/TransitionManager$MultiListener;

    #@0
    .prologue
    .line 292
    .local p2, "val$runningTransitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$1:Landroid/transition/TransitionManager$MultiListener;

    #@2
    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    #@4
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    #@2
    iget-object v2, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$1:Landroid/transition/TransitionManager$MultiListener;

    #@4
    iget-object v2, v2, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@6
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/ArrayList;

    #@c
    .line 297
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f
    .line 294
    return-void
.end method
