.class Landroid/transition/Transition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/Transition;


# direct methods
.method constructor blacklist <init>(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "this$0"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1877
    iput-object p1, p0, Landroid/transition/Transition$3;->this$0:Landroid/transition/Transition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1880
    iget-object v0, p0, Landroid/transition/Transition$3;->this$0:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->end()V

    .line 1881
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1882
    return-void
.end method
