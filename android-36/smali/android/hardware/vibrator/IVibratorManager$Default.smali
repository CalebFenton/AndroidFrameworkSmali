.class public Landroid/hardware/vibrator/IVibratorManager$Default;
.super Ljava/lang/Object;
.source "IVibratorManager.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibratorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelSynced()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist clearSessions()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist getCapabilities()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVibrator(I)Landroid/hardware/vibrator/IVibrator;
    .registers 3
    .param p1, "vibratorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVibratorIds()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist prepareSynced([I)V
    .registers 2
    .param p1, "vibratorIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist startSession([ILandroid/hardware/vibrator/VibrationSessionConfig;Landroid/hardware/vibrator/IVibratorCallback;)Landroid/hardware/vibrator/IVibrationSession;
    .registers 5
    .param p1, "vibratorIds"    # [I
    .param p2, "config"    # Landroid/hardware/vibrator/VibrationSessionConfig;
    .param p3, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist triggerSynced(Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method
