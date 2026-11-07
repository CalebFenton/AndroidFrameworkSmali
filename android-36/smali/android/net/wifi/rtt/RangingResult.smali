.class public final Landroid/net/wifi/rtt/RangingResult;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/RangingResult$Builder;,
        Landroid/net/wifi/rtt/RangingResult$RangeResultStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY_BYTE_ARRAY:[B

.field public static final whitelist STATUS_FAIL:I = 0x1

.field public static final whitelist STATUS_RESPONDER_DOES_NOT_SUPPORT_IEEE80211MC:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RangingResult"

.field public static final whitelist UNSPECIFIED:I = -0x1


# instance fields
.field private final greylist-max-o mDistanceMm:I

.field private final greylist-max-o mDistanceStdDevMm:I

.field private final blacklist mFrequencyMHz:I

.field private final blacklist mI2rTxLtfRepetitions:I

.field private final blacklist mIs80211azNtbMeasurement:Z

.field private final blacklist mIs80211mcMeasurement:Z

.field private final blacklist mIsRangingAuthenticated:Z

.field private final blacklist mIsRangingFrameProtected:Z

.field private final blacklist mIsSecureHeLtfEnabled:Z

.field private final greylist-max-o mLci:[B

.field private final greylist-max-o mLcr:[B

.field private final greylist-max-o mMac:Landroid/net/MacAddress;

.field private final blacklist mNtbMaxMeasurementTime:J

.field private final blacklist mNtbMinMeasurementTime:J

.field private final greylist-max-o mNumAttemptedMeasurements:I

.field private final blacklist mNumRxSpatialStreams:I

.field private final greylist-max-o mNumSuccessfulMeasurements:I

.field private final blacklist mNumTxSpatialStreams:I

.field private final blacklist mPacketBw:I

.field private final blacklist mPasnComebackAfterMillis:J

.field private final blacklist mPasnComebackCookie:[B

.field private final greylist-max-o mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private final blacklist mR2iTxLtfRepetitions:I

.field private final blacklist mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

.field private final greylist-max-o mRssi:I

.field private final blacklist mSecureHeLtfProtocolVersion:I

.field private final greylist-max-o mStatus:I

.field private final greylist-max-o mTimestamp:J

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDistanceMm(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceStdDevMm(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyMHz(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmI2rTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs80211azNtbMeasurement(Landroid/net/wifi/rtt/RangingResult;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs80211mcMeasurement(Landroid/net/wifi/rtt/RangingResult;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRangingAuthenticated(Landroid/net/wifi/rtt/RangingResult;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRangingFrameProtected(Landroid/net/wifi/rtt/RangingResult;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSecureHeLtfEnabled(Landroid/net/wifi/rtt/RangingResult;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLci(Landroid/net/wifi/rtt/RangingResult;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLcr(Landroid/net/wifi/rtt/RangingResult;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMac(Landroid/net/wifi/rtt/RangingResult;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtbMaxMeasurementTime(Landroid/net/wifi/rtt/RangingResult;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtbMinMeasurementTime(Landroid/net/wifi/rtt/RangingResult;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumAttemptedMeasurements(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumRxSpatialStreams(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumSuccessfulMeasurements(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumTxSpatialStreams(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPacketBw(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPasnComebackAfterMillis(Landroid/net/wifi/rtt/RangingResult;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPasnComebackCookie(Landroid/net/wifi/rtt/RangingResult;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/RangingResult;)Landroid/net/wifi/aware/PeerHandle;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmR2iTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureHeLtfProtocolVersion(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mSecureHeLtfProtocolVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/net/wifi/rtt/RangingResult;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimestamp(Landroid/net/wifi/rtt/RangingResult;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorData(Landroid/net/wifi/rtt/RangingResult;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    .line 1187
    new-instance v0, Landroid/net/wifi/rtt/RangingResult$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/RangingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/rtt/RangingResult$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/net/wifi/rtt/RangingResult$Builder;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmStatus(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    .line 674
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmMac(Landroid/net/wifi/rtt/RangingResult$Builder;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    .line 675
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/RangingResult$Builder;)Landroid/net/wifi/aware/PeerHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 676
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmDistanceMm(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    .line 677
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmDistanceStdDevMm(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    .line 678
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmRssi(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 679
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmNumAttemptedMeasurements(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 680
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmNumSuccessfulMeasurements(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    .line 681
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmLci(Landroid/net/wifi/rtt/RangingResult$Builder;)[B

    move-result-object v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    goto :goto_40

    :cond_3c
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmLci(Landroid/net/wifi/rtt/RangingResult$Builder;)[B

    move-result-object v0

    :goto_40
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    .line 682
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmLcr(Landroid/net/wifi/rtt/RangingResult$Builder;)[B

    move-result-object v0

    if-nez v0, :cond_4b

    sget-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    goto :goto_4f

    :cond_4b
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmLcr(Landroid/net/wifi/rtt/RangingResult$Builder;)[B

    move-result-object v0

    :goto_4f
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    .line 683
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmResponderLocation(Landroid/net/wifi/rtt/RangingResult$Builder;)Landroid/net/wifi/rtt/ResponderLocation;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 684
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmTimestamp(Landroid/net/wifi/rtt/RangingResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    .line 685
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmIs80211mcMeasurement(Landroid/net/wifi/rtt/RangingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    .line 686
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmFrequencyMHz(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    .line 687
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmPacketBw(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    .line 688
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmIs80211azNtbMeasurement(Landroid/net/wifi/rtt/RangingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    .line 689
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmNtbMinMeasurementTime(Landroid/net/wifi/rtt/RangingResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    .line 690
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmNtbMaxMeasurementTime(Landroid/net/wifi/rtt/RangingResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    .line 691
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmI2rTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    .line 692
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmR2iTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    .line 693
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmNumRxSpatialStreams(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    .line 694
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmNumTxSpatialStreams(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    .line 695
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmVendorData(Landroid/net/wifi/rtt/RangingResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    .line 696
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmIsRangingAuthenticated(Landroid/net/wifi/rtt/RangingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    .line 697
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmIsRangingFrameProtected(Landroid/net/wifi/rtt/RangingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    .line 698
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmIsSecureHeLtfEnabled(Landroid/net/wifi/rtt/RangingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    .line 699
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmSecureHeLtfProtocolVersion(Landroid/net/wifi/rtt/RangingResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult;->mSecureHeLtfProtocolVersion:I

    .line 700
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmPasnComebackCookie(Landroid/net/wifi/rtt/RangingResult$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    .line 701
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult$Builder;->-$$Nest$fgetmPasnComebackAfterMillis(Landroid/net/wifi/rtt/RangingResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    .line 702
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/rtt/RangingResult$Builder;Landroid/net/wifi/rtt/RangingResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/RangingResult;-><init>(Landroid/net/wifi/rtt/RangingResult$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1272
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1273
    return v0

    .line 1276
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/rtt/RangingResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1277
    return v2

    .line 1280
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/RangingResult;

    .line 1282
    .local v1, "lhs":Landroid/net/wifi/rtt/RangingResult;
    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-ne v3, v4, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    if-ne v3, v4, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    .line 1287
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-wide v3, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_dc

    iget-boolean v3, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    if-ne v3, v4, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 1290
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    if-ne v3, v4, :cond_dc

    iget-boolean v3, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    if-ne v3, v4, :cond_dc

    iget-wide v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_dc

    iget-wide v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    if-ne v3, v4, :cond_dc

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    if-ne v3, v4, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    .line 1300
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-boolean v3, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    if-ne v3, v4, :cond_dc

    iget-boolean v3, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    if-ne v3, v4, :cond_dc

    iget-boolean v3, p0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    .line 1303
    invoke-virtual {v1}, Landroid/net/wifi/rtt/RangingResult;->isSecureHeLtfEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_dc

    iget-wide v3, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_dc

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    .line 1305
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_dd

    :cond_dc
    move v0, v2

    .line 1282
    :goto_dd
    return v0
.end method

.method public whitelist get80211azInitiatorTxLtfRepetitionsCount()I
    .registers 2

    .line 987
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    return v0
.end method

.method public whitelist get80211azNumberOfRxSpatialStreams()I
    .registers 2

    .line 1009
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    return v0
.end method

.method public whitelist get80211azNumberOfTxSpatialStreams()I
    .registers 2

    .line 998
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    return v0
.end method

.method public whitelist get80211azResponderTxLtfRepetitionsCount()I
    .registers 2

    .line 973
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    return v0
.end method

.method public whitelist getDistanceMm()I
    .registers 4

    .line 746
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 750
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    return v0

    .line 747
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDistanceMm(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDistanceStdDevMm()I
    .registers 4

    .line 764
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 768
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    return v0

    .line 765
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDistanceStdDevMm(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLci()[B
    .registers 4

    .line 858
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 862
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    return-object v0

    .line 859
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLci(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLcr()[B
    .registers 4

    .line 875
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 880
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    return-object v0

    .line 876
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReportedLocationCivic(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 722
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getMaxTimeBetweenNtbMeasurementsMicros()J
    .registers 3

    .line 959
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    return-wide v0
.end method

.method public whitelist getMeasurementBandwidth()I
    .registers 4

    .line 1042
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 1047
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    return v0

    .line 1043
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeasurementBandwidth(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMeasurementChannelFrequencyMHz()I
    .registers 4

    .line 1022
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 1027
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    return v0

    .line 1023
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeasurementChannelFrequencyMHz(): invoked on an invalid result: getStatus()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMinTimeBetweenNtbMeasurementsMicros()J
    .registers 3

    .line 945
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    return-wide v0
.end method

.method public whitelist getNumAttemptedMeasurements()I
    .registers 4

    .line 797
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 802
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    return v0

    .line 798
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumAttemptedMeasurements(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNumSuccessfulMeasurements()I
    .registers 4

    .line 819
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 824
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    return v0

    .line 820
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumSuccessfulMeasurements(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPasnComebackAfterMillis()J
    .registers 3

    .line 1134
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    return-wide v0
.end method

.method public whitelist getPasnComebackCookie()[B
    .registers 2

    .line 1125
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    return-object v0
.end method

.method public whitelist getPeerHandle()Landroid/net/wifi/aware/PeerHandle;
    .registers 2

    .line 733
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object v0
.end method

.method public whitelist getRangingTimestampMillis()J
    .registers 4

    .line 892
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 897
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    return-wide v0

    .line 893
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRangingTimestampMillis(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRssi()I
    .registers 4

    .line 778
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 782
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    return v0

    .line 779
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssi(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSecureHeLtfProtocolVersion()I
    .registers 2

    .line 1109
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mSecureHeLtfProtocolVersion:I

    return v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 710
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    return v0
.end method

.method public whitelist getUnverifiedResponderLocation()Landroid/net/wifi/rtt/ResponderLocation;
    .registers 4

    .line 840
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 845
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    return-object v0

    .line 841
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnverifiedResponderLocation(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 1061
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1064
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    return-object v0

    .line 1062
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 31

    .line 1311
    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    iget-object v4, v0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 1312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, v0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    .line 1313
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    iget-wide v13, v0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-boolean v1, v0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    .line 1314
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-boolean v1, v0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v18, v2

    iget-wide v1, v0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v1

    iget-wide v1, v0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    .line 1315
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v2, v0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v2, v0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    .line 1316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v2, v0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-object v2, v0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    move-object/from16 v24, v1

    iget-boolean v1, v0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    iget-boolean v1, v0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    .line 1317
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget-boolean v1, v0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v28, v2

    iget-wide v1, v0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    .line 1318
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v2, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v28

    move-object/from16 v28, v1

    filled-new-array/range {v2 .. v29}, [Ljava/lang/Object;

    move-result-object v1

    .line 1311
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist is80211azNtbMeasurement()Z
    .registers 4

    .line 927
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 932
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    return v0

    .line 928
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is80211azNtbMeasurement(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist is80211mcMeasurement()Z
    .registers 4

    .line 909
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_7

    .line 914
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    return v0

    .line 910
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is80211mcMeasurementResult(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRangingAuthenticated()Z
    .registers 2

    .line 1074
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    return v0
.end method

.method public whitelist isRangingFrameProtected()Z
    .registers 2

    .line 1084
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    return v0
.end method

.method public whitelist isSecureHeLtfEnabled()Z
    .registers 2

    .line 1094
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangingResult: [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1239
    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1240
    const-string v1, ", peerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1241
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_26

    const-string v1, "<null>"

    goto :goto_2e

    :cond_26
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1240
    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1242
    const-string v1, ", distanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1243
    const-string v1, ", distanceStdDevMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1244
    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1245
    const-string v1, ", numAttemptedMeasurements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1246
    const-string v1, ", numSuccessfulMeasurements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1247
    const-string v1, ", lci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1248
    const-string v1, ", lcr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1249
    const-string v1, ", responderLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1250
    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is80211mcMeasurement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    const-string v1, ", frequencyMHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1253
    const-string v1, ", packetBw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1254
    const-string v1, ", is80211azNtbMeasurement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1255
    const-string v1, ", ntbMinMeasurementTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1256
    const-string v1, ", ntbMaxMeasurementTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1257
    const-string v1, ", i2rTxLtfRepetitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1258
    const-string v1, ", r2iTxLtfRepetitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1259
    const-string v1, ", numTxSpatialStreams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1260
    const-string v1, ", numRxSpatialStreams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1261
    const-string v1, ", vendorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1262
    const-string v1, ", isRangingAuthenticated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1263
    const-string v1, ", isRangingFrameProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1264
    const-string v1, ", isSecureHeLtfEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1265
    const-string v1, ", pasnComebackCookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1266
    const-string v1, ", pasnComebackAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1267
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1144
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 1146
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_17

    .line 1148
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1149
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1151
    :goto_17
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_1f

    .line 1152
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_29

    .line 1154
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1155
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v0, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    :goto_29
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1163
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1164
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1165
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1166
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1167
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mFrequencyMHz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPacketBw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211azNtbMeasurement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1170
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMinMeasurementTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1171
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNtbMaxMeasurementTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1172
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mI2rTxLtfRepetitions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mR2iTxLtfRepetitions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumTxSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumRxSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1177
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1179
    :cond_93
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingAuthenticated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1180
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsRangingFrameProtected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1181
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult;->mIsSecureHeLtfEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1182
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackAfterMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1183
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPasnComebackCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1184
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mSecureHeLtfProtocolVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    return-void
.end method
