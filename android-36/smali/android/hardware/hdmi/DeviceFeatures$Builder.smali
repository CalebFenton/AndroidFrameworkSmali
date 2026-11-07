.class public final Landroid/hardware/hdmi/DeviceFeatures$Builder;
.super Ljava/lang/Object;
.source "DeviceFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/DeviceFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mArcRxSupport:I

.field private blacklist mArcTxSupport:I

.field private blacklist mDeckControlSupport:I

.field private blacklist mOsdStringSupport:I

.field private blacklist mRecordTvScreenSupport:I

.field private blacklist mSetAudioRateSupport:I

.field private blacklist mSetAudioVolumeLevelSupport:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArcRxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArcTxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeckControlSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOsdStringSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordTvScreenSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetAudioRateSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetAudioVolumeLevelSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    return p0
.end method

.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "defaultFeatureSupportStatus"    # I

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    .line 282
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    .line 283
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    .line 284
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    .line 285
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    .line 286
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    .line 287
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    .line 288
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/hdmi/DeviceFeatures-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/DeviceFeatures;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/hdmi/DeviceFeatures;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getRecordTvScreenSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    .line 292
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetOsdStringSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    .line 293
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getDeckControlSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    .line 294
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioRateSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    .line 295
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcTxSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    .line 296
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcRxSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    .line 297
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    .line 298
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/DeviceFeatures;Landroid/hardware/hdmi/DeviceFeatures-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(Landroid/hardware/hdmi/DeviceFeatures;)V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 3

    .line 304
    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/DeviceFeatures;-><init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;Landroid/hardware/hdmi/DeviceFeatures-IA;)V

    return-object v0
.end method

.method public blacklist setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "arcRxSupport"    # I

    .line 357
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    .line 358
    return-object p0
.end method

.method public blacklist setArcTxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "arcTxSupport"    # I

    .line 348
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    .line 349
    return-object p0
.end method

.method public blacklist setDeckControlSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "deckControlSupport"    # I

    .line 330
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    .line 331
    return-object p0
.end method

.method public blacklist setRecordTvScreenSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "recordTvScreenSupport"    # I

    .line 312
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    .line 313
    return-object p0
.end method

.method public blacklist setSetAudioRateSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "setAudioRateSupport"    # I

    .line 339
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    .line 340
    return-object p0
.end method

.method public blacklist setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "setAudioVolumeLevelSupport"    # I

    .line 367
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    .line 368
    return-object p0
.end method

.method public blacklist setSetOsdStringSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2
    .param p1, "setOsdStringSupport"    # I

    .line 321
    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    .line 322
    return-object p0
.end method

.method public blacklist update(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 4
    .param p1, "newDeviceFeatures"    # Landroid/hardware/hdmi/DeviceFeatures;

    .line 378
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    .line 379
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getRecordTvScreenSupport()I

    move-result v1

    .line 378
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    .line 380
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    .line 381
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetOsdStringSupport()I

    move-result v1

    .line 380
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    .line 382
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    .line 383
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getDeckControlSupport()I

    move-result v1

    .line 382
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    .line 384
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    .line 385
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioRateSupport()I

    move-result v1

    .line 384
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    .line 386
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    .line 387
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcTxSupport()I

    move-result v1

    .line 386
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    .line 388
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    .line 389
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcRxSupport()I

    move-result v1

    .line 388
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    .line 390
    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    .line 391
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v1

    .line 390
    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    .line 392
    return-object p0
.end method
