.class public final Landroid/net/wifi/QosCharacteristics;
.super Ljava/lang/Object;
.source "QosCharacteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/QosCharacteristics$Builder;,
        Landroid/net/wifi/QosCharacteristics$DeliveryRatio;,
        Landroid/net/wifi/QosCharacteristics$QosCharacteristicsOptionalField;
    }
.end annotation


# static fields
.field public static final blacklist BURST_SIZE:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/QosCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DELIVERY_RATIO_95:I = 0x0

.field public static final whitelist DELIVERY_RATIO_96:I = 0x1

.field public static final whitelist DELIVERY_RATIO_97:I = 0x2

.field public static final whitelist DELIVERY_RATIO_98:I = 0x3

.field public static final whitelist DELIVERY_RATIO_99:I = 0x5

.field public static final whitelist DELIVERY_RATIO_99_9:I = 0x6

.field public static final whitelist DELIVERY_RATIO_99_99:I = 0x7

.field public static final whitelist DELIVERY_RATIO_99_999:I = 0x8

.field public static final whitelist DELIVERY_RATIO_99_9999:I = 0x9

.field public static final blacklist MAX_MSDU_SIZE:I = 0x1

.field public static final blacklist MEAN_DATA_RATE:I = 0x4

.field public static final blacklist MSDU_DELIVERY_INFO:I = 0x20

.field public static final blacklist MSDU_LIFETIME:I = 0x10

.field public static final blacklist SERVICE_START_TIME:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "QosCharacteristics"


# instance fields
.field private final blacklist mBurstSizeOctets:I

.field private final blacklist mCountExponent:I

.field private final blacklist mDelayBoundMicros:I

.field private final blacklist mDeliveryRatio:I

.field private final blacklist mMaxMsduSizeOctets:I

.field private final blacklist mMaxServiceIntervalMicros:I

.field private final blacklist mMeanDataRateKbps:I

.field private final blacklist mMinDataRateKbps:I

.field private final blacklist mMinServiceIntervalMicros:I

.field private final blacklist mMsduLifetimeMillis:I

.field private final blacklist mOptionalFieldBitmap:I

.field private final blacklist mServiceStartTimeLinkId:I

.field private final blacklist mServiceStartTimeMicros:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 545
    new-instance v0, Landroid/net/wifi/QosCharacteristics$1;

    invoke-direct {v0}, Landroid/net/wifi/QosCharacteristics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/QosCharacteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIIIIIIIIII)V
    .registers 14
    .param p1, "minServiceIntervalMicros"    # I
    .param p2, "maxServiceIntervalMicros"    # I
    .param p3, "minDataRateKbps"    # I
    .param p4, "delayBoundMicros"    # I
    .param p5, "optionalFieldBitmap"    # I
    .param p6, "maxMsduSizeOctets"    # I
    .param p7, "serviceStartTimeMicros"    # I
    .param p8, "serviceStartTimeLinkId"    # I
    .param p9, "meanDataRateKbps"    # I
    .param p10, "burstSizeOctets"    # I
    .param p11, "msduLifetimeMillis"    # I
    .param p12, "deliveryRatio"    # I
    .param p13, "countExponent"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    .line 183
    iput p2, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    .line 184
    iput p3, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    .line 185
    iput p4, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    .line 186
    iput p5, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    .line 187
    iput p6, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    .line 188
    iput p7, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    .line 189
    iput p8, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    .line 190
    iput p9, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    .line 191
    iput p10, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    .line 192
    iput p11, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    .line 193
    iput p12, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    .line 194
    iput p13, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    .line 195
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIIIIIIIIILandroid/net/wifi/QosCharacteristics-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/net/wifi/QosCharacteristics;-><init>(IIIIIIIIIIIII)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    .line 542
    return-void
.end method

.method private static blacklist checkIntRange(III)Z
    .registers 4
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 217
    if-lt p0, p1, :cond_6

    if-gt p0, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist checkSizeInBits(II)Z
    .registers 5
    .param p0, "value"    # I
    .param p1, "expectedSizeInBits"    # I

    .line 209
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    .line 210
    .local v1, "bitmask":I
    and-int v2, v1, p0

    if-ne v2, p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public blacklist containsOptionalField(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 202
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 442
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 443
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_66

    .line 444
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/QosCharacteristics;

    .line 445
    .local v2, "that":Landroid/net/wifi/QosCharacteristics;
    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    iget v4, v2, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    if-ne v3, v4, :cond_64

    goto :goto_65

    :cond_64
    move v0, v1

    :goto_65
    return v0

    .line 443
    .end local v2    # "that":Landroid/net/wifi/QosCharacteristics;
    :cond_66
    :goto_66
    return v1
.end method

.method public whitelist getBurstSizeOctets()I
    .registers 3

    .line 389
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 392
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    return v0

    .line 390
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "burstSize was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCountExponent()I
    .registers 3

    .line 433
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 436
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    return v0

    .line 434
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "msduDeliveryInfo was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDelayBoundMicros()I
    .registers 2

    .line 318
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    return v0
.end method

.method public whitelist getDeliveryRatio()I
    .registers 3

    .line 418
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 421
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    return v0

    .line 419
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "msduDeliveryInfo was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaxMsduSizeOctets()I
    .registers 3

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    return v0

    .line 331
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "maxMsduSize was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaxServiceIntervalMicros()I
    .registers 2

    .line 296
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    return v0
.end method

.method public whitelist getMeanDataRateKbps()I
    .registers 3

    .line 374
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 377
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    return v0

    .line 375
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "meanDataRate was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMinDataRateKbps()I
    .registers 2

    .line 307
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    return v0
.end method

.method public whitelist getMinServiceIntervalMicros()I
    .registers 2

    .line 285
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    return v0
.end method

.method public whitelist getMsduLifetimeMillis()I
    .registers 3

    .line 404
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 407
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    return v0

    .line 405
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "msduLifetime was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getServiceStartTimeLinkId()I
    .registers 3

    .line 359
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    return v0

    .line 360
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "serviceStartTime was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getServiceStartTimeMicros()I
    .registers 3

    .line 345
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 348
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    return v0

    .line 346
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "serviceStartTime was not provided in the builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 15

    .line 463
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 463
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mMinServiceIntervalMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, ", mMaxServiceIntervalMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    const-string v1, ", mMinDataRateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, ", mDelayBoundMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, ", mOptionalFieldBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 479
    const-string v1, ", mMaxMsduSizeOctets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    :cond_5e
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 482
    const-string v1, ", mServiceStartTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, ", mServiceStartTimeLinkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget v1, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%01x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_88
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 487
    const-string v1, ", mMeanDataRateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    :cond_9a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 490
    const-string v1, ", mBurstSizeOctets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    :cond_ad
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 493
    const-string v1, ", mMsduLifetimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    :cond_c0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 496
    const-string v1, ", mDeliveryRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, ", mCountExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    :cond_de
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist validate()Z
    .registers 7

    .line 225
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    const-string v1, "QosCharacteristics"

    const/4 v2, 0x0

    if-lez v0, :cond_cd

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    if-lez v0, :cond_cd

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    if-lez v0, :cond_cd

    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    if-gtz v0, :cond_15

    goto/16 :goto_cd

    .line 230
    :cond_15
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    if-le v0, v3, :cond_21

    .line 231
    const-string v0, "Minimum service interval must be less than or equal to the maximum service interval"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v2

    .line 235
    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v3

    const/16 v4, 0x7fff

    if-eqz v3, :cond_38

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    .line 236
    invoke-static {v3, v0, v4}, Landroid/net/wifi/QosCharacteristics;->checkIntRange(III)Z

    move-result v3

    if-nez v3, :cond_38

    .line 237
    const-string v0, "Invalid value provided for maxMsduSize"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v2

    .line 240
    :cond_38
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_52

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    if-ltz v3, :cond_4c

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    .line 242
    invoke-static {v3, v5}, Landroid/net/wifi/QosCharacteristics;->checkSizeInBits(II)Z

    move-result v3

    if-nez v3, :cond_52

    .line 243
    :cond_4c
    const-string v0, "serviceStartTime information is invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v2

    .line 246
    :cond_52
    invoke-virtual {p0, v5}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v3

    if-eqz v3, :cond_62

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    if-gtz v3, :cond_62

    .line 247
    const-string v0, "meanDataRateKbps must be a positive integer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v2

    .line 250
    :cond_62
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v3

    if-eqz v3, :cond_74

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    if-nez v3, :cond_74

    .line 251
    const-string v0, "burstSizeOctets must be non-zero"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v2

    .line 254
    :cond_74
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v5

    if-eqz v5, :cond_8a

    iget v5, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    .line 255
    invoke-static {v5, v0, v4}, Landroid/net/wifi/QosCharacteristics;->checkIntRange(III)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 256
    const-string v0, "Invalid value provided for msduLifetimeMillis"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v2

    .line 259
    :cond_8a
    invoke-virtual {p0, v3}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    mul-int/lit16 v3, v3, 0x3e8

    iget v4, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    if-ge v3, v4, :cond_9e

    .line 261
    const-string v0, "MSDU lifetime must be greater than or equal to the delay bound"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v2

    .line 264
    :cond_9e
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v4

    if-eqz v4, :cond_b6

    iget v4, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    .line 265
    const/16 v5, 0x9

    invoke-static {v4, v2, v5}, Landroid/net/wifi/QosCharacteristics;->checkIntRange(III)Z

    move-result v4

    if-nez v4, :cond_b6

    .line 266
    const-string v0, "MSDU delivery ratio must be a valid enum value"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v2

    .line 269
    :cond_b6
    invoke-virtual {p0, v3}, Landroid/net/wifi/QosCharacteristics;->containsOptionalField(I)Z

    move-result v3

    if-eqz v3, :cond_cc

    iget v3, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    .line 270
    const/16 v4, 0xf

    invoke-static {v3, v2, v4}, Landroid/net/wifi/QosCharacteristics;->checkIntRange(III)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 271
    const-string v0, "MSDU count exponent must be between 0 and 15 (inclusive)"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v2

    .line 274
    :cond_cc
    return v0

    .line 227
    :cond_cd
    :goto_cd
    const-string v0, "All mandatory fields must be positive integers"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 512
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinServiceIntervalMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxServiceIntervalMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMinDataRateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDelayBoundMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mOptionalFieldBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMaxMsduSizeOctets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mServiceStartTimeLinkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMeanDataRateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mBurstSizeOctets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mMsduLifetimeMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mDeliveryRatio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/net/wifi/QosCharacteristics;->mCountExponent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    return-void
.end method
