.class public final Landroid/telephony/ims/MediaQualityStatus;
.super Ljava/lang/Object;
.source "MediaQualityStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/MediaQualityStatus$MediaSessionType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/MediaQualityStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_SESSION_TYPE_AUDIO:I = 0x1

.field public static final whitelist MEDIA_SESSION_TYPE_VIDEO:I = 0x2


# instance fields
.field private final blacklist mImsCallSessionId:Ljava/lang/String;

.field private final blacklist mMediaSessionType:I

.field private final blacklist mRtpInactivityTimeMillis:J

.field private final blacklist mRtpJitterMillis:I

.field private final blacklist mRtpPacketLossRate:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Landroid/telephony/ims/MediaQualityStatus$1;

    invoke-direct {v0}, Landroid/telephony/ims/MediaQualityStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/MediaQualityStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/MediaQualityStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIIIJ)V
    .registers 8
    .param p1, "imsCallSessionId"    # Ljava/lang/String;
    .param p2, "mediaSessionType"    # I
    .param p3, "transportType"    # I
    .param p4, "rtpPacketLossRate"    # I
    .param p5, "rtpJitterMillis"    # I
    .param p6, "rptInactivityTimeMillis"    # J

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    .line 74
    iput p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    .line 75
    iput p3, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    .line 76
    iput p4, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    .line 77
    iput p5, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    .line 78
    iput-wide p6, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 172
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 173
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/MediaQualityStatus;

    .line 174
    .local v2, "that":Landroid/telephony/ims/MediaQualityStatus;
    iget-object v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    iget v4, v2, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    iget v4, v2, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    iget v4, v2, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    iget v4, v2, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    if-ne v3, v4, :cond_44

    iget-wide v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    iget-wide v5, v2, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    :goto_45
    return v0

    .line 172
    .end local v2    # "that":Landroid/telephony/ims/MediaQualityStatus;
    :cond_46
    :goto_46
    return v1
.end method

.method public whitelist getCallSessionId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMediaSessionType()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    return v0
.end method

.method public whitelist getRtpInactivityMillis()J
    .registers 3

    .line 125
    iget-wide v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    return-wide v0
.end method

.method public whitelist getRtpJitterMillis()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    return v0
.end method

.method public whitelist getRtpPacketLossRate()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    return v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 184
    iget-object v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MediaThreshold{mImsCallSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", mMediaSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", mRtpPacketLossRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", mRtpJitterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", mRtpInactivityTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-wide v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget-object v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-wide v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    return-void
.end method
