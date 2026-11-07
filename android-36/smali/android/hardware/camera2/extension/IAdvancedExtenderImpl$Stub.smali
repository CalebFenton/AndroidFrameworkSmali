.class public abstract Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IAdvancedExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableCaptureRequestKeys:I = 0x8

.field static final blacklist TRANSACTION_getAvailableCaptureResultKeys:I = 0x9

.field static final blacklist TRANSACTION_getAvailableCharacteristicsKeyValues:I = 0xc

.field static final blacklist TRANSACTION_getEstimatedCaptureLatencyRange:I = 0x3

.field static final blacklist TRANSACTION_getSessionProcessor:I = 0x7

.field static final blacklist TRANSACTION_getSupportedCaptureOutputResolutions:I = 0x5

.field static final blacklist TRANSACTION_getSupportedPostviewResolutions:I = 0x6

.field static final blacklist TRANSACTION_getSupportedPreviewOutputResolutions:I = 0x4

.field static final blacklist TRANSACTION_init:I = 0x2

.field static final blacklist TRANSACTION_isCaptureProcessProgressAvailable:I = 0xa

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x1

.field static final blacklist TRANSACTION_isPostviewAvailable:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_30

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 147
    :pswitch_5
    const-string v0, "getAvailableCharacteristicsKeyValues"

    return-object v0

    .line 143
    :pswitch_8
    const-string/jumbo v0, "isPostviewAvailable"

    return-object v0

    .line 139
    :pswitch_c
    const-string/jumbo v0, "isCaptureProcessProgressAvailable"

    return-object v0

    .line 135
    :pswitch_10
    const-string v0, "getAvailableCaptureResultKeys"

    return-object v0

    .line 131
    :pswitch_13
    const-string v0, "getAvailableCaptureRequestKeys"

    return-object v0

    .line 127
    :pswitch_16
    const-string v0, "getSessionProcessor"

    return-object v0

    .line 123
    :pswitch_19
    const-string/jumbo v0, "getSupportedPostviewResolutions"

    return-object v0

    .line 119
    :pswitch_1d
    const-string/jumbo v0, "getSupportedCaptureOutputResolutions"

    return-object v0

    .line 115
    :pswitch_21
    const-string/jumbo v0, "getSupportedPreviewOutputResolutions"

    return-object v0

    .line 111
    :pswitch_25
    const-string v0, "getEstimatedCaptureLatencyRange"

    return-object v0

    .line 107
    :pswitch_28
    const-string/jumbo v0, "init"

    return-object v0

    .line 103
    :pswitch_2c
    const-string/jumbo v0, "isExtensionAvailable"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 181
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 184
    .local v1, "v":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 202
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 205
    .local v1, "v":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 576
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 158
    invoke-static {p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    .line 163
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v1

    .line 170
    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_128

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 301
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 304
    .local v3, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 306
    goto/16 :goto_127

    .line 293
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isPostviewAvailable()Z

    move-result v2

    .line 294
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    goto/16 :goto_127

    .line 286
    .end local v2    # "_result":Z
    :pswitch_3f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isCaptureProcessProgressAvailable()Z

    move-result v2

    .line 287
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 289
    goto/16 :goto_127

    .line 277
    .end local v2    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 280
    .restart local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    goto/16 :goto_127

    .line 267
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 270
    .restart local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 272
    goto/16 :goto_127

    .line 259
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_71
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v2

    .line 260
    .local v2, "_result":Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 262
    goto/16 :goto_127

    .line 250
    .end local v2    # "_result":Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    :pswitch_7d
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 251
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 255
    goto/16 :goto_127

    .line 240
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 243
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 245
    goto/16 :goto_127

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 233
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 235
    goto :goto_127

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    .line 220
    .local v3, "_arg1":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 223
    .local v5, "_result":Landroid/hardware/camera2/extension/LatencyRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_127

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/Size;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/hardware/camera2/extension/LatencyRange;
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 200
    .local v5, "N":I
    if-gez v5, :cond_e2

    goto :goto_e7

    :cond_e2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v3, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    :goto_e7
    invoke-static {v2, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v6, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 208
    .end local v5    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_127

    .line 175
    .end local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    .end local v4    # "_arg0":Ljava/lang/String;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    .restart local v5    # "N":I
    if-gez v5, :cond_108

    goto :goto_10d

    :cond_108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 180
    .restart local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    :goto_10d
    invoke-static {v2, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v6, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 187
    .end local v5    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    .line 189
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    nop

    .line 313
    .end local v2    # "_result":Z
    .end local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    .end local v4    # "_arg0":Ljava/lang/String;
    :goto_127
    return v1

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_d7
        :pswitch_b9
        :pswitch_a7
        :pswitch_94
        :pswitch_7d
        :pswitch_71
        :pswitch_5e
        :pswitch_4b
        :pswitch_3f
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
