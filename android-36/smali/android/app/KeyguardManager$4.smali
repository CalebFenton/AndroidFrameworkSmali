.class Landroid/app/KeyguardManager$4;
.super Landroid/view/IOnKeyguardExitResult$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 958
    iput-object p2, p0, Landroid/app/KeyguardManager$4;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    invoke-direct {p0}, Landroid/view/IOnKeyguardExitResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onKeyguardExitResult(Z)V
    .registers 3
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Landroid/app/KeyguardManager$4;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    if-eqz v0, :cond_9

    .line 961
    iget-object v0, p0, Landroid/app/KeyguardManager$4;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    invoke-interface {v0, p1}, Landroid/app/KeyguardManager$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 963
    :cond_9
    return-void
.end method
