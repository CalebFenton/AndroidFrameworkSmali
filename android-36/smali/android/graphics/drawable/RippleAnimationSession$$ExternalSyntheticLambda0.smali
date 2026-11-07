.class public final synthetic Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/drawable/RippleAnimationSession;

.field public final synthetic blacklist f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleAnimationSession;

    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleAnimationSession;

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/RippleAnimationSession;->$r8$lambda$Jo_W-6U8q1-HfPXsC57ozDg6TSw(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
