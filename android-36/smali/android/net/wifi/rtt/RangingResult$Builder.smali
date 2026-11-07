.class public final Landroid/net/wifi/rtt/RangingResult$Builder;
.super Ljava/lang/Object;
.source "RangingResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDistanceMm:I

.field private blacklist mDistanceStdDevMm:I

.field private blacklist mFrequencyMHz:I

.field private blacklist mI2rTxLtfRepetitions:I

.field private blacklist mIs80211azNtbMeasurement:Z

.field private blacklist mIs80211mcMeasurement:Z

.field private blacklist mIsRangingAuthenticated:Z

.field private blacklist mIsRangingFrameProtected:Z

.field private blacklist mIsSecureHeLtfEnabled:Z

.field private blacklist mLci:[B

.field private blacklist mLcr:[B

.field private blacklist mMac:Landroid/net/MacAddress;

.field private blacklist mNtbMaxMeasurementTime:J

.field private blacklist mNtbMinMeasurementTime:J

.field private blacklist mNumAttemptedMeasurements:I

.field private blacklist mNumRxSpatialStreams:I

.field private blacklist mNumSuccessfulMeasurements:I

.field private blacklist mNumTxSpatialStreams:I

.field private blacklist mPacketBw:I

.field private blacklist mPasnComebackAfterMillis:J

.field private blacklist mPasnComebackCookie:[B

.field private blacklist mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private blacklist mR2iTxLtfRepetitions:I

.field private blacklist mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

.field private blacklist mRssi:I

.field private blacklist mSecureHeLtfProtocolVersion:I

.field private blacklist mStatus:I

.field private blacklist mTimestamp:J

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
.method static bridge synthetic blacklist -$$Nest$fgetmDistanceMm(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceMm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceStdDevMm(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceStdDevMm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyMHz(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mFrequencyMHz:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmI2rTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mI2rTxLtfRepetitions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs80211azNtbMeasurement(Landroid/net/wifi/rtt/RangingResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211azNtbMeasurement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs80211mcMeasurement(Landroid/net/wifi/rtt/RangingResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211mcMeasurement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRangingAuthenticated(Landroid/net/wifi/rtt/RangingResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsRangingAuthenticated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRangingFrameProtected(Landroid/net/wifi/rtt/RangingResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsRangingFrameProtected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSecureHeLtfEnabled(Landroid/net/wifi/rtt/RangingResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsSecureHeLtfEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLci(Landroid/net/wifi/rtt/RangingResult$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLci:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLcr(Landroid/net/wifi/rtt/RangingResult$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLcr:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMac(Landroid/net/wifi/rtt/RangingResult$Builder;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mMac:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtbMaxMeasurementTime(Landroid/net/wifi/rtt/RangingResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMaxMeasurementTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtbMinMeasurementTime(Landroid/net/wifi/rtt/RangingResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMinMeasurementTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumAttemptedMeasurements(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumAttemptedMeasurements:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumRxSpatialStreams(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumRxSpatialStreams:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumSuccessfulMeasurements(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumSuccessfulMeasurements:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumTxSpatialStreams(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumTxSpatialStreams:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPacketBw(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPacketBw:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPasnComebackAfterMillis(Landroid/net/wifi/rtt/RangingResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackAfterMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPasnComebackCookie(Landroid/net/wifi/rtt/RangingResult$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackCookie:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/RangingResult$Builder;)Landroid/net/wifi/aware/PeerHandle;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmR2iTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mR2iTxLtfRepetitions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponderLocation(Landroid/net/wifi/rtt/RangingResult$Builder;)Landroid/net/wifi/rtt/ResponderLocation;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mRssi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureHeLtfProtocolVersion(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mSecureHeLtfProtocolVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/net/wifi/rtt/RangingResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimestamp(Landroid/net/wifi/rtt/RangingResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorData(Landroid/net/wifi/rtt/RangingResult$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mVendorData:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 6

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mStatus:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mMac:Landroid/net/MacAddress;

    .line 134
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceMm:I

    .line 136
    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceStdDevMm:I

    .line 137
    const/16 v2, -0x7f

    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mRssi:I

    .line 138
    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumAttemptedMeasurements:I

    .line 139
    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumSuccessfulMeasurements:I

    .line 140
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLci:[B

    .line 141
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLcr:[B

    .line 142
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 143
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mTimestamp:J

    .line 144
    iput-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211mcMeasurement:Z

    .line 145
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mFrequencyMHz:I

    .line 146
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPacketBw:I

    .line 147
    iput-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211azNtbMeasurement:Z

    .line 148
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMinMeasurementTime:J

    .line 149
    iput-wide v3, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMaxMeasurementTime:J

    .line 150
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mI2rTxLtfRepetitions:I

    .line 151
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mR2iTxLtfRepetitions:I

    .line 152
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumTxSpatialStreams:I

    .line 153
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumRxSpatialStreams:I

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mVendorData:Ljava/util/List;

    .line 159
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackCookie:[B

    .line 160
    iput-wide v3, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackAfterMillis:J

    .line 165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/rtt/RangingResult;)V
    .registers 7
    .param p1, "other"    # Landroid/net/wifi/rtt/RangingResult;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mStatus:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mMac:Landroid/net/MacAddress;

    .line 134
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceMm:I

    .line 136
    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceStdDevMm:I

    .line 137
    const/16 v2, -0x7f

    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mRssi:I

    .line 138
    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumAttemptedMeasurements:I

    .line 139
    iput v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumSuccessfulMeasurements:I

    .line 140
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLci:[B

    .line 141
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLcr:[B

    .line 142
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 143
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mTimestamp:J

    .line 144
    iput-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211mcMeasurement:Z

    .line 145
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mFrequencyMHz:I

    .line 146
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPacketBw:I

    .line 147
    iput-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211azNtbMeasurement:Z

    .line 148
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMinMeasurementTime:J

    .line 149
    iput-wide v3, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMaxMeasurementTime:J

    .line 150
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mI2rTxLtfRepetitions:I

    .line 151
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mR2iTxLtfRepetitions:I

    .line 152
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumTxSpatialStreams:I

    .line 153
    iput v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumRxSpatialStreams:I

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mVendorData:Ljava/util/List;

    .line 159
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackCookie:[B

    .line 160
    iput-wide v3, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackAfterMillis:J

    .line 173
    if-nez p1, :cond_4d

    .line 174
    const-string v0, "RangingResult"

    const-string v1, "Cannot provide a null RangingResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 178
    :cond_4d
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmStatus(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mStatus:I

    .line 179
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmMac(Landroid/net/wifi/rtt/RangingResult;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mMac:Landroid/net/MacAddress;

    .line 180
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/RangingResult;)Landroid/net/wifi/aware/PeerHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 181
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmDistanceMm(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceMm:I

    .line 182
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmDistanceStdDevMm(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceStdDevMm:I

    .line 183
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmRssi(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mRssi:I

    .line 184
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmNumAttemptedMeasurements(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumAttemptedMeasurements:I

    .line 185
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmNumSuccessfulMeasurements(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumSuccessfulMeasurements:I

    .line 186
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmLci(Landroid/net/wifi/rtt/RangingResult;)[B

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmLci(Landroid/net/wifi/rtt/RangingResult;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLci:[B

    .line 187
    :cond_8f
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmLcr(Landroid/net/wifi/rtt/RangingResult;)[B

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmLcr(Landroid/net/wifi/rtt/RangingResult;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLcr:[B

    .line 188
    :cond_a1
    new-instance v0, Landroid/net/wifi/rtt/ResponderLocation;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLci:[B

    iget-object v2, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLcr:[B

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/rtt/ResponderLocation;-><init>([B[B)V

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 189
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmTimestamp(Landroid/net/wifi/rtt/RangingResult;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mTimestamp:J

    .line 190
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmIs80211mcMeasurement(Landroid/net/wifi/rtt/RangingResult;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211mcMeasurement:Z

    .line 191
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmFrequencyMHz(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mFrequencyMHz:I

    .line 192
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmPacketBw(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPacketBw:I

    .line 193
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmIs80211azNtbMeasurement(Landroid/net/wifi/rtt/RangingResult;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211azNtbMeasurement:Z

    .line 194
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmNtbMinMeasurementTime(Landroid/net/wifi/rtt/RangingResult;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMinMeasurementTime:J

    .line 195
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmNtbMaxMeasurementTime(Landroid/net/wifi/rtt/RangingResult;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMaxMeasurementTime:J

    .line 196
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmI2rTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mI2rTxLtfRepetitions:I

    .line 197
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmR2iTxLtfRepetitions(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mR2iTxLtfRepetitions:I

    .line 198
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmNumTxSpatialStreams(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumTxSpatialStreams:I

    .line 199
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmNumRxSpatialStreams(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumRxSpatialStreams:I

    .line 200
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmIsRangingAuthenticated(Landroid/net/wifi/rtt/RangingResult;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsRangingAuthenticated:Z

    .line 201
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmIsRangingFrameProtected(Landroid/net/wifi/rtt/RangingResult;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsRangingFrameProtected:Z

    .line 202
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmIsSecureHeLtfEnabled(Landroid/net/wifi/rtt/RangingResult;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsSecureHeLtfEnabled:Z

    .line 203
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmSecureHeLtfProtocolVersion(Landroid/net/wifi/rtt/RangingResult;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mSecureHeLtfProtocolVersion:I

    .line 204
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmPasnComebackCookie(Landroid/net/wifi/rtt/RangingResult;)[B

    move-result-object v0

    if-eqz v0, :cond_11e

    .line 205
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmPasnComebackCookie(Landroid/net/wifi/rtt/RangingResult;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackCookie:[B

    .line 206
    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmPasnComebackAfterMillis(Landroid/net/wifi/rtt/RangingResult;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackAfterMillis:J

    .line 208
    :cond_11e
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/rtt/RangingResult;->-$$Nest$fgetmVendorData(Landroid/net/wifi/rtt/RangingResult;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mVendorData:Ljava/util/List;

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/rtt/RangingResult;
    .registers 3

    .line 659
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mMac:Landroid/net/MacAddress;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 660
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either MAC address or Peer handle is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_11
    :goto_11
    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211azNtbMeasurement:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211mcMeasurement:Z

    if-nez v0, :cond_1a

    goto :goto_22

    .line 663
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A ranging result cannot use both IEEE 802.11mc and IEEE 802.11az measurements simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_22
    :goto_22
    new-instance v0, Landroid/net/wifi/rtt/RangingResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/rtt/RangingResult;-><init>(Landroid/net/wifi/rtt/RangingResult$Builder;Landroid/net/wifi/rtt/RangingResult-IA;)V

    return-object v0
.end method

.method public whitelist set80211azInitiatorTxLtfRepetitionsCount(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "i2rTxLtfRepetitions"    # I

    .line 493
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mI2rTxLtfRepetitions:I

    .line 494
    return-object p0
.end method

.method public whitelist set80211azNtbMeasurement(Z)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "is80211azNtbMeasurement"    # Z

    .line 451
    iput-boolean p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211azNtbMeasurement:Z

    .line 452
    return-object p0
.end method

.method public whitelist set80211azNumberOfRxSpatialStreams(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "numRxSpatialStreams"    # I

    .line 535
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumRxSpatialStreams:I

    .line 536
    return-object p0
.end method

.method public whitelist set80211azNumberOfTxSpatialStreams(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "numTxSpatialStreams"    # I

    .line 521
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumTxSpatialStreams:I

    .line 522
    return-object p0
.end method

.method public whitelist set80211azResponderTxLtfRepetitionsCount(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "r2iTxLtfRepetitions"    # I

    .line 507
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mR2iTxLtfRepetitions:I

    .line 508
    return-object p0
.end method

.method public whitelist set80211mcMeasurement(Z)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "is80211mcMeasurement"    # Z

    .line 405
    iput-boolean p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIs80211mcMeasurement:Z

    .line 406
    return-object p0
.end method

.method public whitelist setDistanceMm(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "distanceMm"    # I

    .line 262
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceMm:I

    .line 263
    return-object p0
.end method

.method public whitelist setDistanceStdDevMm(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "distanceStdDevMm"    # I

    .line 276
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mDistanceStdDevMm:I

    .line 277
    return-object p0
.end method

.method public whitelist setLci([B)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "lci"    # [B

    .line 334
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLci:[B

    .line 335
    return-object p0
.end method

.method public whitelist setLcr([B)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "lcr"    # [B

    .line 354
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mLcr:[B

    .line 355
    return-object p0
.end method

.method public whitelist setMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "macAddress"    # Landroid/net/MacAddress;

    .line 234
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mMac:Landroid/net/MacAddress;

    .line 235
    return-object p0
.end method

.method public whitelist setMaxTimeBetweenNtbMeasurementsMicros(J)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 3
    .param p1, "ntbMaxMeasurementTime"    # J

    .line 479
    iput-wide p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMaxMeasurementTime:J

    .line 480
    return-object p0
.end method

.method public whitelist setMeasurementBandwidth(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "measurementBandwidth"    # I

    .line 434
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPacketBw:I

    .line 435
    return-object p0
.end method

.method public whitelist setMeasurementChannelFrequencyMHz(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "frequencyMHz"    # I

    .line 420
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mFrequencyMHz:I

    .line 421
    return-object p0
.end method

.method public whitelist setMinTimeBetweenNtbMeasurementsMicros(J)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 3
    .param p1, "ntbMinMeasurementTime"    # J

    .line 465
    iput-wide p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNtbMinMeasurementTime:J

    .line 466
    return-object p0
.end method

.method public whitelist setNumAttemptedMeasurements(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "numAttemptedMeasurements"    # I

    .line 303
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumAttemptedMeasurements:I

    .line 304
    return-object p0
.end method

.method public whitelist setNumSuccessfulMeasurements(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "numSuccessfulMeasurements"    # I

    .line 317
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mNumSuccessfulMeasurements:I

    .line 318
    return-object p0
.end method

.method public whitelist setPasnComebackAfterMillis(J)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 3
    .param p1, "comebackAfterMillis"    # J

    .line 648
    iput-wide p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackAfterMillis:J

    .line 649
    return-object p0
.end method

.method public whitelist setPasnComebackCookie([B)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "pasnComebackCookie"    # [B

    .line 633
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPasnComebackCookie:[B

    .line 634
    return-object p0
.end method

.method public whitelist setPeerHandle(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 249
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 250
    return-object p0
.end method

.method public whitelist setRangingAuthenticated(Z)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "isRangingAuthenticated"    # Z

    .line 572
    iput-boolean p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsRangingAuthenticated:Z

    .line 573
    return-object p0
.end method

.method public whitelist setRangingFrameProtected(Z)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "isRangingFrameProtected"    # Z

    .line 586
    iput-boolean p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsRangingFrameProtected:Z

    .line 587
    return-object p0
.end method

.method public whitelist setRangingTimestampMillis(J)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 388
    iput-wide p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mTimestamp:J

    .line 389
    return-object p0
.end method

.method public whitelist setRssi(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "rssi"    # I

    .line 289
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mRssi:I

    .line 290
    return-object p0
.end method

.method public whitelist setSecureHeLtfEnabled(Z)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "isSecureHeLtfEnabled"    # Z

    .line 599
    iput-boolean p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mIsSecureHeLtfEnabled:Z

    .line 600
    return-object p0
.end method

.method public whitelist setSecureHeLtfProtocolVersion(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "secureHeLtfProtocolVersion"    # I

    .line 619
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mSecureHeLtfProtocolVersion:I

    .line 620
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 221
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mStatus:I

    .line 222
    return-object p0
.end method

.method public whitelist setUnverifiedResponderLocation(Landroid/net/wifi/rtt/ResponderLocation;)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 2
    .param p1, "responderLocation"    # Landroid/net/wifi/rtt/ResponderLocation;

    .line 372
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 373
    return-object p0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/rtt/RangingResult$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/rtt/RangingResult$Builder;"
        }
    .end annotation

    .line 552
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 555
    if-eqz p1, :cond_b

    .line 558
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult$Builder;->mVendorData:Ljava/util/List;

    .line 559
    return-object p0

    .line 556
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
