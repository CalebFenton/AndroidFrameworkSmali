.class Lcom/android/internal/widget/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DefaultItemAnimator;->animateChangeImpl(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/DefaultItemAnimator;

.field final synthetic blacklist val$changeInfo:Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic blacklist val$newView:Landroid/view/View;

.field final synthetic blacklist val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/widget/DefaultItemAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 395
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 385
    return-void
.end method
