.class Landroid/view/InsetsController$PendingControlRequest;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingControlRequest"
.end annotation


# instance fields
.field final blacklist animationType:I

.field final blacklist cancellationSignal:Landroid/os/CancellationSignal;

.field final blacklist layoutInsetsDuringAnimation:I

.field final blacklist listener:Landroid/view/WindowInsetsAnimationControlListener;

.field final blacklist mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

.field blacklist types:I

.field final blacklist useInsetsAnimationThread:Z


# direct methods
.method constructor blacklist <init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V
    .registers 8
    .param p1, "types"    # I
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p4, "animationType"    # I
    .param p5, "layoutInsetsDuringAnimation"    # I
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p7, "useInsetsAnimationThread"    # Z

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p1, p0, Landroid/view/InsetsController$PendingControlRequest;->types:I

    .line 594
    iput-object p2, p0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 595
    iput-object p3, p0, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    .line 596
    iput p4, p0, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    .line 597
    iput p5, p0, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    .line 598
    iput-object p6, p0, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 599
    iput-boolean p7, p0, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    .line 600
    return-void
.end method
