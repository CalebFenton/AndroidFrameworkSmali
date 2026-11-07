.class public final synthetic Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsAnimationControlCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsAnimationControlCallbacks;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsAnimationControlCallbacks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsAnimationControlCallbacks;

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-interface {v0, p1}, Landroid/view/InsetsAnimationControlCallbacks;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method
