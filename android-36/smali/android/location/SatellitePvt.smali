.class public final Landroid/location/SatellitePvt;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/SatellitePvt$PositionEcef;,
        Landroid/location/SatellitePvt$VelocityEcef;,
        Landroid/location/SatellitePvt$ClockInfo;,
        Landroid/location/SatellitePvt$Builder;,
        Landroid/location/SatellitePvt$EphemerisSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatellitePvt;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EPHEMERIS_SOURCE_DEMODULATED:I = 0x0

.field public static final whitelist EPHEMERIS_SOURCE_OTHER:I = 0x3

.field public static final whitelist EPHEMERIS_SOURCE_SERVER_LONG_TERM:I = 0x2

.field public static final whitelist EPHEMERIS_SOURCE_SERVER_NORMAL:I = 0x1

.field private static final blacklist HAS_IONO:I = 0x2

.field private static final blacklist HAS_ISSUE_OF_DATA_CLOCK:I = 0x8

.field private static final blacklist HAS_ISSUE_OF_DATA_EPHEMERIS:I = 0x10

.field private static final blacklist HAS_POSITION_VELOCITY_CLOCK_INFO:I = 0x1

.field private static final blacklist HAS_TIME_OF_CLOCK:I = 0x20

.field private static final blacklist HAS_TIME_OF_EPHEMERIS:I = 0x40

.field private static final blacklist HAS_TROPO:I = 0x4


# instance fields
.field private final blacklist mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

.field private final blacklist mEphemerisSource:I

.field private final blacklist mFlags:I

.field private final blacklist mIonoDelayMeters:D

.field private final blacklist mIssueOfDataClock:I

.field private final blacklist mIssueOfDataEphemeris:I

.field private final blacklist mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

.field private final blacklist mTimeOfClockSeconds:J

.field private final blacklist mTimeOfEphemerisSeconds:J

.field private final blacklist mTropoDelayMeters:D

.field private final blacklist mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 620
    new-instance v0, Landroid/location/SatellitePvt$1;

    invoke-direct {v0}, Landroid/location/SatellitePvt$1;-><init>()V

    sput-object v0, Landroid/location/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIII)V
    .registers 32
    .param p1, "flags"    # I
    .param p2, "positionEcef"    # Landroid/location/SatellitePvt$PositionEcef;
    .param p3, "velocityEcef"    # Landroid/location/SatellitePvt$VelocityEcef;
    .param p4, "clockInfo"    # Landroid/location/SatellitePvt$ClockInfo;
    .param p5, "ionoDelayMeters"    # D
    .param p7, "tropoDelayMeters"    # D
    .param p9, "timeOfClockSeconds"    # J
    .param p11, "timeOfEphemerisSeconds"    # J
    .param p13, "issueOfDataClock"    # I
    .param p14, "issueOfDataEphemeris"    # I
    .param p15, "ephemerisSource"    # I

    .line 464
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 465
    move/from16 v1, p1

    iput v1, v0, Landroid/location/SatellitePvt;->mFlags:I

    .line 466
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    .line 467
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    .line 468
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    .line 469
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    .line 470
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    .line 471
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    .line 472
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    .line 473
    move/from16 v13, p13

    iput v13, v0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    .line 474
    move/from16 v14, p14

    iput v14, v0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    .line 475
    move/from16 v15, p15

    iput v15, v0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    .line 476
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIIILandroid/location/SatellitePvt-IA;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Landroid/location/SatellitePvt;-><init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIII)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClockInfo()Landroid/location/SatellitePvt$ClockInfo;
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    return-object v0
.end method

.method public whitelist getEphemerisSource()I
    .registers 2

    .line 580
    iget v0, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    return v0
.end method

.method public whitelist getIonoDelayMeters()D
    .registers 3

    .line 510
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    return-wide v0
.end method

.method public whitelist getIssueOfDataClock()I
    .registers 2

    .line 531
    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    return v0
.end method

.method public whitelist getIssueOfDataEphemeris()I
    .registers 2

    .line 544
    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    return v0
.end method

.method public whitelist getPositionEcef()Landroid/location/SatellitePvt$PositionEcef;
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    return-object v0
.end method

.method public whitelist getTimeOfClockSeconds()J
    .registers 3

    .line 558
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public whitelist getTimeOfEphemerisSeconds()J
    .registers 3

    .line 572
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    return-wide v0
.end method

.method public whitelist getTropoDelayMeters()D
    .registers 3

    .line 518
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    return-wide v0
.end method

.method public whitelist getVelocityEcef()Landroid/location/SatellitePvt$VelocityEcef;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    return-object v0
.end method

.method public whitelist hasIono()Z
    .registers 2

    .line 592
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasIssueOfDataClock()Z
    .registers 2

    .line 602
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasIssueOfDataEphemeris()Z
    .registers 2

    .line 607
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasPositionVelocityClockInfo()Z
    .registers 3

    .line 587
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist hasTimeOfClockSeconds()Z
    .registers 2

    .line 612
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasTimeOfEphemerisSeconds()Z
    .registers 2

    .line 617
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasTropo()Z
    .registers 2

    .line 597
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatellitePvt[Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PositionEcef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VelocityEcef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ClockInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IonoDelayMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TropoDelayMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeOfClockSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeOfEphemerisSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IssueOfDataClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IssueOfDataEphemeris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EphemerisSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 668
    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 670
    iget-object v0, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 671
    iget-object v0, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 672
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 673
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 674
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 675
    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 676
    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v0, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    return-void
.end method
