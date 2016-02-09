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
.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeText;
    .param p2, "val$view"    # Landroid/widget/TextView;
    .param p3, "val$endColor"    # I

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Landroid/transition/ChangeText$5;->this$0:Landroid/transition/ChangeText;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeText$5;->val$view:Landroid/widget/TextView;

    #@4
    iput p3, p0, Landroid/transition/ChangeText$5;->val$endColor:I

    #@6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/transition/ChangeText$5;->val$view:Landroid/widget/TextView;

    #@2
    iget v1, p0, Landroid/transition/ChangeText$5;->val$endColor:I

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    #@7
    .line 251
    return-void
.end method
