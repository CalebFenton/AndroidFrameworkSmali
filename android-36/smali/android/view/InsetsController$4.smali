.class Landroid/view/InsetsController$4;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$durationMs:J

.field final synthetic blacklist val$interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;JLandroid/view/animation/Interpolator;)V
    .registers 5
    .param p1, "this$0"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1362
    iput-wide p2, p0, Landroid/view/InsetsController$4;->val$durationMs:J

    iput-object p4, p0, Landroid/view/InsetsController$4;->val$interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDurationMs(Z)J
    .registers 4
    .param p1, "hasZeroInsetsIme"    # Z

    .line 1365
    iget-wide v0, p0, Landroid/view/InsetsController$4;->val$durationMs:J

    return-wide v0
.end method

.method public blacklist getInsetsInterpolator(Z)Landroid/view/animation/Interpolator;
    .registers 3
    .param p1, "hasZeroInsetsIme"    # Z

    .line 1369
    iget-object v0, p0, Landroid/view/InsetsController$4;->val$interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method
