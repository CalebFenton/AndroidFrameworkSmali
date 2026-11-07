.class public final Landroid/location/SatellitePvt$Builder;
.super Ljava/lang/Object;
.source "SatellitePvt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

.field private blacklist mEphemerisSource:I

.field private blacklist mFlags:I

.field private blacklist mIonoDelayMeters:D

.field private blacklist mIssueOfDataClock:I

.field private blacklist mIssueOfDataEphemeris:I

.field private blacklist mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

.field private blacklist mTimeOfClockSeconds:J

.field private blacklist mTimeOfEphemerisSeconds:J

.field private blacklist mTropoDelayMeters:D

.field private blacklist mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, 0x3

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mEphemerisSource:I

    return-void
.end method

.method private blacklist updateFlags()V
    .registers 2

    .line 759
    iget-object v0, p0, Landroid/location/SatellitePvt$Builder;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/location/SatellitePvt$Builder;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/location/SatellitePvt$Builder;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    if-eqz v0, :cond_13

    .line 760
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 762
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/SatellitePvt;
    .registers 20

    .line 881
    move-object/from16 v0, p0

    new-instance v1, Landroid/location/SatellitePvt;

    iget v2, v0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    iget-object v3, v0, Landroid/location/SatellitePvt$Builder;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    iget-object v4, v0, Landroid/location/SatellitePvt$Builder;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    iget-object v5, v0, Landroid/location/SatellitePvt$Builder;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    iget-wide v6, v0, Landroid/location/SatellitePvt$Builder;->mIonoDelayMeters:D

    iget-wide v8, v0, Landroid/location/SatellitePvt$Builder;->mTropoDelayMeters:D

    iget-wide v10, v0, Landroid/location/SatellitePvt$Builder;->mTimeOfClockSeconds:J

    iget-wide v12, v0, Landroid/location/SatellitePvt$Builder;->mTimeOfEphemerisSeconds:J

    iget v14, v0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataClock:I

    iget v15, v0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataEphemeris:I

    move-object/from16 v16, v1

    iget v1, v0, Landroid/location/SatellitePvt$Builder;->mEphemerisSource:I

    const/16 v17, 0x0

    move-object/from16 v18, v16

    move/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Landroid/location/SatellitePvt;-><init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIIILandroid/location/SatellitePvt-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setClockInfo(Landroid/location/SatellitePvt$ClockInfo;)Landroid/location/SatellitePvt$Builder;
    .registers 2
    .param p1, "clockInfo"    # Landroid/location/SatellitePvt$ClockInfo;

    .line 753
    iput-object p1, p0, Landroid/location/SatellitePvt$Builder;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    .line 754
    invoke-direct {p0}, Landroid/location/SatellitePvt$Builder;->updateFlags()V

    .line 755
    return-object p0
.end method

.method public whitelist setEphemerisSource(I)Landroid/location/SatellitePvt$Builder;
    .registers 4
    .param p1, "ephemerisSource"    # I

    .line 866
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 870
    iput p1, p0, Landroid/location/SatellitePvt$Builder;->mEphemerisSource:I

    .line 871
    return-object p0
.end method

.method public whitelist setIonoDelayMeters(D)Landroid/location/SatellitePvt$Builder;
    .registers 4
    .param p1, "ionoDelayMeters"    # D

    .line 773
    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mIonoDelayMeters:D

    .line 774
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 775
    return-object p0
.end method

.method public whitelist setIssueOfDataClock(I)Landroid/location/SatellitePvt$Builder;
    .registers 5
    .param p1, "issueOfDataClock"    # I

    .line 836
    const/16 v0, 0x3ff

    const-string v1, "issueOfDataClock"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 837
    iput p1, p0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataClock:I

    .line 838
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 839
    return-object p0
.end method

.method public whitelist setIssueOfDataEphemeris(I)Landroid/location/SatellitePvt$Builder;
    .registers 5
    .param p1, "issueOfDataEphemeris"    # I

    .line 851
    const/16 v0, 0x3ff

    const-string v1, "issueOfDataEphemeris"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 853
    iput p1, p0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataEphemeris:I

    .line 854
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 855
    return-object p0
.end method

.method public whitelist setPositionEcef(Landroid/location/SatellitePvt$PositionEcef;)Landroid/location/SatellitePvt$Builder;
    .registers 2
    .param p1, "positionEcef"    # Landroid/location/SatellitePvt$PositionEcef;

    .line 727
    iput-object p1, p0, Landroid/location/SatellitePvt$Builder;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    .line 728
    invoke-direct {p0}, Landroid/location/SatellitePvt$Builder;->updateFlags()V

    .line 729
    return-object p0
.end method

.method public whitelist setTimeOfClockSeconds(J)Landroid/location/SatellitePvt$Builder;
    .registers 4
    .param p1, "timeOfClockSeconds"    # J

    .line 804
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 805
    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mTimeOfClockSeconds:J

    .line 806
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 807
    return-object p0
.end method

.method public whitelist setTimeOfEphemerisSeconds(J)Landroid/location/SatellitePvt$Builder;
    .registers 4
    .param p1, "timeOfEphemerisSeconds"    # J

    .line 822
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 823
    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mTimeOfEphemerisSeconds:J

    .line 824
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 825
    return-object p0
.end method

.method public whitelist setTropoDelayMeters(D)Landroid/location/SatellitePvt$Builder;
    .registers 4
    .param p1, "tropoDelayMeters"    # D

    .line 787
    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mTropoDelayMeters:D

    .line 788
    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    .line 789
    return-object p0
.end method

.method public whitelist setVelocityEcef(Landroid/location/SatellitePvt$VelocityEcef;)Landroid/location/SatellitePvt$Builder;
    .registers 2
    .param p1, "velocityEcef"    # Landroid/location/SatellitePvt$VelocityEcef;

    .line 740
    iput-object p1, p0, Landroid/location/SatellitePvt$Builder;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    .line 741
    invoke-direct {p0}, Landroid/location/SatellitePvt$Builder;->updateFlags()V

    .line 742
    return-object p0
.end method
