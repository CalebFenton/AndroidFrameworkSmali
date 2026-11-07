.class public interface abstract Landroid/hardware/radio/config/V1_1/IRadioConfigResponse;
.super Ljava/lang/Object;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_0/IRadioConfigResponse;


# virtual methods
.method public abstract blacklist getModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/config/V1_1/ModemsConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPhoneCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/config/V1_1/PhoneCapability;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setPreferredDataModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
