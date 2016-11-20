.class public Landroid/net/LinkQualityInfo;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkQualityInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NORMALIZED_MAX_SIGNAL_STRENGTH:I = 0x63

.field public static final NORMALIZED_MIN_SIGNAL_STRENGTH:I = 0x0

.field public static final NORMALIZED_SIGNAL_STRENGTH_RANGE:I = 0x64

.field protected static final OBJECT_TYPE_LINK_QUALITY_INFO:I = 0x1

.field protected static final OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO:I = 0x3

.field protected static final OBJECT_TYPE_WIFI_LINK_QUALITY_INFO:I = 0x2

.field public static final UNKNOWN_INT:I = 0x7fffffff

.field public static final UNKNOWN_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private mDataSampleDuration:I

.field private mLastDataSampleTime:J

.field private mNetworkType:I

.field private mNormalizedSignalStrength:I

.field private mPacketCount:J

.field private mPacketErrorCount:J

.field private mTheoreticalLatency:I

.field private mTheoreticalRxBandwidth:I

.field private mTheoreticalTxBandwidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/net/LinkQualityInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/LinkQualityInfo$1;-><init>()V

    #@5
    .line 113
    sput-object v0, Landroid/net/LinkQualityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide v2, 0x7fffffffffffffffL

    #@5
    const v1, 0x7fffffff

    #@8
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    .line 51
    const/4 v0, -0x1

    #@c
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    #@e
    .line 53
    iput v1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    #@10
    .line 55
    iput-wide v2, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    #@12
    .line 56
    iput-wide v2, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    #@14
    .line 57
    iput v1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    #@16
    .line 58
    iput v1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    #@18
    .line 59
    iput v1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    #@1a
    .line 62
    iput-wide v2, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    #@1c
    .line 65
    iput v1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    #@1e
    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDataSampleDuration()I
    .locals 1

    #@0
    .prologue
    .line 277
    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    #@2
    return v0
.end method

.method public getLastDataSampleTime()J
    .locals 2

    #@0
    .prologue
    .line 262
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    #@2
    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    #@2
    return v0
.end method

.method public getNormalizedSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    #@2
    return v0
.end method

.method public getPacketCount()J
    .locals 2

    #@0
    .prologue
    .line 186
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    #@2
    return-wide v0
.end method

.method public getPacketErrorCount()J
    .locals 2

    #@0
    .prologue
    .line 201
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    #@2
    return-wide v0
.end method

.method public getTheoreticalLatency()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    #@2
    return v0
.end method

.method public getTheoreticalRxBandwidth()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    #@2
    return v0
.end method

.method public getTheoreticalTxBandwidth()I
    .locals 1

    #@0
    .prologue
    .line 216
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    #@2
    return v0
.end method

.method protected initializeFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    #@6
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    #@c
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    #@12
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    #@18
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    #@1e
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    #@24
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    #@2a
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v0

    #@2e
    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    #@30
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    #@36
    .line 138
    return-void
.end method

.method public setDataSampleDuration(I)V
    .locals 0
    .param p1, "dataSampleDuration"    # I

    #@0
    .prologue
    .line 284
    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    #@2
    .line 283
    return-void
.end method

.method public setLastDataSampleTime(J)V
    .locals 1
    .param p1, "lastDataSampleTime"    # J

    #@0
    .prologue
    .line 269
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    #@2
    .line 268
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 163
    iput p1, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    #@2
    .line 162
    return-void
.end method

.method public setNormalizedSignalStrength(I)V
    .locals 0
    .param p1, "normalizedSignalStrength"    # I

    #@0
    .prologue
    .line 178
    iput p1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    #@2
    .line 177
    return-void
.end method

.method public setPacketCount(J)V
    .locals 1
    .param p1, "packetCount"    # J

    #@0
    .prologue
    .line 193
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    #@2
    .line 192
    return-void
.end method

.method public setPacketErrorCount(J)V
    .locals 1
    .param p1, "packetErrorCount"    # J

    #@0
    .prologue
    .line 208
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    #@2
    .line 207
    return-void
.end method

.method public setTheoreticalLatency(I)V
    .locals 0
    .param p1, "theoreticalLatency"    # I

    #@0
    .prologue
    .line 253
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    #@2
    .line 252
    return-void
.end method

.method public setTheoreticalRxBandwidth(I)V
    .locals 0
    .param p1, "theoreticalRxBandwidth"    # I

    #@0
    .prologue
    .line 238
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    #@2
    .line 237
    return-void
.end method

.method public setTheoreticalTxBandwidth(I)V
    .locals 0
    .param p1, "theoreticalTxBandwidth"    # I

    #@0
    .prologue
    .line 223
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    #@2
    .line 222
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 91
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    #@4
    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "objectType"    # I

    #@0
    .prologue
    .line 98
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@3
    .line 99
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 100
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 101
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    .line 102
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 103
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 104
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 105
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 106
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2b
    .line 107
    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 97
    return-void
.end method
