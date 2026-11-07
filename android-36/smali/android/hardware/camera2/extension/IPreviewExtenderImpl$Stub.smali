.class public abstract Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IPreviewExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IPreviewExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCaptureStage:I = 0x8

.field static final blacklist TRANSACTION_getPreviewImageProcessor:I = 0xb

.field static final blacklist TRANSACTION_getProcessorType:I = 0xa

.field static final blacklist TRANSACTION_getRequestUpdateProcessor:I = 0xc

.field static final blacklist TRANSACTION_getSessionType:I = 0x9

.field static final blacklist TRANSACTION_getSupportedResolutions:I = 0xd

.field static final blacklist TRANSACTION_init:I = 0x6

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x7

.field static final blacklist TRANSACTION_onDeInit:I = 0x2

.field static final blacklist TRANSACTION_onDisableSession:I = 0x5

.field static final blacklist TRANSACTION_onEnableSession:I = 0x4

.field static final blacklist TRANSACTION_onInit:I = 0x1

.field static final blacklist TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_34

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 153
    :pswitch_5
    const-string/jumbo v0, "getSupportedResolutions"

    return-object v0

    .line 149
    :pswitch_9
    const-string v0, "getRequestUpdateProcessor"

    return-object v0

    .line 145
    :pswitch_c
    const-string v0, "getPreviewImageProcessor"

    return-object v0

    .line 141
    :pswitch_f
    const-string v0, "getProcessorType"

    return-object v0

    .line 137
    :pswitch_12
    const-string v0, "getSessionType"

    return-object v0

    .line 133
    :pswitch_15
    const-string v0, "getCaptureStage"

    return-object v0

    .line 129
    :pswitch_18
    const-string/jumbo v0, "isExtensionAvailable"

    return-object v0

    .line 125
    :pswitch_1c
    const-string/jumbo v0, "init"

    return-object v0

    .line 121
    :pswitch_20
    const-string/jumbo v0, "onDisableSession"

    return-object v0

    .line 117
    :pswitch_24
    const-string/jumbo v0, "onEnableSession"

    return-object v0

    .line 113
    :pswitch_28
    const-string/jumbo v0, "onPresetSession"

    return-object v0

    .line 109
    :pswitch_2c
    const-string/jumbo v0, "onDeInit"

    return-object v0

    .line 105
    :pswitch_30
    const-string/jumbo v0, "onInit"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 545
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 164
    invoke-static {p1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 168
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    .line 169
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 170
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 176
    :cond_16
    packed-switch p1, :pswitch_data_e0

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 281
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 284
    goto/16 :goto_df

    .line 274
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v2

    .line 275
    .local v2, "_result":Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 277
    goto/16 :goto_df

    .line 267
    .end local v2    # "_result":Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object v2

    .line 268
    .local v2, "_result":Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 270
    goto/16 :goto_df

    .line 260
    .end local v2    # "_result":Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getProcessorType()I

    move-result v2

    .line 261
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    goto/16 :goto_df

    .line 253
    .end local v2    # "_result":I
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getSessionType()I

    move-result v2

    .line 254
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto/16 :goto_df

    .line 246
    .end local v2    # "_result":I
    :pswitch_5a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 247
    .local v2, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    goto/16 :goto_df

    .line 235
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 238
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    .line 240
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto :goto_df

    .line 224
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 227
    .restart local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_df

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_96
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 217
    .local v2, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_df

    .line 209
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_a1
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 210
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 212
    goto :goto_df

    .line 202
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_ac
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 203
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    goto :goto_df

    .line 194
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDeInit(Landroid/os/IBinder;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_df

    .line 181
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 186
    .local v4, "_arg2":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    nop

    .line 291
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_df
    return v1

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_96
        :pswitch_80
        :pswitch_66
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
