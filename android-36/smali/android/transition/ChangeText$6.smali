.class Landroid/transition/ChangeText$6;
.super Landroid/transition/TransitionListenerAdapter;
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
.field blacklist mPausedColor:I

.field final synthetic blacklist this$0:Landroid/transition/ChangeText;

.field final synthetic blacklist val$endColor:I

.field final synthetic blacklist val$endSelectionEnd:I

.field final synthetic blacklist val$endSelectionStart:I

.field final synthetic blacklist val$endText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$startSelectionEnd:I

.field final synthetic blacklist val$startSelectionStart:I

.field final synthetic blacklist val$startText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$view:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .registers 10
    .param p1, "this$0"    # Landroid/transition/ChangeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
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
            null,
            null,
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    iput p4, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    iput p5, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    iput p6, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    iput-object p7, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    iput p8, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    iput p9, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 270
    const/4 p2, 0x0

    iput p2, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 301
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 302
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 274
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {v0}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    .line 275
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_23

    .line 277
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    iget-object v1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget v2, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    iget v3, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    invoke-static {v0, v1, v2, v3}, Landroid/transition/ChangeText;->-$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 280
    :cond_23
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {v0}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result v0

    if-lez v0, :cond_3a

    .line 281
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    .line 282
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v1, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    :cond_3a
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 288
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {v0}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    .line 289
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_23

    .line 291
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    iget-object v1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget v2, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    iget v3, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    invoke-static {v0, v1, v2, v3}, Landroid/transition/ChangeText;->-$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 294
    :cond_23
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {v0}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result v0

    if-lez v0, :cond_32

    .line 295
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    :cond_32
    return-void
.end method
