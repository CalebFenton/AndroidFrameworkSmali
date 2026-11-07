.class public abstract Landroid/hardware/gnss/IGnssCallback$Stub;
.super Landroid/os/Binder;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_gnssAcquireWakelockCb:I = 0x6

.field static final blacklist TRANSACTION_gnssLocationCb:I = 0x4

.field static final blacklist TRANSACTION_gnssNmeaCb:I = 0x5

.field static final blacklist TRANSACTION_gnssReleaseWakelockCb:I = 0x7

.field static final blacklist TRANSACTION_gnssRequestLocationCb:I = 0xa

.field static final blacklist TRANSACTION_gnssRequestTimeCb:I = 0x9

.field static final blacklist TRANSACTION_gnssSetCapabilitiesCb:I = 0x1

.field static final blacklist TRANSACTION_gnssSetSystemInfoCb:I = 0x8

.field static final blacklist TRANSACTION_gnssStatusCb:I = 0x2

.field static final blacklist TRANSACTION_gnssSvStatusCb:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->markVintfStability()V

    .line 75
    sget-object v0, Landroid/hardware/gnss/IGnssCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssCallback;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssCallback;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    sparse-switch p0, :sswitch_data_2a

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 143
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 147
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 139
    :sswitch_b
    const-string v0, "gnssRequestLocationCb"

    return-object v0

    .line 135
    :sswitch_e
    const-string v0, "gnssRequestTimeCb"

    return-object v0

    .line 131
    :sswitch_11
    const-string v0, "gnssSetSystemInfoCb"

    return-object v0

    .line 127
    :sswitch_14
    const-string v0, "gnssReleaseWakelockCb"

    return-object v0

    .line 123
    :sswitch_17
    const-string v0, "gnssAcquireWakelockCb"

    return-object v0

    .line 119
    :sswitch_1a
    const-string v0, "gnssNmeaCb"

    return-object v0

    .line 115
    :sswitch_1d
    const-string v0, "gnssLocationCb"

    return-object v0

    .line 111
    :sswitch_20
    const-string v0, "gnssSvStatusCb"

    return-object v0

    .line 107
    :sswitch_23
    const-string v0, "gnssStatusCb"

    return-object v0

    .line 103
    :sswitch_26
    const-string v0, "gnssSetCapabilitiesCb"

    return-object v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_23
        0x3 -> :sswitch_20
        0x4 -> :sswitch_1d
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_17
        0x7 -> :sswitch_14
        0x8 -> :sswitch_11
        0x9 -> :sswitch_e
        0xa -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 520
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 158
    invoke-static {p1}, Landroid/hardware/gnss/IGnssCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    sget-object v0, Landroid/hardware/gnss/IGnssCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 163
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v2

    .line 170
    :cond_16
    if-ne p1, v1, :cond_23

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return v2

    .line 175
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v2

    .line 180
    :cond_33
    packed-switch p1, :pswitch_data_ca

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 259
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 261
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 262
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssRequestLocationCb(ZZ)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_c8

    .line 252
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssRequestTimeCb()V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_c8

    .line 244
    :pswitch_56
    sget-object v1, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;

    .line 245
    .local v1, "_arg0":Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto :goto_c8

    .line 237
    .end local v1    # "_arg0":Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;
    :pswitch_68
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_c8

    .line 231
    :pswitch_6f
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_c8

    .line 221
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 223
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v3, v4, v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto :goto_c8

    .line 212
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg0":J
    :pswitch_88
    sget-object v1, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/GnssLocation;

    .line 213
    .local v1, "_arg0":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/GnssLocation;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_c8

    .line 203
    .end local v1    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    :pswitch_9a
    sget-object v1, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;

    .line 204
    .local v1, "_arg0":[Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssSvStatusCb([Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_c8

    .line 194
    .end local v1    # "_arg0":[Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssStatusCb(I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_c8

    .line 185
    .end local v1    # "_arg0":I
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssSetCapabilitiesCb(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    nop

    .line 272
    .end local v1    # "_arg0":I
    :goto_c8
    return v2

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_ac
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_6f
        :pswitch_68
        :pswitch_56
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
