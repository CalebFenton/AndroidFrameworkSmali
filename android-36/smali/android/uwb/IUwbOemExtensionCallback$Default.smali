.class public Landroid/uwb/IUwbOemExtensionCallback$Default;
.super Ljava/lang/Object;
.source "IUwbOemExtensionCallback.java"

# interfaces
.implements Landroid/uwb/IUwbOemExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbOemExtensionCallback;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCheckPointedTarget(Landroid/os/PersistableBundle;)Z
    .registers 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .registers 3
    .param p1, "bundle"    # Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSessionConfigurationReceived(Landroid/os/PersistableBundle;)I
    .registers 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
