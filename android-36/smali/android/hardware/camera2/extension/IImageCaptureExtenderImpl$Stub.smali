.class public abstract Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IImageCaptureExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableCaptureRequestKeys:I = 0xf

.field static final blacklist TRANSACTION_getAvailableCaptureResultKeys:I = 0x10

.field static final blacklist TRANSACTION_getCaptureProcessor:I = 0x9

.field static final blacklist TRANSACTION_getCaptureStages:I = 0xa

.field static final blacklist TRANSACTION_getEstimatedCaptureLatencyRange:I = 0xe

.field static final blacklist TRANSACTION_getMaxCaptureStage:I = 0xb

.field static final blacklist TRANSACTION_getRealtimeCaptureLatency:I = 0x12

.field static final blacklist TRANSACTION_getSessionType:I = 0x6

.field static final blacklist TRANSACTION_getSupportedPostviewResolutions:I = 0xd

.field static final blacklist TRANSACTION_getSupportedResolutions:I = 0xc

.field static final blacklist TRANSACTION_init:I = 0x8

.field static final blacklist TRANSACTION_isCaptureProcessProgressAvailable:I = 0x11

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x7

.field static final blacklist TRANSACTION_isPostviewAvailable:I = 0x13

.field static final blacklist TRANSACTION_onDeInit:I = 0x2

.field static final blacklist TRANSACTION_onDisableSession:I = 0x5

.field static final blacklist TRANSACTION_onEnableSession:I = 0x4

.field static final blacklist TRANSACTION_onInit:I = 0x1

.field static final blacklist TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    if-eqz v1, :cond_14

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    return-object v1

    .line 116
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 125
    packed-switch p0, :pswitch_data_4a

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 201
    :pswitch_5
    const-string/jumbo v0, "isPostviewAvailable"

    return-object v0

    .line 197
    :pswitch_9
    const-string v0, "getRealtimeCaptureLatency"

    return-object v0

    .line 193
    :pswitch_c
    const-string/jumbo v0, "isCaptureProcessProgressAvailable"

    return-object v0

    .line 189
    :pswitch_10
    const-string v0, "getAvailableCaptureResultKeys"

    return-object v0

    .line 185
    :pswitch_13
    const-string v0, "getAvailableCaptureRequestKeys"

    return-object v0

    .line 181
    :pswitch_16
    const-string v0, "getEstimatedCaptureLatencyRange"

    return-object v0

    .line 177
    :pswitch_19
    const-string/jumbo v0, "getSupportedPostviewResolutions"

    return-object v0

    .line 173
    :pswitch_1d
    const-string/jumbo v0, "getSupportedResolutions"

    return-object v0

    .line 169
    :pswitch_21
    const-string v0, "getMaxCaptureStage"

    return-object v0

    .line 165
    :pswitch_24
    const-string v0, "getCaptureStages"

    return-object v0

    .line 161
    :pswitch_27
    const-string v0, "getCaptureProcessor"

    return-object v0

    .line 157
    :pswitch_2a
    const-string/jumbo v0, "init"

    return-object v0

    .line 153
    :pswitch_2e
    const-string/jumbo v0, "isExtensionAvailable"

    return-object v0

    .line 149
    :pswitch_32
    const-string v0, "getSessionType"

    return-object v0

    .line 145
    :pswitch_35
    const-string/jumbo v0, "onDisableSession"

    return-object v0

    .line 141
    :pswitch_39
    const-string/jumbo v0, "onEnableSession"

    return-object v0

    .line 137
    :pswitch_3d
    const-string/jumbo v0, "onPresetSession"

    return-object v0

    .line 133
    :pswitch_41
    const-string/jumbo v0, "onDeInit"

    return-object v0

    .line 129
    :pswitch_45
    const-string/jumbo v0, "onInit"

    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 751
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 212
    invoke-static {p1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 216
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    .line 217
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 218
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v1

    .line 224
    :cond_16
    packed-switch p1, :pswitch_data_13e

    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 377
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isPostviewAvailable()Z

    move-result v2

    .line 378
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto/16 :goto_13c

    .line 370
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object v2

    .line 371
    .local v2, "_result":Landroid/hardware/camera2/extension/LatencyPair;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 373
    goto/16 :goto_13c

    .line 363
    .end local v2    # "_result":Landroid/hardware/camera2/extension/LatencyPair;
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isCaptureProcessProgressAvailable()Z

    move-result v2

    .line 364
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_13c

    .line 356
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 357
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 359
    goto/16 :goto_13c

    .line 349
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 350
    .restart local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    goto/16 :goto_13c

    .line 340
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_5a
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 341
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v3

    .line 343
    .local v3, "_result":Landroid/hardware/camera2/extension/LatencyRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 345
    goto/16 :goto_13c

    .line 330
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "_result":Landroid/hardware/camera2/extension/LatencyRange;
    :pswitch_71
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 331
    .restart local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v3

    .line 333
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 335
    goto/16 :goto_13c

    .line 322
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_88
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object v2

    .line 323
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 325
    goto/16 :goto_13c

    .line 315
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_94
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getMaxCaptureStage()I

    move-result v2

    .line 316
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    goto/16 :goto_13c

    .line 308
    .end local v2    # "_result":I
    :pswitch_a0
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getCaptureStages()Ljava/util/List;

    move-result-object v2

    .line 309
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 311
    goto/16 :goto_13c

    .line 301
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :pswitch_ac
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v2

    .line 302
    .local v2, "_result":Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 304
    goto/16 :goto_13c

    .line 291
    .end local v2    # "_result":Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 294
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto :goto_13c

    .line 279
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 282
    .restart local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    .line 284
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto :goto_13c

    .line 271
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":Z
    :pswitch_e8
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSessionType()I

    move-result v2

    .line 272
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    goto :goto_13c

    .line 264
    .end local v2    # "_result":I
    :pswitch_f3
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 265
    .local v2, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_13c

    .line 257
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_fe
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 258
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 260
    goto :goto_13c

    .line 250
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_109
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 251
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 253
    goto :goto_13c

    .line 242
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 243
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onDeInit(Landroid/os/IBinder;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_13c

    .line 229
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 234
    .local v4, "_arg2":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    nop

    .line 387
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_13c
    return v1

    nop

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_122
        :pswitch_114
        :pswitch_109
        :pswitch_fe
        :pswitch_f3
        :pswitch_e8
        :pswitch_ce
        :pswitch_b8
        :pswitch_ac
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_71
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
