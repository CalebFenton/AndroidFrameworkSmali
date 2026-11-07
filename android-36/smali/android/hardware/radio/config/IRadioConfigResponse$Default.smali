.class public Landroid/hardware/radio/config/IRadioConfigResponse$Default;
.super Ljava/lang/Object;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigResponse;
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

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "modemReducedFeatureSet1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 204
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;B)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "numOfLiveModems"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist getPhoneCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/config/PhoneCapability;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "phoneCapability"    # Landroid/hardware/radio/config/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist getSimSlotsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "slotStatus"    # [Landroid/hardware/radio/config/SimSlotStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist getSimTypeInfoResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimTypeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "simTypeInfo"    # [Landroid/hardware/radio/config/SimTypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public blacklist getSimultaneousCallingSupportResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enabledLogicalSlots"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist setNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist setPreferredDataModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist setSimSlotsMappingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist setSimTypeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method
