.class Landroid/transition/ChangeBounds$7;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mCanceled:Z

.field final synthetic blacklist val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;
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

    .line 325
    iput-object p2, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 326
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public whitelist onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 330
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    .line 332
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 336
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    if-nez v0, :cond_a

    .line 337
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 339
    :cond_a
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 340
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 344
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 345
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 349
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 350
    return-void
.end method
