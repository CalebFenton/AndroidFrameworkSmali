.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;
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
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic blacklist val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field final synthetic blacklist val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
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

    .line 1303
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;
    .param p1, "sensorId"    # I
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 1314
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;->onLockoutReset(I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1316
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1317
    nop

    .line 1318
    return-void

    .line 1316
    :catchall_8
    move-exception v0

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1317
    throw v0
.end method


# virtual methods
.method public blacklist onLockoutReset(ILandroid/os/IRemoteCallback;)V
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "serverCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$powerManager:Landroid/os/PowerManager;

    const-string v2, "lockoutResetCallback"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1311
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1312
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    .line 1320
    nop

    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1321
    nop

    .line 1322
    return-void

    .line 1320
    :catchall_23
    move-exception v1

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1321
    throw v1
.end method
