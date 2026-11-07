.class public Landroid/net/LinkQualityInfo;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o NORMALIZED_MAX_SIGNAL_STRENGTH:I = 0x63

.field public static final greylist-max-o NORMALIZED_MIN_SIGNAL_STRENGTH:I = 0x0

.field public static final greylist-max-o NORMALIZED_SIGNAL_STRENGTH_RANGE:I = 0x64

.field protected static final greylist-max-o OBJECT_TYPE_LINK_QUALITY_INFO:I = 0x1

.field protected static final greylist-max-o OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO:I = 0x3

.field protected static final greylist-max-o OBJECT_TYPE_WIFI_LINK_QUALITY_INFO:I = 0x2

.field public static final greylist-max-o UNKNOWN_INT:I = 0x7fffffff

.field public static final greylist-max-o UNKNOWN_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private greylist-max-o mDataSampleDuration:I

.field private greylist-max-o mLastDataSampleTime:J

.field private greylist-max-o mNetworkType:I

.field private greylist-max-o mNormalizedSignalStrength:I

.field private greylist-max-o mPacketCount:J

.field private greylist-max-o mPacketErrorCount:J

.field private greylist-max-o mTheoreticalLatency:I

.field private greylist-max-o mTheoreticalRxBandwidth:I

.field private greylist-max-o mTheoreticalTxBandwidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Landroid/net/LinkQualityInfo$1;

    invoke-direct {v0}, Landroid/net/LinkQualityInfo$1;-><init>()V

    sput-object v0, Landroid/net/LinkQualityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 57
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 58
    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 59
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 60
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 61
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 64
    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 67
    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getDataSampleDuration()I
    .registers 2

    .line 282
    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return v0
.end method

.method public greylist-max-o getLastDataSampleTime()J
    .registers 3

    .line 266
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-wide v0
.end method

.method public greylist-max-o getNetworkType()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return v0
.end method

.method public greylist-max-o getNormalizedSignalStrength()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return v0
.end method

.method public greylist-max-o getPacketCount()J
    .registers 3

    .line 188
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-wide v0
.end method

.method public greylist-max-o getPacketErrorCount()J
    .registers 3

    .line 204
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-wide v0
.end method

.method public greylist-max-o getTheoreticalLatency()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return v0
.end method

.method public greylist-max-o getTheoreticalRxBandwidth()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return v0
.end method

.method public greylist-max-o getTheoreticalTxBandwidth()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return v0
.end method

.method protected greylist-max-o initializeFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 150
    return-void
.end method

.method public greylist-max-r setDataSampleDuration(I)V
    .registers 2
    .param p1, "dataSampleDuration"    # I

    .line 290
    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 291
    return-void
.end method

.method public greylist-max-r setLastDataSampleTime(J)V
    .registers 3
    .param p1, "lastDataSampleTime"    # J

    .line 274
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 275
    return-void
.end method

.method public greylist-max-o setNetworkType(I)V
    .registers 2
    .param p1, "networkType"    # I

    .line 165
    iput p1, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 166
    return-void
.end method

.method public greylist-max-o setNormalizedSignalStrength(I)V
    .registers 2
    .param p1, "normalizedSignalStrength"    # I

    .line 180
    iput p1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 181
    return-void
.end method

.method public greylist-max-r setPacketCount(J)V
    .registers 3
    .param p1, "packetCount"    # J

    .line 196
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 197
    return-void
.end method

.method public greylist-max-r setPacketErrorCount(J)V
    .registers 3
    .param p1, "packetErrorCount"    # J

    .line 212
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 213
    return-void
.end method

.method public greylist-max-o setTheoreticalLatency(I)V
    .registers 2
    .param p1, "theoreticalLatency"    # I

    .line 257
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 258
    return-void
.end method

.method public greylist-max-o setTheoreticalRxBandwidth(I)V
    .registers 2
    .param p1, "theoreticalRxBandwidth"    # I

    .line 242
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 243
    return-void
.end method

.method public greylist-max-o setTheoreticalTxBandwidth(I)V
    .registers 2
    .param p1, "theoreticalTxBandwidth"    # I

    .line 227
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 228
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 94
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;II)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "objectType"    # I

    .line 100
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
