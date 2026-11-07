.class public abstract Landroid/location/IGpsGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field static final greylist-max-o TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_pauseHardwareGeofence:I = 0x4

.field static final greylist-max-o TRANSACTION_removeHardwareGeofence:I = 0x3

.field static final greylist-max-o TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/location/IGpsGeofenceHardware;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_14

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 96
    :pswitch_5
    const-string v0, "resumeHardwareGeofence"

    return-object v0

    .line 92
    :pswitch_8
    const-string v0, "pauseHardwareGeofence"

    return-object v0

    .line 88
    :pswitch_b
    const-string v0, "removeHardwareGeofence"

    return-object v0

    .line 84
    :pswitch_e
    const-string v0, "addCircularHardwareGeofence"

    return-object v0

    .line 80
    :pswitch_11
    const-string v0, "isHardwareGeofenceSupported"

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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 314
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 107
    invoke-static {p1}, Landroid/location/IGpsGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    const-string v14, "android.location.IGpsGeofenceHardware"

    .line 112
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_16

    const v1, 0xffffff

    if-gt v12, v1, :cond_16

    .line 113
    move-object/from16 v1, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 112
    :cond_16
    move-object/from16 v1, p2

    .line 115
    :goto_18
    const v2, 0x5f4e5446

    if-ne v12, v2, :cond_21

    .line 116
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v15

    .line 119
    :cond_21
    packed-switch v12, :pswitch_data_a8

    .line 186
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 175
    :pswitch_29
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v0, v2, v3}, Landroid/location/IGpsGeofenceHardware$Stub;->resumeHardwareGeofence(II)Z

    move-result v4

    .line 180
    .local v4, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    move/from16 v16, v15

    goto :goto_a6

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {v0, v2}, Landroid/location/IGpsGeofenceHardware$Stub;->pauseHardwareGeofence(I)Z

    move-result v3

    .line 168
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    move/from16 v16, v15

    goto :goto_a6

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_55
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v0, v2}, Landroid/location/IGpsGeofenceHardware$Stub;->removeHardwareGeofence(I)Z

    move-result v3

    .line 158
    .restart local v3    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    move/from16 v16, v15

    goto :goto_a6

    .line 131
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 135
    .local v2, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 137
    .local v4, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 139
    .local v6, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 141
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 143
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 145
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 146
    .local v11, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move/from16 v16, v15

    invoke-virtual/range {v0 .. v11}, Landroid/location/IGpsGeofenceHardware$Stub;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v15

    .line 148
    .local v15, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    goto :goto_a6

    .line 123
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":D
    .end local v4    # "_arg2":D
    .end local v6    # "_arg3":D
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":I
    .end local v15    # "_result":Z
    :pswitch_99
    move/from16 v16, v15

    invoke-virtual/range {p0 .. p0}, Landroid/location/IGpsGeofenceHardware$Stub;->isHardwareGeofenceSupported()Z

    move-result v0

    .line 124
    .local v0, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    nop

    .line 189
    .end local v0    # "_result":Z
    :goto_a6
    return v16

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_99
        :pswitch_69
        :pswitch_55
        :pswitch_41
        :pswitch_29
    .end packed-switch
.end method
