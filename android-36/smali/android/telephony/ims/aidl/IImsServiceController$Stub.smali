.class public abstract Landroid/telephony/ims/aidl/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addFeatureStatusCallback:I = 0x7

.field static final blacklist TRANSACTION_createEmergencyOnlyMmTelFeature:I = 0x3

.field static final blacklist TRANSACTION_createMmTelFeature:I = 0x2

.field static final blacklist TRANSACTION_createRcsFeature:I = 0x4

.field static final blacklist TRANSACTION_disableIms:I = 0xf

.field static final blacklist TRANSACTION_enableIms:I = 0xe

.field static final blacklist TRANSACTION_getConfig:I = 0xb

.field static final blacklist TRANSACTION_getImsServiceCapabilities:I = 0x6

.field static final blacklist TRANSACTION_getRegistration:I = 0xc

.field static final blacklist TRANSACTION_getSipTransport:I = 0xd

.field static final blacklist TRANSACTION_notifyImsServiceReadyForFeatureCreation:I = 0x9

.field static final blacklist TRANSACTION_querySupportedImsFeatures:I = 0x5

.field static final blacklist TRANSACTION_removeFeatureStatusCallback:I = 0x8

.field static final blacklist TRANSACTION_removeImsFeature:I = 0xa

.field static final blacklist TRANSACTION_resetIms:I = 0x10

.field static final blacklist TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsServiceController;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_36

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 176
    :pswitch_5
    const-string v0, "resetIms"

    return-object v0

    .line 172
    :pswitch_8
    const-string v0, "disableIms"

    return-object v0

    .line 168
    :pswitch_b
    const-string v0, "enableIms"

    return-object v0

    .line 164
    :pswitch_e
    const-string v0, "getSipTransport"

    return-object v0

    .line 160
    :pswitch_11
    const-string v0, "getRegistration"

    return-object v0

    .line 156
    :pswitch_14
    const-string v0, "getConfig"

    return-object v0

    .line 152
    :pswitch_17
    const-string v0, "removeImsFeature"

    return-object v0

    .line 148
    :pswitch_1a
    const-string v0, "notifyImsServiceReadyForFeatureCreation"

    return-object v0

    .line 144
    :pswitch_1d
    const-string v0, "removeFeatureStatusCallback"

    return-object v0

    .line 140
    :pswitch_20
    const-string v0, "addFeatureStatusCallback"

    return-object v0

    .line 136
    :pswitch_23
    const-string v0, "getImsServiceCapabilities"

    return-object v0

    .line 132
    :pswitch_26
    const-string v0, "querySupportedImsFeatures"

    return-object v0

    .line 128
    :pswitch_29
    const-string v0, "createRcsFeature"

    return-object v0

    .line 124
    :pswitch_2c
    const-string v0, "createEmergencyOnlyMmTelFeature"

    return-object v0

    .line 120
    :pswitch_2f
    const-string v0, "createMmTelFeature"

    return-object v0

    .line 116
    :pswitch_32
    const-string v0, "setListener"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
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

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 675
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 187
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 191
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    .line 192
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 196
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return v1

    .line 199
    :cond_16
    packed-switch p1, :pswitch_data_14a

    .line 369
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 360
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->resetIms(II)V

    .line 365
    goto/16 :goto_149

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->disableIms(II)V

    .line 355
    goto/16 :goto_149

    .line 340
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->enableIms(II)V

    .line 345
    goto/16 :goto_149

    .line 330
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v3

    .line 333
    .local v3, "_result":Landroid/telephony/ims/aidl/ISipTransport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 335
    goto/16 :goto_149

    .line 318
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/aidl/ISipTransport;
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 323
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 325
    goto/16 :goto_149

    .line 306
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 311
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 313
    goto/16 :goto_149

    .line 293
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 295
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 297
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 298
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeImsFeature(IIZ)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_149

    .line 286
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_a6
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->notifyImsServiceReadyForFeatureCreation()V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_149

    .line 274
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 279
    .local v4, "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_149

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 266
    .restart local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto :goto_149

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_e3
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getImsServiceCapabilities()J

    move-result-wide v2

    .line 254
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    goto :goto_149

    .line 246
    .end local v2    # "_result":J
    :pswitch_ee
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v2

    .line 247
    .local v2, "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    goto :goto_149

    .line 235
    .end local v2    # "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v4

    .line 240
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 242
    goto :goto_149

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v3

    .line 228
    .local v3, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 230
    goto :goto_149

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v4

    .line 218
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 220
    goto :goto_149

    .line 204
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsServiceControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    move-result-object v2

    .line 205
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    nop

    .line 372
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    :goto_149
    return v1

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_137
        :pswitch_121
        :pswitch_10f
        :pswitch_f9
        :pswitch_ee
        :pswitch_e3
        :pswitch_c9
        :pswitch_ae
        :pswitch_a6
        :pswitch_8f
        :pswitch_78
        :pswitch_61
        :pswitch_4e
        :pswitch_3e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
