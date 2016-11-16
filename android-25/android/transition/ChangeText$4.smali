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
    .line 241
    iput-object p1, p0, Landroid/transition/ChangeText$4;->this$0:Landroid/transition/ChangeText;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeText$4;->val$view:Landroid/widget/TextView;

    #@4
    iput p3, p0, Landroid/transition/ChangeText$4;->val$endColor:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    .line 244
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
    .line 245
    .local v0, "currAlpha":I
    iget-object v1, p0, Landroid/transition/ChangeText$4;->val$view:Landroid/widget/TextView;

    #@c
    shl-int/lit8 v2, v0, 0x18

    #@e
    iget v3, p0, Landroid/transition/ChangeText$4;->val$endColor:I

    #@10
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    #@13
    move-result v3

    #@14
    shl-int/lit8 v3, v3, 0x10

    #@16
    or-int/2addr v2, v3

    #@17
    .line 246
    iget v3, p0, Landroid/transition/ChangeText$4;->val$endColor:I

    #@19
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    #@1c
    move-result v3

    #@1d
    shl-int/lit8 v3, v3, 0x8

    #@1f
    .line 245
    or-int/2addr v2, v3

    #@20
    .line 246
    iget v3, p0, Landroid/transition/ChangeText$4;->val$endColor:I

    #@22
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    #@25
    move-result v3

    #@26
    .line 245
    or-int/2addr v2, v3

    #@27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@2a
    .line 243
    return-void
.end method
