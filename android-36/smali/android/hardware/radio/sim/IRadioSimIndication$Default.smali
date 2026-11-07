.class public Landroid/hardware/radio/sim/IRadioSimIndication$Default;
.super Ljava/lang/Object;
.source "IRadioSimIndication.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist carrierInfoForImsiEncryption(I)V
    .registers 2
    .param p1, "info"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist cdmaSubscriptionSourceChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "cdmaSource"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 147
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist simPhonebookChanged(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist simPhonebookRecordsReceived(IB[Landroid/hardware/radio/sim/PhonebookRecordInfo;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "status"    # B
    .param p3, "records"    # [Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist simRefresh(ILandroid/hardware/radio/sim/SimRefreshResult;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "refreshResult"    # Landroid/hardware/radio/sim/SimRefreshResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist simStatusChanged(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist stkEventNotify(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist stkProactiveCommand(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist stkSessionEnd(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public blacklist subscriptionStatusChanged(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist uiccApplicationsEnablementChanged(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method
