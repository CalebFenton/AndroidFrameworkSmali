.class public abstract Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateManagerCallback.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeviceStateInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_onRequestActive:I = 0x2

.field static final blacklist TRANSACTION_onRequestCanceled:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_e

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "onRequestCanceled"

    return-object v0

    .line 94
    :pswitch_8
    const-string v0, "onRequestActive"

    return-object v0

    .line 90
    :pswitch_b
    const-string v0, "onDeviceStateInfoChanged"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 237
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 143
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onRequestCanceled(Landroid/os/IBinder;)V

    .line 145
    goto :goto_43

    .line 134
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onRequestActive(Landroid/os/IBinder;)V

    .line 137
    goto :goto_43

    .line 126
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_34
    sget-object v2, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 127
    .local v2, "_arg0":Landroid/hardware/devicestate/DeviceStateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 129
    nop

    .line 152
    .end local v2    # "_arg0":Landroid/hardware/devicestate/DeviceStateInfo;
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
