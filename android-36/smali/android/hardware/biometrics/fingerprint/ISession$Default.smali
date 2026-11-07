.class public Landroid/hardware/biometrics/fingerprint/ISession$Default;
.super Ljava/lang/Object;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 583
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4
    .param p1, "operationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .param p1, "operationId"    # J
    .param p3, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    return-void
.end method

.method public blacklist detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .param p2, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enumerateEnrollments()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    return-void
.end method

.method public blacklist generateChallenge()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist getAuthenticatorId()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 579
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist invalidateAuthenticatorId()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    return-void
.end method

.method public blacklist onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    return-void
.end method

.method public blacklist onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 2
    .param p1, "context"    # Landroid/hardware/biometrics/fingerprint/PointerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    return-void
.end method

.method public blacklist onPointerDown(IIIFF)V
    .registers 6
    .param p1, "pointerId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "minor"    # F
    .param p5, "major"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    return-void
.end method

.method public blacklist onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 2
    .param p1, "context"    # Landroid/hardware/biometrics/fingerprint/PointerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    return-void
.end method

.method public blacklist onPointerUp(I)V
    .registers 2
    .param p1, "pointerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    return-void
.end method

.method public blacklist onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 2
    .param p1, "context"    # Landroid/hardware/biometrics/fingerprint/PointerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    return-void
.end method

.method public blacklist onUiReady()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    return-void
.end method

.method public blacklist removeEnrollments([I)V
    .registers 2
    .param p1, "enrollmentIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    return-void
.end method

.method public blacklist resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 2
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    return-void
.end method

.method public blacklist revokeChallenge(J)V
    .registers 3
    .param p1, "challenge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist setIgnoreDisplayTouches(Z)V
    .registers 2
    .param p1, "shouldIgnore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    return-void
.end method
