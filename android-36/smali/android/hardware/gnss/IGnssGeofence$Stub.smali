.class public abstract Landroid/hardware/gnss/IGnssGeofence$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofence.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGeofence:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_pauseGeofence:I = 0x3

.field static final blacklist TRANSACTION_removeGeofence:I = 0x5

.field static final blacklist TRANSACTION_resumeGeofence:I = 0x4

.field static final blacklist TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofence;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofence;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssGeofence;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    sparse-switch p0, :sswitch_data_1a

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 108
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 112
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 104
    :sswitch_b
    const-string v0, "removeGeofence"

    return-object v0

    .line 100
    :sswitch_e
    const-string v0, "resumeGeofence"

    return-object v0

    .line 96
    :sswitch_11
    const-string v0, "pauseGeofence"

    return-object v0

    .line 92
    :sswitch_14
    const-string v0, "addGeofence"

    return-object v0

    .line 88
    :sswitch_17
    const-string v0, "setCallback"

    return-object v0

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 375
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    sget-object v14, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    .local v14, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v15, 0x1

    if-lt v12, v15, :cond_16

    if-gt v12, v1, :cond_16

    .line 129
    move-object/from16 v2, p2

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 128
    :cond_16
    move-object/from16 v2, p2

    .line 131
    :goto_18
    const v3, 0x5f4e5446

    if-ne v12, v3, :cond_21

    .line 132
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v15

    .line 135
    :cond_21
    if-ne v12, v1, :cond_2e

    .line 136
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v15

    .line 140
    :cond_2e
    const v1, 0xfffffe

    if-ne v12, v1, :cond_3e

    .line 141
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v15

    .line 145
    :cond_3e
    packed-switch v12, :pswitch_data_b2

    .line 210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 202
    :pswitch_46
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .local v1, "_arg0":I
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->removeGeofence(I)V

    .line 205
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_b0

    .line 191
    .end local v1    # "_arg0":I
    :pswitch_54
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v0, v1, v3}, Landroid/hardware/gnss/IGnssGeofence$Stub;->resumeGeofence(II)V

    .line 196
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_b0

    .line 182
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_66
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->pauseGeofence(I)V

    .line 185
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_b0

    .line 159
    .end local v1    # "_arg0":I
    :pswitch_74
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 163
    .local v2, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 165
    .local v4, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 167
    .local v6, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 169
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 171
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 173
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 174
    .local v11, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual/range {v0 .. v11}, Landroid/hardware/gnss/IGnssGeofence$Stub;->addGeofence(IDDDIIII)V

    .line 176
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_b0

    .line 150
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":D
    .end local v4    # "_arg2":D
    .end local v6    # "_arg3":D
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":I
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;

    move-result-object v1

    .line 151
    .local v1, "_arg0":Landroid/hardware/gnss/IGnssGeofenceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {v0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->setCallback(Landroid/hardware/gnss/IGnssGeofenceCallback;)V

    .line 153
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 213
    .end local v1    # "_arg0":Landroid/hardware/gnss/IGnssGeofenceCallback;
    :goto_b0
    return v15

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_74
        :pswitch_66
        :pswitch_54
        :pswitch_46
    .end packed-switch
.end method
