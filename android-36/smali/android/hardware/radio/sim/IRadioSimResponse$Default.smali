.class public Landroid/hardware/radio/sim/IRadioSimResponse$Default;
.super Ljava/lang/Object;
.source "IRadioSimResponse.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimResponse;
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
.method public blacklist acknowledgeRequest(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 724
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "carriers"    # Landroid/hardware/radio/sim/CarrierRestrictions;
    .param p3, "multiSimPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "hSid"    # Ljava/lang/String;
    .param p4, "hNid"    # Ljava/lang/String;
    .param p5, "min"    # Ljava/lang/String;
    .param p6, "prl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/sim/CardStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public blacklist getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 720
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "capacity"    # Landroid/hardware/radio/sim/PhonebookCapacity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    return-void
.end method

.method public blacklist iccCloseLogicalChannelWithSessionInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    return-void
.end method

.method public blacklist iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "channelId"    # I
    .param p3, "selectResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    return-void
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    return-void
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    return-void
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    return-void
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    return-void
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    return-void
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    return-void
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    return-void
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    return-void
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    return-void
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    return-void
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    return-void
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    return-void
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    return-void
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    return-void
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    return-void
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "persoType"    # I
    .param p3, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    return-void
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "updatedRecordIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    return-void
.end method
