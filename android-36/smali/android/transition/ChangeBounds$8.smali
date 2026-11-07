.class Landroid/transition/ChangeBounds$8;
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
.field private blacklist mViewBounds:Landroid/transition/ChangeBounds$ViewBounds;

.field final synthetic blacklist val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V
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

    .line 377
    iput-object p2, p0, Landroid/transition/ChangeBounds$8;->val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 380
    iget-object p2, p0, Landroid/transition/ChangeBounds$8;->val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$8;->mViewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    return-void
.end method
