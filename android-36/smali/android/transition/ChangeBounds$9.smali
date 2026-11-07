.class Landroid/transition/ChangeBounds$9;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field private blacklist mIsCanceled:Z

.field final synthetic blacklist val$endBottom:I

.field final synthetic blacklist val$endLeft:I

.field final synthetic blacklist val$endRight:I

.field final synthetic blacklist val$endTop:I

.field final synthetic blacklist val$finalClip:Landroid/graphics/Rect;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .registers 8
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .line 420
    iput-object p2, p0, Landroid/transition/ChangeBounds$9;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/ChangeBounds$9;->val$finalClip:Landroid/graphics/Rect;

    iput p4, p0, Landroid/transition/ChangeBounds$9;->val$endLeft:I

    iput p5, p0, Landroid/transition/ChangeBounds$9;->val$endTop:I

    iput p6, p0, Landroid/transition/ChangeBounds$9;->val$endRight:I

    iput p7, p0, Landroid/transition/ChangeBounds$9;->val$endBottom:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$9;->mIsCanceled:Z

    .line 426
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 430
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$9;->mIsCanceled:Z

    if-nez v0, :cond_18

    .line 431
    iget-object v0, p0, Landroid/transition/ChangeBounds$9;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeBounds$9;->val$finalClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 432
    iget-object v0, p0, Landroid/transition/ChangeBounds$9;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/transition/ChangeBounds$9;->val$endLeft:I

    iget v2, p0, Landroid/transition/ChangeBounds$9;->val$endTop:I

    iget v3, p0, Landroid/transition/ChangeBounds$9;->val$endRight:I

    iget v4, p0, Landroid/transition/ChangeBounds$9;->val$endBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 435
    :cond_18
    return-void
.end method
