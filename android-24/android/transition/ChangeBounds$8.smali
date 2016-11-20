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
.field private mIsCanceled:Z

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;
    .param p2, "val$view"    # Landroid/view/View;
    .param p3, "val$finalClip"    # Landroid/graphics/Rect;
    .param p4, "val$endLeft"    # I
    .param p5, "val$endTop"    # I
    .param p6, "val$endRight"    # I
    .param p7, "val$endBottom"    # I

    #@0
    .prologue
    .line 380
    iput-object p1, p0, Landroid/transition/ChangeBounds$8;->this$0:Landroid/transition/ChangeBounds;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroid/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    #@6
    iput p4, p0, Landroid/transition/ChangeBounds$8;->val$endLeft:I

    #@8
    iput p5, p0, Landroid/transition/ChangeBounds$8;->val$endTop:I

    #@a
    iput p6, p0, Landroid/transition/ChangeBounds$8;->val$endRight:I

    #@c
    iput p7, p0, Landroid/transition/ChangeBounds$8;->val$endBottom:I

    #@e
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 385
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/transition/ChangeBounds$8;->mIsCanceled:Z

    #@3
    .line 384
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 390
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$8;->mIsCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 391
    iget-object v0, p0, Landroid/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    #@6
    iget-object v1, p0, Landroid/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@b
    .line 392
    iget-object v0, p0, Landroid/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    #@d
    iget v1, p0, Landroid/transition/ChangeBounds$8;->val$endLeft:I

    #@f
    iget v2, p0, Landroid/transition/ChangeBounds$8;->val$endTop:I

    #@11
    iget v3, p0, Landroid/transition/ChangeBounds$8;->val$endRight:I

    #@13
    .line 393
    iget v4, p0, Landroid/transition/ChangeBounds$8;->val$endBottom:I

    #@15
    .line 392
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    #@18
    .line 389
    :cond_0
    return-void
.end method
