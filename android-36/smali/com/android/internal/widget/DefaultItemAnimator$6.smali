.class Lcom/android/internal/widget/DefaultItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DefaultItemAnimator;->animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/DefaultItemAnimator;

.field final synthetic blacklist val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic blacklist val$deltaX:I

.field final synthetic blacklist val$deltaY:I

.field final synthetic blacklist val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/internal/widget/DefaultItemAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 301
    iget v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 304
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_13

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 307
    :cond_13
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 315
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 297
    return-void
.end method
