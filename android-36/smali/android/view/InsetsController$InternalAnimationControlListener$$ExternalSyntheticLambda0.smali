.class public final synthetic Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

.field public final synthetic blacklist f$1:Landroid/view/animation/Interpolator;

.field public final synthetic blacklist f$2:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic blacklist f$3:Landroid/graphics/Insets;

.field public final synthetic blacklist f$4:Landroid/graphics/Insets;

.field public final synthetic blacklist f$5:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    iput-object p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowInsetsAnimationController;

    iput-object p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Insets;

    iput-object p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Insets;

    iput-object p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$5:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    .line 0
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowInsetsAnimationController;

    iget-object v3, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Insets;

    iget-object v4, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Insets;

    iget-object v5, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;->f$5:Landroid/view/animation/Interpolator;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;->$r8$lambda$BJTEi7zfHhP2W08t256nzVrDzao(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
