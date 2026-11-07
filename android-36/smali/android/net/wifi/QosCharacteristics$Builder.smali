.class public final Landroid/net/wifi/QosCharacteristics$Builder;
.super Ljava/lang/Object;
.source "QosCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/QosCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBurstSizeOctets:I

.field private blacklist mCountExponent:I

.field private final blacklist mDelayBoundMicros:I

.field private blacklist mDeliveryRatio:I

.field private blacklist mMaxMsduSizeOctets:I

.field private final blacklist mMaxServiceIntervalMicros:I

.field private blacklist mMeanDataRateKbps:I

.field private final blacklist mMinDataRateKbps:I

.field private final blacklist mMinServiceIntervalMicros:I

.field private blacklist mMsduLifetimeMillis:I

.field private blacklist mOptionalFieldBitmap:I

.field private blacklist mServiceStartTimeLinkId:I

.field private blacklist mServiceStartTimeMicros:I


# direct methods
.method public constructor whitelist <init>(IIII)V
    .registers 5
    .param p1, "minServiceIntervalMicros"    # I
    .param p2, "maxServiceIntervalMicros"    # I
    .param p3, "minDataRateKbps"    # I
    .param p4, "delayBoundMicros"    # I

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMinServiceIntervalMicros:I

    .line 602
    iput p2, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMaxServiceIntervalMicros:I

    .line 603
    iput p3, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMinDataRateKbps:I

    .line 604
    iput p4, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mDelayBoundMicros:I

    .line 605
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/QosCharacteristics;
    .registers 16

    .line 714
    new-instance v0, Landroid/net/wifi/QosCharacteristics;

    iget v1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMinServiceIntervalMicros:I

    iget v2, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMaxServiceIntervalMicros:I

    iget v3, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMinDataRateKbps:I

    iget v4, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mDelayBoundMicros:I

    iget v5, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    iget v6, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMaxMsduSizeOctets:I

    iget v7, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mServiceStartTimeMicros:I

    iget v8, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mServiceStartTimeLinkId:I

    iget v9, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMeanDataRateKbps:I

    iget v10, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mBurstSizeOctets:I

    iget v11, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMsduLifetimeMillis:I

    iget v12, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mDeliveryRatio:I

    iget v13, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mCountExponent:I

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/net/wifi/QosCharacteristics;-><init>(IIIIIIIIIIIIILandroid/net/wifi/QosCharacteristics-IA;)V

    .line 720
    .local v0, "qosCharacteristics":Landroid/net/wifi/QosCharacteristics;
    invoke-virtual {v0}, Landroid/net/wifi/QosCharacteristics;->validate()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 723
    return-object v0

    .line 721
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided parameters are invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setBurstSizeOctets(I)Landroid/net/wifi/QosCharacteristics$Builder;
    .registers 3
    .param p1, "burstSizeOctets"    # I

    .line 667
    iget v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    .line 668
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mBurstSizeOctets:I

    .line 669
    return-object p0
.end method

.method public whitelist setMaxMsduSizeOctets(I)Landroid/net/wifi/QosCharacteristics$Builder;
    .registers 3
    .param p1, "maxMsduSizeOctets"    # I

    .line 616
    iget v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    .line 617
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMaxMsduSizeOctets:I

    .line 618
    return-object p0
.end method

.method public whitelist setMeanDataRateKbps(I)Landroid/net/wifi/QosCharacteristics$Builder;
    .registers 3
    .param p1, "meanDataRateKbps"    # I

    .line 651
    iget v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    .line 652
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMeanDataRateKbps:I

    .line 653
    return-object p0
.end method

.method public whitelist setMsduDeliveryInfo(II)Landroid/net/wifi/QosCharacteristics$Builder;
    .registers 4
    .param p1, "deliveryRatio"    # I
    .param p2, "countExponent"    # I

    .line 703
    iget v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    .line 704
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mDeliveryRatio:I

    .line 705
    iput p2, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mCountExponent:I

    .line 706
    return-object p0
.end method

.method public whitelist setMsduLifetimeMillis(I)Landroid/net/wifi/QosCharacteristics$Builder;
    .registers 3
    .param p1, "msduLifetimeMillis"    # I

    .line 685
    iget v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    .line 686
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mMsduLifetimeMillis:I

    .line 687
    return-object p0
.end method

.method public whitelist setServiceStartTimeInfo(II)Landroid/net/wifi/QosCharacteristics$Builder;
    .registers 4
    .param p1, "serviceStartTimeMicros"    # I
    .param p2, "serviceStartTimeLinkId"    # I

    .line 635
    iget v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mOptionalFieldBitmap:I

    .line 636
    iput p1, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mServiceStartTimeMicros:I

    .line 637
    iput p2, p0, Landroid/net/wifi/QosCharacteristics$Builder;->mServiceStartTimeLinkId:I

    .line 638
    return-object p0
.end method
