.class public Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Default;
.super Ljava/lang/Object;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFaceHal()Landroid/hardware/biometrics/face/IFace;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist resetConfigurations()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    return-void
.end method

.method public blacklist setAuthenticatorId(J)V
    .registers 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist setChallenge(J)V
    .registers 3
    .param p1, "challenge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist setEnrollmentHit(I)V
    .registers 2
    .param p1, "hit_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setEnrollments([I)V
    .registers 2
    .param p1, "id"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setLockout(Z)V
    .registers 2
    .param p1, "lockout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    return-void
.end method

.method public blacklist setLockoutEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist setLockoutPermanentThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public blacklist setLockoutTimedDuration(I)V
    .registers 2
    .param p1, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public blacklist setLockoutTimedEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method public blacklist setLockoutTimedThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public blacklist setNextEnrollment(Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;)V
    .registers 2
    .param p1, "next_enrollment"    # Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist setOperationAuthenticateAcquired([Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;)V
    .registers 2
    .param p1, "acquired"    # [Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public blacklist setOperationAuthenticateDuration(I)V
    .registers 2
    .param p1, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist setOperationAuthenticateError(I)V
    .registers 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist setOperationAuthenticateFails(Z)V
    .registers 2
    .param p1, "fail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist setOperationAuthenticateLatency([I)V
    .registers 2
    .param p1, "latencyMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist setOperationDetectInteractionFails(Z)V
    .registers 2
    .param p1, "error"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist setOperationDetectInteractionLatency([I)V
    .registers 2
    .param p1, "latencyMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method public blacklist setOperationEnrollLatency([I)V
    .registers 2
    .param p1, "latencyMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist setSensorStrength(B)V
    .registers 2
    .param p1, "strength"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    return-void
.end method

.method public blacklist setType(B)V
    .registers 2
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    return-void
.end method
