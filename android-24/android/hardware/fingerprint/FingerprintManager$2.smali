.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "val$powerManager"    # Landroid/os/PowerManager;
    .param p3, "val$callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    #@0
    .prologue
    .line 749
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$powerManager:Landroid/os/PowerManager;

    #@4
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    #@6
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onLockoutReset(J)V
    .locals 4
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 753
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$powerManager:Landroid/os/PowerManager;

    #@2
    .line 754
    const-string/jumbo v2, "lockoutResetCallback"

    #@5
    const/4 v3, 0x1

    #@6
    .line 753
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@9
    move-result-object v0

    #@a
    .line 755
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@d
    .line 756
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@f
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$2$1;

    #@15
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    #@17
    invoke-direct {v2, p0, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$2$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/os/PowerManager$WakeLock;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1d
    .line 752
    return-void
.end method
