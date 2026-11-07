.class public interface abstract Landroid/hardware/radio/config/V1_3/IRadioConfigResponse;
.super Ljava/lang/Object;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_2/IRadioConfigResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;
    }
.end annotation


# virtual methods
.method public abstract blacklist getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
