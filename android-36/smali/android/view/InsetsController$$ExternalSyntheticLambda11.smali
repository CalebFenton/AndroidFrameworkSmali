.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsController;

.field public final synthetic blacklist f$1:Landroid/view/InsetsAnimationControlRunner;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/view/WindowInsetsAnimation;

.field public final synthetic blacklist f$4:Landroid/view/WindowInsetsAnimation$Bounds;

.field public final synthetic blacklist f$5:Landroid/view/WindowInsetsAnimationControlListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$0:Landroid/view/InsetsController;

    iput-object p2, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$1:Landroid/view/InsetsAnimationControlRunner;

    iput p3, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$2:I

    iput-object p4, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$3:Landroid/view/WindowInsetsAnimation;

    iput-object p5, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$4:Landroid/view/WindowInsetsAnimation$Bounds;

    iput-object p6, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$5:Landroid/view/WindowInsetsAnimationControlListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$0:Landroid/view/InsetsController;

    iget-object v1, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$1:Landroid/view/InsetsAnimationControlRunner;

    iget v2, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$2:I

    iget-object v3, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$3:Landroid/view/WindowInsetsAnimation;

    iget-object v4, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$4:Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object v5, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;->f$5:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-static/range {v0 .. v5}, Landroid/view/InsetsController;->$r8$lambda$zHkX5nyqL2mGn5Rg6byt6DH0yFE(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method
