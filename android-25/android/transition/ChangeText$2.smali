.class Landroid/transition/ChangeText$2;
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
.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$startColor:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeText;
    .param p2, "val$view"    # Landroid/widget/TextView;
    .param p3, "val$startColor"    # I

    #@0
    .prologue
    .line 214
    iput-object p1, p0, Landroid/transition/ChangeText$2;->this$0:Landroid/transition/ChangeText;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeText$2;->val$view:Landroid/widget/TextView;

    #@4
    iput p3, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/lang/Integer;

    #@6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    .line 218
    .local v0, "currAlpha":I
    iget-object v1, p0, Landroid/transition/ChangeText$2;->val$view:Landroid/widget/TextView;

    #@c
    shl-int/lit8 v2, v0, 0x18

    #@e
    iget v3, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    #@10
    const/high16 v4, 0xff0000

    #@12
    and-int/2addr v3, v4

    #@13
    or-int/2addr v2, v3

    #@14
    .line 219
    iget v3, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    #@16
    const v4, 0xff00

    #@19
    and-int/2addr v3, v4

    #@1a
    .line 218
    or-int/2addr v2, v3

    #@1b
    .line 219
    iget v3, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    #@1d
    and-int/lit16 v3, v3, 0xff

    #@1f
    .line 218
    or-int/2addr v2, v3

    #@20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@23
    .line 216
    return-void
.end method
