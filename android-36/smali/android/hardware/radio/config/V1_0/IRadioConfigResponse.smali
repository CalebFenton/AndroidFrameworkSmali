.class public interface abstract Landroid/hardware/radio/config/V1_0/IRadioConfigResponse;
.super Ljava/lang/Object;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract whitelist asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract blacklist getSimSlotsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_0/SimSlotStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSimSlotsMappingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
