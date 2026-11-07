.class Landroid/transition/ChangeText$4;
.super Ljava/lang/Object;
.source "ChangeText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p2, p0, Landroid/transition/ChangeText$4;->val$view:Landroid/widget/TextView;

    iput p3, p0, Landroid/transition/ChangeText$4;->val$endColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, "currAlpha":I
    iget-object v1, p0, Landroid/transition/ChangeText$4;->val$view:Landroid/widget/TextView;

    shl-int/lit8 v2, v0, 0x18

    iget v3, p0, Landroid/transition/ChangeText$4;->val$endColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    return-void
.end method
