.class public abstract Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardwareCallback.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardwareCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardwareCallback"

.field static final greylist-max-o TRANSACTION_onGeofenceAdd:I = 0x2

.field static final greylist-max-o TRANSACTION_onGeofencePause:I = 0x4

.field static final greylist-max-o TRANSACTION_onGeofenceRemove:I = 0x3

.field static final greylist-max-o TRANSACTION_onGeofenceResume:I = 0x5

.field static final greylist-max-o TRANSACTION_onGeofenceTransition:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_14

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string v0, "onGeofenceResume"

    return-object v0

    .line 83
    :pswitch_8
    const-string v0, "onGeofencePause"

    return-object v0

    .line 79
    :pswitch_b
    const-string v0, "onGeofenceRemove"

    return-object v0

    .line 75
    :pswitch_e
    const-string v0, "onGeofenceAdd"

    return-object v0

    .line 71
    :pswitch_11
    const-string v0, "onGeofenceTransition"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 269
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_16
    packed-switch p1, :pswitch_data_7c

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceResume(II)V

    .line 166
    goto :goto_7b

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofencePause(II)V

    .line 156
    goto :goto_7b

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceRemove(II)V

    .line 146
    goto :goto_7b

    .line 131
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceAdd(II)V

    .line 136
    goto :goto_7b

    .line 115
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 117
    .local v5, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, "_arg1":I
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/location/Location;

    .line 121
    .local v7, "_arg2":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 123
    .local v8, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 124
    .local v10, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceTransition(IILandroid/location/Location;JI)V

    .line 126
    nop

    .line 173
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Landroid/location/Location;
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":I
    :goto_7b
    return v1

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
