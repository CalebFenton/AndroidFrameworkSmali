.class public final synthetic Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    return-void
.end method


# virtual methods
.method public final whitelist getInterpolation(F)F
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->$r8$lambda$vYENjUMLI1MBNXf4d_zEaIcueRE(Landroid/view/InsetsController$InternalAnimationControlListener;F)F

    move-result p1

    return p1
.end method
