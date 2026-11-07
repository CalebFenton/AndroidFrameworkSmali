.class public abstract Landroid/telephony/ims/aidl/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addImsConfigCallback:I = 0x1

.field static final blacklist TRANSACTION_addRcsConfigCallback:I = 0xa

.field static final blacklist TRANSACTION_getConfigInt:I = 0x3

.field static final blacklist TRANSACTION_getConfigString:I = 0x4

.field static final blacklist TRANSACTION_notifyIntImsConfigChanged:I = 0xe

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x8

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationRemoved:I = 0x9

.field static final blacklist TRANSACTION_notifyStringImsConfigChanged:I = 0xf

.field static final blacklist TRANSACTION_removeImsConfigCallback:I = 0x2

.field static final blacklist TRANSACTION_removeRcsConfigCallback:I = 0xb

.field static final blacklist TRANSACTION_setConfigInt:I = 0x5

.field static final blacklist TRANSACTION_setConfigString:I = 0x6

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0xd

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0xc

.field static final blacklist TRANSACTION_updateImsCarrierConfigs:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_14

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsConfig;

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_32

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 168
    :pswitch_5
    const-string v0, "notifyStringImsConfigChanged"

    return-object v0

    .line 164
    :pswitch_8
    const-string v0, "notifyIntImsConfigChanged"

    return-object v0

    .line 160
    :pswitch_b
    const-string v0, "setRcsClientConfiguration"

    return-object v0

    .line 156
    :pswitch_e
    const-string v0, "triggerRcsReconfiguration"

    return-object v0

    .line 152
    :pswitch_11
    const-string v0, "removeRcsConfigCallback"

    return-object v0

    .line 148
    :pswitch_14
    const-string v0, "addRcsConfigCallback"

    return-object v0

    .line 144
    :pswitch_17
    const-string v0, "notifyRcsAutoConfigurationRemoved"

    return-object v0

    .line 140
    :pswitch_1a
    const-string v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    .line 136
    :pswitch_1d
    const-string v0, "updateImsCarrierConfigs"

    return-object v0

    .line 132
    :pswitch_20
    const-string v0, "setConfigString"

    return-object v0

    .line 128
    :pswitch_23
    const-string v0, "setConfigInt"

    return-object v0

    .line 124
    :pswitch_26
    const-string v0, "getConfigString"

    return-object v0

    .line 120
    :pswitch_29
    const-string v0, "getConfigInt"

    return-object v0

    .line 116
    :pswitch_2c
    const-string v0, "removeImsConfigCallback"

    return-object v0

    .line 112
    :pswitch_2f
    const-string v0, "addImsConfigCallback"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
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

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 619
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 179
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 183
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    .line 184
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 185
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 188
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v1

    .line 191
    :cond_16
    packed-switch p1, :pswitch_data_128

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 328
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyStringImsConfigChanged(ILjava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_127

    .line 317
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 320
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyIntImsConfigChanged(II)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_127

    .line 308
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_44
    sget-object v2, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsClientConfiguration;

    .line 309
    .local v2, "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_127

    .line 301
    .end local v2    # "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_57
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->triggerRcsReconfiguration()V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_127

    .line 293
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 294
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_127

    .line 284
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 285
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_127

    .line 277
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_85
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationRemoved()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_127

    .line 267
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 269
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 270
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_127

    .line 258
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Z
    :pswitch_a0
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 259
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_127

    .line 246
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigString(ILjava/lang/String;)I

    move-result v4

    .line 251
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    goto :goto_127

    .line 234
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigInt(II)I

    move-result v4

    .line 239
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    goto :goto_127

    .line 224
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    goto :goto_127

    .line 214
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigInt(I)I

    move-result v3

    .line 217
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    goto :goto_127

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_127

    .line 196
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    .line 197
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    nop

    .line 341
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :goto_127
    return v1

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_115
        :pswitch_103
        :pswitch_f1
        :pswitch_df
        :pswitch_c9
        :pswitch_b3
        :pswitch_a0
        :pswitch_8d
        :pswitch_85
        :pswitch_72
        :pswitch_5f
        :pswitch_57
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
