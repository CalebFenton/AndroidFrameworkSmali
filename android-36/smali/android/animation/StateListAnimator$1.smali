.class Landroid/animation/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/StateListAnimator;->initAnimatorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/StateListAnimator;


# direct methods
.method constructor blacklist <init>(Landroid/animation/StateListAnimator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/animation/StateListAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-static {v1}, Landroid/animation/StateListAnimator;->-$$Nest$fgetmRunningAnimator(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;

    move-result-object v1

    if-ne v1, p1, :cond_11

    .line 69
    iget-object v1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-static {v1, v0}, Landroid/animation/StateListAnimator;->-$$Nest$fputmRunningAnimator(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)V

    .line 71
    :cond_11
    return-void
.end method
