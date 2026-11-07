.class public final Landroid/telephony/CallQuality;
.super Ljava/lang/Object;
.source "CallQuality.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallQuality$Builder;,
        Landroid/telephony/CallQuality$CallQualityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CALL_QUALITY_BAD:I = 0x4

.field public static final whitelist CALL_QUALITY_EXCELLENT:I = 0x0

.field public static final whitelist CALL_QUALITY_FAIR:I = 0x2

.field public static final whitelist CALL_QUALITY_GOOD:I = 0x1

.field public static final whitelist CALL_QUALITY_NOT_AVAILABLE:I = 0x5

.field public static final whitelist CALL_QUALITY_POOR:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAverageRelativeJitter:I

.field private blacklist mAverageRoundTripTime:I

.field private blacklist mCallDuration:I

.field private blacklist mCodecType:I

.field private blacklist mDownlinkCallQualityLevel:I

.field private blacklist mMaxPlayoutDelayMillis:J

.field private blacklist mMaxRelativeJitter:I

.field private blacklist mMinPlayoutDelayMillis:J

.field private blacklist mNumDroppedRtpPackets:I

.field private blacklist mNumNoDataFrames:I

.field private blacklist mNumRtpDuplicatePackets:I

.field private blacklist mNumRtpPacketsNotReceived:I

.field private blacklist mNumRtpPacketsReceived:I

.field private blacklist mNumRtpPacketsTransmitted:I

.field private blacklist mNumRtpPacketsTransmittedLost:I

.field private blacklist mNumRtpSidPacketsReceived:I

.field private blacklist mNumVoiceFrames:I

.field private blacklist mRtpInactivityDetected:Z

.field private blacklist mRxSilenceDetected:Z

.field private blacklist mTxSilenceDetected:Z

.field private blacklist mUplinkCallQualityLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAverageRelativeJitter(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAverageRoundTripTime(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallDuration(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCodecType(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDownlinkCallQualityLevel(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxRelativeJitter(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumDroppedRtpPackets(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumNoDataFrames(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumRtpDuplicatePackets(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumRtpPacketsNotReceived(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumRtpPacketsReceived(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumRtpPacketsTransmitted(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumRtpPacketsTransmittedLost(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumRtpSidPacketsReceived(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumVoiceFrames(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRtpInactivityDetected(Landroid/telephony/CallQuality;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRxSilenceDetected(Landroid/telephony/CallQuality;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxSilenceDetected(Landroid/telephony/CallQuality;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUplinkCallQualityLevel(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 520
    new-instance v0, Landroid/telephony/CallQuality$1;

    invoke-direct {v0}, Landroid/telephony/CallQuality$1;-><init>()V

    sput-object v0, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(IIIIIIIIIII)V
    .registers 27
    .param p1, "downlinkCallQualityLevel"    # I
    .param p2, "uplinkCallQualityLevel"    # I
    .param p3, "callDuration"    # I
    .param p4, "numRtpPacketsTransmitted"    # I
    .param p5, "numRtpPacketsReceived"    # I
    .param p6, "numRtpPacketsTransmittedLost"    # I
    .param p7, "numRtpPacketsNotReceived"    # I
    .param p8, "averageRelativeJitter"    # I
    .param p9, "maxRelativeJitter"    # I
    .param p10, "averageRoundTripTime"    # I
    .param p11, "codecType"    # I

    .line 148
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIIIZZZ)V

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(IIIIIIIIIIIZZZ)V
    .registers 15
    .param p1, "downlinkCallQualityLevel"    # I
    .param p2, "uplinkCallQualityLevel"    # I
    .param p3, "callDuration"    # I
    .param p4, "numRtpPacketsTransmitted"    # I
    .param p5, "numRtpPacketsReceived"    # I
    .param p6, "numRtpPacketsTransmittedLost"    # I
    .param p7, "numRtpPacketsNotReceived"    # I
    .param p8, "averageRelativeJitter"    # I
    .param p9, "maxRelativeJitter"    # I
    .param p10, "averageRoundTripTime"    # I
    .param p11, "codecType"    # I
    .param p12, "rtpInactivityDetected"    # Z
    .param p13, "rxSilenceDetected"    # Z
    .param p14, "txSilenceDetected"    # Z

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    .line 191
    iput p2, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    .line 192
    iput p3, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    .line 193
    iput p4, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    .line 194
    iput p5, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    .line 195
    iput p6, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    .line 196
    iput p7, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    .line 197
    iput p8, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    .line 198
    iput p9, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    .line 199
    iput p10, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    .line 200
    iput p11, p0, Landroid/telephony/CallQuality;->mCodecType:I

    .line 201
    iput-boolean p12, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    .line 202
    iput-boolean p13, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    .line 203
    iput-boolean p14, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    .line 204
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 453
    const/4 v0, 0x0

    if-eqz p1, :cond_9e

    instance-of v1, p1, Landroid/telephony/CallQuality;

    if-eqz v1, :cond_9e

    invoke-virtual {p0}, Landroid/telephony/CallQuality;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_13

    goto/16 :goto_9e

    .line 457
    :cond_13
    const/4 v1, 0x1

    if-ne p0, p1, :cond_17

    .line 458
    return v1

    .line 461
    :cond_17
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallQuality;

    .line 463
    .local v2, "s":Landroid/telephony/CallQuality;
    iget v3, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    iget v4, v2, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    iget v4, v2, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    iget v4, v2, Landroid/telephony/CallQuality;->mCallDuration:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    iget v4, v2, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    iget v4, v2, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    iget v4, v2, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mCodecType:I

    iget v4, v2, Landroid/telephony/CallQuality;->mCodecType:I

    if-ne v3, v4, :cond_9d

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    if-ne v3, v4, :cond_9d

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    if-ne v3, v4, :cond_9d

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    if-ne v3, v4, :cond_9d

    iget-wide v3, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    iget-wide v5, v2, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    iget-wide v5, v2, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    if-ne v3, v4, :cond_9d

    move v0, v1

    :cond_9d
    return v0

    .line 454
    .end local v2    # "s":Landroid/telephony/CallQuality;
    :cond_9e
    :goto_9e
    return v0
.end method

.method public whitelist getAverageRelativeJitter()I
    .registers 2

    .line 269
    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    return v0
.end method

.method public whitelist getAverageRoundTripTime()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    return v0
.end method

.method public whitelist getCallDuration()I
    .registers 2

    .line 227
    iget v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    return v0
.end method

.method public whitelist getCodecType()I
    .registers 2

    .line 394
    iget v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    return v0
.end method

.method public whitelist getDownlinkCallQualityLevel()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    return v0
.end method

.method public whitelist getMaxPlayoutDelayMillis()J
    .registers 3

    .line 348
    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    return-wide v0
.end method

.method public whitelist getMaxRelativeJitter()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    return v0
.end method

.method public whitelist getMinPlayoutDelayMillis()J
    .registers 3

    .line 340
    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    return-wide v0
.end method

.method public whitelist getNumDroppedRtpPackets()I
    .registers 2

    .line 332
    iget v0, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    return v0
.end method

.method public whitelist getNumNoDataFrames()I
    .registers 2

    .line 325
    iget v0, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    return v0
.end method

.method public whitelist getNumRtpDuplicatePackets()I
    .registers 2

    .line 364
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    return v0
.end method

.method public whitelist getNumRtpPacketsNotReceived()I
    .registers 2

    .line 257
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    return v0
.end method

.method public whitelist getNumRtpPacketsReceived()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    return v0
.end method

.method public whitelist getNumRtpPacketsTransmitted()I
    .registers 2

    .line 234
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    return v0
.end method

.method public whitelist getNumRtpPacketsTransmittedLost()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    return v0
.end method

.method public whitelist getNumRtpSidPacketsReceived()I
    .registers 2

    .line 356
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    return v0
.end method

.method public whitelist getNumVoiceFrames()I
    .registers 2

    .line 318
    iget v0, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    return v0
.end method

.method public whitelist getUplinkCallQualityLevel()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 24

    .line 427
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/telephony/CallQuality;->mCallDuration:I

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    .line 432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    .line 437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/telephony/CallQuality;->mCodecType:I

    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    .line 439
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    .line 440
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v1, v0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    .line 441
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget v1, v0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v19, v2

    iget-wide v1, v0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    .line 445
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v20, v1

    iget-wide v1, v0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    .line 446
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v2, v0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    .line 448
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v2, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v1

    filled-new-array/range {v2 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    .line 427
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isIncomingSilenceDetectedAtCallSetup()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    return v0
.end method

.method public whitelist isOutgoingSilenceDetectedAtCallSetup()Z
    .registers 2

    .line 311
    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return v0
.end method

.method public whitelist isRtpInactivityDetected()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallQuality: {downlinkCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uplinkCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsTransmitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsTransmittedLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsNotReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " averageRelativeJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxRelativeJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " averageRoundTripTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rtpInactivityDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txSilenceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSilenceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numVoiceFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numNoDataFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numDroppedRtpPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minPlayoutDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxPlayoutDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpSidPacketsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpDuplicatePackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 497
    iget v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 509
    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 510
    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 511
    iget v0, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 515
    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 516
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    return-void
.end method
