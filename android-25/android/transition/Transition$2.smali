.class Landroid/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Transition;

.field final synthetic val$runningAnimators:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 888
    .local p2, "val$runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iput-object p1, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    #@2
    iput-object p2, p0, Landroid/transition/Transition$2;->val$runningAnimators:Landroid/util/ArrayMap;

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 895
    iget-object v0, p0, Landroid/transition/Transition$2;->val$runningAnimators:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 896
    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    #@7
    invoke-static {v0}, Landroid/transition/Transition;->-get0(Landroid/transition/Transition;)Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    .line 894
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    #@2
    invoke-static {v0}, Landroid/transition/Transition;->-get0(Landroid/transition/Transition;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 890
    return-void
.end method
