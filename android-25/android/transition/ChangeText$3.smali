.class Landroid/transition/ChangeText$3;
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
.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeText;
    .param p2, "val$startText"    # Ljava/lang/CharSequence;
    .param p3, "val$view"    # Landroid/widget/TextView;
    .param p4, "val$endText"    # Ljava/lang/CharSequence;
    .param p5, "val$endSelectionStart"    # I
    .param p6, "val$endSelectionEnd"    # I
    .param p7, "val$endColor"    # I

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Landroid/transition/ChangeText$3;->this$0:Landroid/transition/ChangeText;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeText$3;->val$startText:Ljava/lang/CharSequence;

    #@4
    iput-object p3, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    #@6
    iput-object p4, p0, Landroid/transition/ChangeText$3;->val$endText:Ljava/lang/CharSequence;

    #@8
    iput p5, p0, Landroid/transition/ChangeText$3;->val$endSelectionStart:I

    #@a
    iput p6, p0, Landroid/transition/ChangeText$3;->val$endSelectionEnd:I

    #@c
    iput p7, p0, Landroid/transition/ChangeText$3;->val$endColor:I

    #@e
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$startText:Ljava/lang/CharSequence;

    #@2
    iget-object v1, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    #@4
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 227
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    #@10
    iget-object v1, p0, Landroid/transition/ChangeText$3;->val$endText:Ljava/lang/CharSequence;

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@15
    .line 228
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    #@17
    instance-of v0, v0, Landroid/widget/EditText;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 229
    iget-object v1, p0, Landroid/transition/ChangeText$3;->this$0:Landroid/transition/ChangeText;

    #@1d
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    #@1f
    check-cast v0, Landroid/widget/EditText;

    #@21
    iget v2, p0, Landroid/transition/ChangeText$3;->val$endSelectionStart:I

    #@23
    .line 230
    iget v3, p0, Landroid/transition/ChangeText$3;->val$endSelectionEnd:I

    #@25
    .line 229
    invoke-static {v1, v0, v2, v3}, Landroid/transition/ChangeText;->-wrap0(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    #@28
    .line 234
    :cond_0
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    #@2a
    iget v1, p0, Landroid/transition/ChangeText$3;->val$endColor:I

    #@2c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    #@2f
    .line 224
    return-void
.end method
