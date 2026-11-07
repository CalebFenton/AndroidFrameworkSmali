.class public final Landroid/telephony/SignalThresholdInfo$Builder;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalThresholdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHysteresisDb:I

.field private blacklist mHysteresisMs:I

.field private blacklist mIsEnabled:Z

.field private blacklist mRan:I

.field private blacklist mSignalMeasurementType:I

.field private blacklist mThresholds:[I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    .line 360
    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    .line 361
    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    .line 362
    const/4 v1, 0x2

    iput v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    .line 364
    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/SignalThresholdInfo;
    .registers 9

    .line 504
    new-instance v0, Landroid/telephony/SignalThresholdInfo;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    iget v2, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    iget v3, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    iget v4, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    iget-object v5, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    iget-boolean v6, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/SignalThresholdInfo;-><init>(IIII[IZLandroid/telephony/SignalThresholdInfo-IA;)V

    return-object v0
.end method

.method public whitelist setHysteresisDb(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 4
    .param p1, "hysteresisDb"    # I

    .line 418
    if-ltz p1, :cond_5

    .line 421
    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    .line 422
    return-object p0

    .line 419
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hysteresis db value should not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setHysteresisMs(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2
    .param p1, "hysteresisMs"    # I

    .line 402
    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    .line 403
    return-object p0
.end method

.method public blacklist setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 489
    iput-boolean p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    .line 490
    return-object p0
.end method

.method public whitelist setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2
    .param p1, "ran"    # I

    .line 375
    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    .line 376
    return-object p0
.end method

.method public whitelist setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2
    .param p1, "signalMeasurementType"    # I

    .line 388
    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    .line 389
    return-object p0
.end method

.method public whitelist setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 3
    .param p1, "thresholds"    # [I

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 5
    .param p1, "thresholds"    # [I
    .param p2, "isSystem"    # Z

    .line 465
    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 466
    if-nez p2, :cond_1a

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_11

    goto :goto_1a

    .line 469
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "thresholds length must between 1 and 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1a
    :goto_1a
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    .line 476
    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 477
    return-object p0
.end method
