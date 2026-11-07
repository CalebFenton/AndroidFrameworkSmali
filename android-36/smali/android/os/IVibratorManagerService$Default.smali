.class public Landroid/os/IVibratorManagerService$Default;
.super Ljava/lang/Object;
.source "IVibratorManagerService.java"

# interfaces
.implements Landroid/os/IVibratorManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorManagerService;
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

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "usageFilter"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist getCapabilities()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVibratorIds()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVibratorInfo(I)Landroid/os/VibratorInfo;
    .registers 3
    .param p1, "vibratorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isVibrating(I)Z
    .registers 3
    .param p1, "vibratorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;ILjava/lang/String;II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "privFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "inputDeviceId"    # I
    .param p6, "inputSource"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "privFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 4
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "vibration"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "vibratorIds"    # [I
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/os/vibrator/IVibrationSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 4
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "vibration"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
