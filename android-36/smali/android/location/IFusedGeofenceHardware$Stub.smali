.class public abstract Landroid/location/IFusedGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedGeofenceHardware.java"

# interfaces
.implements Landroid/location/IFusedGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IFusedGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IFusedGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IFusedGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addGeofences:I = 0x2

.field static final greylist-max-o TRANSACTION_isSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_modifyGeofenceOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_pauseMonitoringGeofence:I = 0x4

.field static final greylist-max-o TRANSACTION_removeGeofences:I = 0x3

.field static final greylist-max-o TRANSACTION_resumeMonitoringGeofence:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/IFusedGeofenceHardware;

    if-eqz v1, :cond_14

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/location/IFusedGeofenceHardware;

    return-object v1

    .line 115
    :cond_14
    new-instance v1, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 124
    packed-switch p0, :pswitch_data_18

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 148
    :pswitch_5
    const-string v0, "modifyGeofenceOptions"

    return-object v0

    .line 144
    :pswitch_8
    const-string v0, "resumeMonitoringGeofence"

    return-object v0

    .line 140
    :pswitch_b
    const-string v0, "pauseMonitoringGeofence"

    return-object v0

    .line 136
    :pswitch_e
    const-string v0, "removeGeofences"

    return-object v0

    .line 132
    :pswitch_11
    const-string v0, "addGeofences"

    return-object v0

    .line 128
    :pswitch_14
    const-string v0, "isSupported"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 119
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 413
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 159
    invoke-static {p1}, Landroid/location/IFusedGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const-string v0, "android.location.IFusedGeofenceHardware"

    .line 164
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 165
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 168
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return v1

    .line 171
    :cond_16
    packed-switch p1, :pswitch_data_94

    .line 239
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 221
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 225
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 229
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 231
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 232
    .local v9, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/location/IFusedGeofenceHardware$Stub;->modifyGeofenceOptions(IIIIII)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_92

    .line 210
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    :pswitch_42
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v4}, Landroid/location/IFusedGeofenceHardware$Stub;->resumeMonitoringGeofence(II)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_92

    .line 201
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_55
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/location/IFusedGeofenceHardware$Stub;->pauseMonitoringGeofence(I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_92

    .line 192
    .end local v2    # "_arg0":I
    :pswitch_64
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 193
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/location/IFusedGeofenceHardware$Stub;->removeGeofences([I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_92

    .line 183
    .end local v2    # "_arg0":[I
    :pswitch_73
    move-object v3, p0

    sget-object v2, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 184
    .local v2, "_arg0":[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/location/IFusedGeofenceHardware$Stub;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_92

    .line 175
    .end local v2    # "_arg0":[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    :pswitch_86
    move-object v3, p0

    invoke-virtual {p0}, Landroid/location/IFusedGeofenceHardware$Stub;->isSupported()Z

    move-result v2

    .line 176
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    nop

    .line 242
    .end local v2    # "_result":Z
    :goto_92
    return v1

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_86
        :pswitch_73
        :pswitch_64
        :pswitch_55
        :pswitch_42
        :pswitch_1f
    .end packed-switch
.end method
