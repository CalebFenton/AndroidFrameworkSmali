.class public abstract Landroid/hardware/thermal/IThermalChangedCallback$Stub;
.super Landroid/os/Binder;
.source "IThermalChangedCallback.java"

# interfaces
.implements Landroid/hardware/thermal/IThermalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermalChangedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_notifyThresholdChanged:I = 0x2

.field static final blacklist TRANSACTION_notifyThrottling:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->markVintfStability()V

    .line 51
    sget-object v0, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    sget-object v0, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/thermal/IThermalChangedCallback;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/hardware/thermal/IThermalChangedCallback;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 75
    sparse-switch p0, :sswitch_data_12

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 87
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 91
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 83
    :sswitch_b
    const-string v0, "notifyThresholdChanged"

    return-object v0

    .line 79
    :sswitch_e
    const-string v0, "notifyThrottling"

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 238
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    sget-object v0, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v2

    .line 114
    :cond_16
    if-ne p1, v1, :cond_23

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v2

    .line 119
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v2

    .line 124
    :cond_33
    packed-switch p1, :pswitch_data_5a

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_3b
    sget-object v1, Landroid/hardware/thermal/TemperatureThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/TemperatureThreshold;

    .line 138
    .local v1, "_arg0":Landroid/hardware/thermal/TemperatureThreshold;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V

    .line 140
    goto :goto_59

    .line 129
    .end local v1    # "_arg0":Landroid/hardware/thermal/TemperatureThreshold;
    :pswitch_4a
    sget-object v1, Landroid/hardware/thermal/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/Temperature;

    .line 130
    .local v1, "_arg0":Landroid/hardware/thermal/Temperature;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->notifyThrottling(Landroid/hardware/thermal/Temperature;)V

    .line 132
    nop

    .line 147
    .end local v1    # "_arg0":Landroid/hardware/thermal/Temperature;
    :goto_59
    return v2

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3b
    .end packed-switch
.end method
