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
.field final synthetic blacklist this$0:Landroid/transition/Transition;

.field final synthetic blacklist val$runningAnimators:Landroid/util/ArrayMap;


# direct methods
.method constructor blacklist <init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V
    .registers 3
    .param p1, "this$0"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 896
    iput-object p1, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/transition/Transition$2;->val$runningAnimators:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 903
    iget-object v0, p0, Landroid/transition/Transition$2;->val$runningAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    invoke-static {v0}, Landroid/transition/Transition;->-$$Nest$fgetmCurrentAnimators(Landroid/transition/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 899
    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    invoke-static {v0}, Landroid/transition/Transition;->-$$Nest$fgetmCurrentAnimators(Landroid/transition/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    return-void
.end method
