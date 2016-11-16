.class Landroid/transition/ChangeText$6;
.super Landroid/transition/Transition$TransitionListenerAdapter;
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
.field mPausedColor:I

.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startSelectionEnd:I

.field final synthetic val$startSelectionStart:I

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .locals 1
    .param p1, "this$0"    # Landroid/transition/ChangeText;
    .param p2, "val$view"    # Landroid/widget/TextView;
    .param p3, "val$endText"    # Ljava/lang/CharSequence;
    .param p4, "val$endSelectionStart"    # I
    .param p5, "val$endSelectionEnd"    # I
    .param p6, "val$endColor"    # I
    .param p7, "val$startText"    # Ljava/lang/CharSequence;
    .param p8, "val$startSelectionStart"    # I
    .param p9, "val$startSelectionEnd"    # I

    #@0
    .prologue
    .line 267
    iput-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@4
    iput-object p3, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    #@6
    iput p4, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    #@8
    iput p5, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    #@a
    iput p6, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    #@c
    iput-object p7, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    #@e
    iput p8, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    #@10
    iput p9, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    #@12
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@15
    .line 268
    const/4 v0, 0x0

    #@16
    iput v0, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    #@18
    .line 267
    return-void
.end method


# virtual methods
.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@2
    invoke-static {v0}, Landroid/transition/ChangeText;->-get0(Landroid/transition/ChangeText;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 273
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@b
    iget-object v1, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@10
    .line 274
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@12
    instance-of v0, v0, Landroid/widget/EditText;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 275
    iget-object v1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@18
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@1a
    check-cast v0, Landroid/widget/EditText;

    #@1c
    iget v2, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    #@1e
    iget v3, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    #@20
    invoke-static {v1, v0, v2, v3}, Landroid/transition/ChangeText;->-wrap0(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    #@23
    .line 278
    :cond_0
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@25
    invoke-static {v0}, Landroid/transition/ChangeText;->-get0(Landroid/transition/ChangeText;)I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_1

    #@2b
    .line 279
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@2d
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    #@33
    .line 280
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@35
    iget v1, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    #@37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    #@3a
    .line 271
    :cond_1
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@2
    invoke-static {v0}, Landroid/transition/ChangeText;->-get0(Landroid/transition/ChangeText;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 287
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@b
    iget-object v1, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@10
    .line 288
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@12
    instance-of v0, v0, Landroid/widget/EditText;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 289
    iget-object v1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@18
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@1a
    check-cast v0, Landroid/widget/EditText;

    #@1c
    iget v2, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    #@1e
    iget v3, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    #@20
    invoke-static {v1, v0, v2, v3}, Landroid/transition/ChangeText;->-wrap0(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    #@23
    .line 292
    :cond_0
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    #@25
    invoke-static {v0}, Landroid/transition/ChangeText;->-get0(Landroid/transition/ChangeText;)I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_1

    #@2b
    .line 293
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    #@2d
    iget v1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    #@2f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    #@32
    .line 285
    :cond_1
    return-void
.end method
