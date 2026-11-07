.class public Landroid/hardware/ISensorPrivacyManager$Default;
.super Ljava/lang/Object;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/ISensorPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorPrivacyManager;
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
.method public blacklist addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCameraPrivacyAllowlist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getToggleSensorPrivacyState(II)I
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCameraPrivacyEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCombinedToggleSensorPrivacyEnabled(I)Z
    .registers 3
    .param p1, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSensorPrivacyEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isToggleSensorPrivacyEnabled(II)Z
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist requiresAuthentication()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCameraPrivacyAllowlist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    .local p1, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setSensorPrivacy(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setToggleSensorPrivacy(IIIZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist setToggleSensorPrivacyForProfileGroup(IIIZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist setToggleSensorPrivacyState(IIII)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist setToggleSensorPrivacyStateForProfileGroup(IIII)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist showSensorUseDialog(I)V
    .registers 2
    .param p1, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist supportsSensorToggle(II)Z
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method
