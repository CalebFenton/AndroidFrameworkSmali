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
.field final synthetic blacklist val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic blacklist val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic blacklist val$transitionAlpha:F

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .registers 6
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 465
    iput-object p2, p0, Landroid/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iput p5, p0, Landroid/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 468
    iget-object v0, p0, Landroid/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Landroid/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 470
    return-void
.end method
