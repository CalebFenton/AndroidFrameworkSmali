.class public final Landroid/bluetooth/le/DistanceMeasurementParams$Builder;
.super Ljava/lang/Object;
.source "DistanceMeasurementParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

.field private blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mDuration:I

.field private blacklist mFrequency:I

.field private blacklist mMethodId:I


# direct methods
.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 227
    const v1, 0x7fffffff

    iput v1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mDuration:I

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mFrequency:I

    .line 229
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mMethodId:I

    .line 230
    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    .line 238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 239
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/DistanceMeasurementParams;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 326
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementParams;

    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mDuration:I

    iget v3, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mFrequency:I

    iget v4, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mMethodId:I

    iget-object v5, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/DistanceMeasurementParams;-><init>(Landroid/bluetooth/BluetoothDevice;IIILandroid/bluetooth/le/ChannelSoundingParams;)V

    return-object v0
.end method

.method public whitelist setChannelSoundingParams(Landroid/bluetooth/le/ChannelSoundingParams;)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;
    .registers 2
    .param p1, "channelSoundingParams"    # Landroid/bluetooth/le/ChannelSoundingParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 315
    iput-object p1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    .line 316
    return-object p0
.end method

.method public whitelist setDurationSeconds(I)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;
    .registers 5
    .param p1, "duration"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 255
    if-ltz p1, :cond_b

    invoke-static {}, Landroid/bluetooth/le/DistanceMeasurementParams;->getMaxDurationSeconds()I

    move-result v0

    if-gt p1, v0, :cond_b

    .line 258
    iput p1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mDuration:I

    .line 259
    return-object p0

    .line 256
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFrequency(I)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;
    .registers 5
    .param p1, "frequency"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 272
    packed-switch p1, :pswitch_data_20

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown frequency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_1c
    iput p1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mFrequency:I

    .line 277
    nop

    .line 281
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setMethodId(I)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;
    .registers 5
    .param p1, "methodId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 293
    packed-switch p1, :pswitch_data_20

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown method id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :pswitch_1c
    iput p1, p0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->mMethodId:I

    .line 298
    nop

    .line 302
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
