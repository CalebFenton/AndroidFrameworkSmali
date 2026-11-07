.class public abstract Landroid/frameworks/location/altitude/IAltitudeService$Stub;
.super Landroid/os/Binder;
.source "IAltitudeService.java"

# interfaces
.implements Landroid/frameworks/location/altitude/IAltitudeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/location/altitude/IAltitudeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addMslAltitudeToLocation:I = 0x1

.field static final blacklist TRANSACTION_getGeoidHeight:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/frameworks/location/altitude/IAltitudeService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/frameworks/location/altitude/IAltitudeService;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/frameworks/location/altitude/IAltitudeService;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    sparse-switch p0, :sswitch_data_12

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 89
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 93
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 85
    :sswitch_b
    const-string v0, "getGeoidHeight"

    return-object v0

    .line 81
    :sswitch_e
    const-string v0, "addMslAltitudeToLocation"

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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 256
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 108
    sget-object v0, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v2

    .line 116
    :cond_16
    if-ne p1, v1, :cond_23

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v2

    .line 121
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v2

    .line 126
    :cond_33
    packed-switch p1, :pswitch_data_68

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 141
    :pswitch_3b
    sget-object v1, Landroid/frameworks/location/altitude/GetGeoidHeightRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/location/altitude/GetGeoidHeightRequest;

    .line 142
    .local v1, "_arg0":Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v1}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    move-result-object v3

    .line 144
    .local v3, "_result":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    goto :goto_67

    .line 131
    .end local v1    # "_arg0":Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    .end local v3    # "_result":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    :pswitch_51
    sget-object v1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;

    .line 132
    .local v1, "_arg0":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v1}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;->addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;

    move-result-object v3

    .line 134
    .local v3, "_result":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    nop

    .line 153
    .end local v1    # "_arg0":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    .end local v3    # "_result":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    :goto_67
    return v2

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_51
        :pswitch_3b
    .end packed-switch
.end method
