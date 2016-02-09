.class Landroid/transition/ChangeBounds$10;
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
.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$transitionAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;
    .param p2, "val$sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "val$drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "val$view"    # Landroid/view/View;
    .param p5, "val$transitionAlpha"    # F

    #@0
    .prologue
    .line 455
    iput-object p1, p0, Landroid/transition/ChangeBounds$10;->this$0:Landroid/transition/ChangeBounds;

    #@2
    iput-object p2, p0, Landroid/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    #@6
    iput-object p4, p0, Landroid/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    #@8
    iput p5, p0, Landroid/transition/ChangeBounds$10;->val$transitionAlpha:F

    #@a
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Landroid/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 459
    iget-object v0, p0, Landroid/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    #@d
    iget v1, p0, Landroid/transition/ChangeBounds$10;->val$transitionAlpha:F

    #@f
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@12
    .line 457
    return-void
.end method
