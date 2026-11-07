.class public abstract Landroid/ranging/IRangingAdapter$Stub;
.super Landroid/os/Binder;
.source "IRangingAdapter.java"

# interfaces
.implements Landroid/ranging/IRangingAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/IRangingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/IRangingAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOobDevice:I = 0x4

.field static final blacklist TRANSACTION_addRawDevice:I = 0x3

.field static final blacklist TRANSACTION_deviceOobClosed:I = 0xc

.field static final blacklist TRANSACTION_deviceOobDisconnected:I = 0xa

.field static final blacklist TRANSACTION_deviceOobReconnected:I = 0xb

.field static final blacklist TRANSACTION_oobDataReceived:I = 0x9

.field static final blacklist TRANSACTION_reconfigureRangingInterval:I = 0x2

.field static final blacklist TRANSACTION_registerCapabilitiesCallback:I = 0x7

.field static final blacklist TRANSACTION_registerOobSendDataListener:I = 0xd

.field static final blacklist TRANSACTION_removeDevice:I = 0x5

.field static final blacklist TRANSACTION_startRanging:I = 0x1

.field static final blacklist TRANSACTION_stopRanging:I = 0x6

.field static final blacklist TRANSACTION_unregisterCapabilitiesCallback:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.ranging.IRangingAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/ranging/IRangingAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/ranging/IRangingAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.ranging.IRangingAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/ranging/IRangingAdapter;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/ranging/IRangingAdapter;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/ranging/IRangingAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/ranging/IRangingAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_2c

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_5
    const-string v0, "registerOobSendDataListener"

    return-object v0

    .line 139
    :pswitch_8
    const-string v0, "deviceOobClosed"

    return-object v0

    .line 135
    :pswitch_b
    const-string v0, "deviceOobReconnected"

    return-object v0

    .line 131
    :pswitch_e
    const-string v0, "deviceOobDisconnected"

    return-object v0

    .line 127
    :pswitch_11
    const-string v0, "oobDataReceived"

    return-object v0

    .line 123
    :pswitch_14
    const-string v0, "unregisterCapabilitiesCallback"

    return-object v0

    .line 119
    :pswitch_17
    const-string v0, "registerCapabilitiesCallback"

    return-object v0

    .line 115
    :pswitch_1a
    const-string v0, "stopRanging"

    return-object v0

    .line 111
    :pswitch_1d
    const-string v0, "removeDevice"

    return-object v0

    .line 107
    :pswitch_20
    const-string v0, "addOobDevice"

    return-object v0

    .line 103
    :pswitch_23
    const-string v0, "addRawDevice"

    return-object v0

    .line 99
    :pswitch_26
    const-string v0, "reconfigureRangingInterval"

    return-object v0

    .line 95
    :pswitch_29
    const-string v0, "startRanging"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 543
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/ranging/IRangingAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const-string v0, "android.ranging.IRangingAdapter"

    .line 159
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 166
    :cond_16
    packed-switch p1, :pswitch_data_14a

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 295
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/ranging/oob/IOobSendDataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ranging/oob/IOobSendDataListener;

    move-result-object v2

    .line 296
    .local v2, "_arg0":Landroid/ranging/oob/IOobSendDataListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->registerOobSendDataListener(Landroid/ranging/oob/IOobSendDataListener;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_148

    .line 286
    .end local v2    # "_arg0":Landroid/ranging/oob/IOobSendDataListener;
    :pswitch_31
    sget-object v2, Landroid/ranging/oob/OobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/oob/OobHandle;

    .line 287
    .local v2, "_arg0":Landroid/ranging/oob/OobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->deviceOobClosed(Landroid/ranging/oob/OobHandle;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_148

    .line 277
    .end local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    :pswitch_44
    sget-object v2, Landroid/ranging/oob/OobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/oob/OobHandle;

    .line 278
    .restart local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->deviceOobReconnected(Landroid/ranging/oob/OobHandle;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_148

    .line 268
    .end local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    :pswitch_57
    sget-object v2, Landroid/ranging/oob/OobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/oob/OobHandle;

    .line 269
    .restart local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->deviceOobDisconnected(Landroid/ranging/oob/OobHandle;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_148

    .line 257
    .end local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    :pswitch_6a
    sget-object v2, Landroid/ranging/oob/OobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/oob/OobHandle;

    .line 259
    .restart local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 260
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingAdapter$Stub;->oobDataReceived(Landroid/ranging/oob/OobHandle;[B)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_148

    .line 248
    .end local v2    # "_arg0":Landroid/ranging/oob/OobHandle;
    .end local v3    # "_arg1":[B
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/ranging/IRangingCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ranging/IRangingCapabilitiesCallback;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Landroid/ranging/IRangingCapabilitiesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->unregisterCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_148

    .line 239
    .end local v2    # "_arg0":Landroid/ranging/IRangingCapabilitiesCallback;
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/ranging/IRangingCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ranging/IRangingCapabilitiesCallback;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg0":Landroid/ranging/IRangingCapabilitiesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->registerCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_148

    .line 230
    .end local v2    # "_arg0":Landroid/ranging/IRangingCapabilitiesCallback;
    :pswitch_a7
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 231
    .local v2, "_arg0":Landroid/ranging/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingAdapter$Stub;->stopRanging(Landroid/ranging/SessionHandle;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_148

    .line 219
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    :pswitch_ba
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 221
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    sget-object v3, Landroid/ranging/RangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/RangingDevice;

    .line 222
    .local v3, "_arg1":Landroid/ranging/RangingDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingAdapter$Stub;->removeDevice(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_148

    .line 208
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":Landroid/ranging/RangingDevice;
    :pswitch_d4
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 210
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    sget-object v3, Landroid/ranging/oob/OobResponderRangingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/oob/OobResponderRangingConfig;

    .line 211
    .local v3, "_arg1":Landroid/ranging/oob/OobResponderRangingConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingAdapter$Stub;->addOobDevice(Landroid/ranging/SessionHandle;Landroid/ranging/oob/OobResponderRangingConfig;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_148

    .line 197
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":Landroid/ranging/oob/OobResponderRangingConfig;
    :pswitch_ee
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 199
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    sget-object v3, Landroid/ranging/raw/RawResponderRangingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/raw/RawResponderRangingConfig;

    .line 200
    .local v3, "_arg1":Landroid/ranging/raw/RawResponderRangingConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingAdapter$Stub;->addRawDevice(Landroid/ranging/SessionHandle;Landroid/ranging/raw/RawResponderRangingConfig;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_148

    .line 186
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":Landroid/ranging/raw/RawResponderRangingConfig;
    :pswitch_108
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 188
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingAdapter$Stub;->reconfigureRangingInterval(Landroid/ranging/SessionHandle;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_148

    .line 171
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":I
    :pswitch_11e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 173
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/SessionHandle;

    .line 175
    .local v3, "_arg1":Landroid/ranging/SessionHandle;
    sget-object v4, Landroid/ranging/RangingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/ranging/RangingPreference;

    .line 177
    .local v4, "_arg2":Landroid/ranging/RangingPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/ranging/IRangingCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ranging/IRangingCallbacks;

    move-result-object v5

    .line 178
    .local v5, "_arg3":Landroid/ranging/IRangingCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/ranging/IRangingAdapter$Stub;->startRanging(Landroid/content/AttributionSource;Landroid/ranging/SessionHandle;Landroid/ranging/RangingPreference;Landroid/ranging/IRangingCallbacks;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    nop

    .line 306
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/ranging/SessionHandle;
    .end local v4    # "_arg2":Landroid/ranging/RangingPreference;
    .end local v5    # "_arg3":Landroid/ranging/IRangingCallbacks;
    :goto_148
    return v1

    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_11e
        :pswitch_108
        :pswitch_ee
        :pswitch_d4
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_81
        :pswitch_6a
        :pswitch_57
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
