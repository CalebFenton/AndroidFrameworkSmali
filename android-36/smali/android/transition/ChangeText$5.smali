.class Landroid/transition/ChangeText$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$endColor:I

.field final synthetic blacklist val$view:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/transition/ChangeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 251
    iput-object p2, p0, Landroid/transition/ChangeText$5;->val$view:Landroid/widget/TextView;

    iput p3, p0, Landroid/transition/ChangeText$5;->val$endColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 255
    iget-object v0, p0, Landroid/transition/ChangeText$5;->val$view:Landroid/widget/TextView;

    iget v1, p0, Landroid/transition/ChangeText$5;->val$endColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    return-void
.end method
