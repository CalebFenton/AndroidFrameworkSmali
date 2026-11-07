.class public abstract Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "ISessionProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ISessionProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ISessionProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deInitSession:I = 0x2

.field static final blacklist TRANSACTION_getRealtimeCaptureLatency:I = 0xa

.field static final blacklist TRANSACTION_initSession:I = 0x1

.field static final blacklist TRANSACTION_onCaptureSessionEnd:I = 0x4

.field static final blacklist TRANSACTION_onCaptureSessionStart:I = 0x3

.field static final blacklist TRANSACTION_setParameters:I = 0x8

.field static final blacklist TRANSACTION_startCapture:I = 0x7

.field static final blacklist TRANSACTION_startRepeating:I = 0x5

.field static final blacklist TRANSACTION_startTrigger:I = 0x9

.field static final blacklist TRANSACTION_stopRepeating:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_2c

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_5
    const-string v0, "getRealtimeCaptureLatency"

    return-object v0

    .line 123
    :pswitch_8
    const-string/jumbo v0, "startTrigger"

    return-object v0

    .line 119
    :pswitch_c
    const-string/jumbo v0, "setParameters"

    return-object v0

    .line 115
    :pswitch_10
    const-string/jumbo v0, "startCapture"

    return-object v0

    .line 111
    :pswitch_14
    const-string/jumbo v0, "stopRepeating"

    return-object v0

    .line 107
    :pswitch_18
    const-string/jumbo v0, "startRepeating"

    return-object v0

    .line 103
    :pswitch_1c
    const-string/jumbo v0, "onCaptureSessionEnd"

    return-object v0

    .line 99
    :pswitch_20
    const-string/jumbo v0, "onCaptureSessionStart"

    return-object v0

    .line 95
    :pswitch_24
    const-string v0, "deInitSession"

    return-object v0

    .line 91
    :pswitch_27
    const-string/jumbo v0, "initSession"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg2"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 166
    .local v1, "v":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 477
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 138
    invoke-static {p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 142
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 150
    :cond_16
    packed-switch p1, :pswitch_data_110

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 258
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object v2

    .line 259
    .local v2, "_result":Landroid/hardware/camera2/extension/LatencyPair;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 261
    goto/16 :goto_10e

    .line 247
    .end local v2    # "_result":Landroid/hardware/camera2/extension/LatencyPair;
    :pswitch_2a
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 249
    .local v2, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v3

    .line 250
    .local v3, "_arg1":Landroid/hardware/camera2/extension/ICaptureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v4

    .line 252
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    goto/16 :goto_10e

    .line 238
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/ICaptureCallback;
    .end local v4    # "_result":I
    :pswitch_49
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 239
    .restart local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_10e

    .line 226
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v2

    .line 228
    .local v2, "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 229
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I

    move-result v4

    .line 231
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    goto/16 :goto_10e

    .line 219
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_77
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->stopRepeating()V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_10e

    .line 210
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v3

    .line 213
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto/16 :goto_10e

    .line 203
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/ICaptureCallback;
    .end local v3    # "_result":I
    :pswitch_96
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionEnd()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_10e

    .line 193
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_10e

    .line 184
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->deInitSession(Landroid/os/IBinder;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_10e

    .line 155
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 157
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "N":I
    if-gez v2, :cond_d1

    const/4 v3, 0x0

    goto :goto_d6

    :cond_d1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_d6
    move-object v6, v3

    .line 162
    .local v6, "_arg2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v7, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v7, p2, v6}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v3, v7}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 170
    .end local v2    # "N":I
    sget-object v2, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/hardware/camera2/extension/OutputSurface;

    .line 172
    .local v7, "_arg3":Landroid/hardware/camera2/extension/OutputSurface;
    sget-object v2, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/hardware/camera2/extension/OutputSurface;

    .line 174
    .local v8, "_arg4":Landroid/hardware/camera2/extension/OutputSurface;
    sget-object v2, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/hardware/camera2/extension/OutputSurface;

    .line 175
    .local v9, "_arg5":Landroid/hardware/camera2/extension/OutputSurface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v2

    .line 177
    .local v2, "_result":Landroid/hardware/camera2/extension/CameraSessionConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    nop

    .line 268
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CameraSessionConfig;
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    .end local v7    # "_arg3":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v8    # "_arg4":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v9    # "_arg5":Landroid/hardware/camera2/extension/OutputSurface;
    :goto_10e
    return v1

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_b3
        :pswitch_9d
        :pswitch_96
        :pswitch_7f
        :pswitch_77
        :pswitch_5c
        :pswitch_49
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
