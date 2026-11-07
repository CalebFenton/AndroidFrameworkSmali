.class public abstract Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_gnssGeofenceAddCb:I = 0x3

.field static final blacklist TRANSACTION_gnssGeofencePauseCb:I = 0x5

.field static final blacklist TRANSACTION_gnssGeofenceRemoveCb:I = 0x4

.field static final blacklist TRANSACTION_gnssGeofenceResumeCb:I = 0x6

.field static final blacklist TRANSACTION_gnssGeofenceStatusCb:I = 0x2

.field static final blacklist TRANSACTION_gnssGeofenceTransitionCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->markVintfStability()V

    .line 63
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofenceCallback;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssGeofenceCallback;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    sparse-switch p0, :sswitch_data_1e

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 115
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 119
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 111
    :sswitch_b
    const-string v0, "gnssGeofenceResumeCb"

    return-object v0

    .line 107
    :sswitch_e
    const-string v0, "gnssGeofencePauseCb"

    return-object v0

    .line 103
    :sswitch_11
    const-string v0, "gnssGeofenceRemoveCb"

    return-object v0

    .line 99
    :sswitch_14
    const-string v0, "gnssGeofenceAddCb"

    return-object v0

    .line 95
    :sswitch_17
    const-string v0, "gnssGeofenceStatusCb"

    return-object v0

    .line 91
    :sswitch_1a
    const-string v0, "gnssGeofenceTransitionCb"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_17
        0x3 -> :sswitch_14
        0x4 -> :sswitch_11
        0x5 -> :sswitch_e
        0x6 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 410
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v2

    .line 142
    :cond_16
    if-ne p1, v1, :cond_23

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v2

    .line 147
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v2

    .line 152
    :cond_33
    packed-switch p1, :pswitch_data_ba

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 216
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceResumeCb(II)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_b9

    .line 205
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofencePauseCb(II)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_b9

    .line 194
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceRemoveCb(II)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_b9

    .line 183
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceAddCb(II)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_b9

    .line 172
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/GnssLocation;

    .line 175
    .local v3, "_arg1":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_b9

    .line 157
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/gnss/GnssLocation;
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 159
    .local v5, "_arg0":I
    sget-object v1, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/hardware/gnss/GnssLocation;

    .line 161
    .local v6, "_arg1":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 163
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 164
    .local v8, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    nop

    .line 229
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/hardware/gnss/GnssLocation;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":J
    :goto_b9
    return v2

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_99
        :pswitch_83
        :pswitch_71
        :pswitch_5f
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
