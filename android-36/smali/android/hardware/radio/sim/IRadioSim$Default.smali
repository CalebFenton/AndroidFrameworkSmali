.class public Landroid/hardware/radio/sim/IRadioSim$Default;
.super Ljava/lang/Object;
.source "IRadioSim.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist areUiccApplicationsEnabled(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serial"    # I
    .param p2, "oldPin2"    # Ljava/lang/String;
    .param p3, "newPin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serial"    # I
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist enableUiccApplications(IZ)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist getAllowedCarriers(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist getCdmaSubscription(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    return-void
.end method

.method public blacklist getIccCardStatus(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    return-void
.end method

.method public blacklist getImsiForApp(ILjava/lang/String;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 627
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSimPhonebookCapacity(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public blacklist getSimPhonebookRecords(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public blacklist iccCloseLogicalChannel(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    return-void
.end method

.method public blacklist iccCloseLogicalChannelWithSessionInfo(ILandroid/hardware/radio/sim/SessionInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "sessionInfo"    # Landroid/hardware/radio/sim/SessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    return-void
.end method

.method public blacklist iccIoForApp(ILandroid/hardware/radio/sim/IccIo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(ILjava/lang/String;I)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(ILandroid/hardware/radio/sim/SimApdu;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/sim/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(ILandroid/hardware/radio/sim/SimApdu;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/sim/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    return-void
.end method

.method public blacklist reportStkServiceIsRunning(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    return-void
.end method

.method public blacklist requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serial"    # I
    .param p2, "authContext"    # I
    .param p3, "authData"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    return-void
.end method

.method public blacklist sendEnvelope(ILjava/lang/String;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    return-void
.end method

.method public blacklist sendTerminalResponseToSim(ILjava/lang/String;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    return-void
.end method

.method public blacklist setAllowedCarriers(ILandroid/hardware/radio/sim/CarrierRestrictions;I)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "carriers"    # Landroid/hardware/radio/sim/CarrierRestrictions;
    .param p3, "multiSimPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/sim/ImsiEncryptionInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "cdmaSub"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    return-void
.end method

.method public blacklist setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "lockState"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V
    .registers 3
    .param p1, "radioSimResponse"    # Landroid/hardware/radio/sim/IRadioSimResponse;
    .param p2, "radioSimIndication"    # Landroid/hardware/radio/sim/IRadioSimIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    return-void
.end method

.method public blacklist setSimCardPower(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "powerUp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    return-void
.end method

.method public blacklist setUiccSubscription(ILandroid/hardware/radio/sim/SelectUiccSub;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "uiccSub"    # Landroid/hardware/radio/sim/SelectUiccSub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "pin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    return-void
.end method

.method public blacklist supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serial"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    return-void
.end method

.method public blacklist supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serial"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    return-void
.end method

.method public blacklist supplySimDepersonalization(IILjava/lang/String;)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "persoType"    # I
    .param p3, "controlKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    return-void
.end method

.method public blacklist updateSimPhonebookRecords(ILandroid/hardware/radio/sim/PhonebookRecordInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "recordInfo"    # Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    return-void
.end method
