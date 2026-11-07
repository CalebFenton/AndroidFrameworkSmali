.class public Landroid/hardware/CameraStreamStats;
.super Ljava/lang/Object;
.source "CameraStreamStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HISTOGRAM_TYPE_CAPTURE_LATENCY:I = 0x1

.field public static final blacklist HISTOGRAM_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CameraStreamStats"


# instance fields
.field private blacklist mColorSpace:I

.field private blacklist mDataSpace:I

.field private blacklist mDynamicRangeProfile:J

.field private blacklist mErrorCount:J

.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mHistogramBins:[F

.field private blacklist mHistogramCounts:[J

.field private blacklist mHistogramType:I

.field private blacklist mMaxAppBuffers:I

.field private blacklist mMaxHalBuffers:I

.field private blacklist mMaxPreviewFps:F

.field private blacklist mRequestCount:J

.field private blacklist mStartLatencyMs:I

.field private blacklist mStreamUseCase:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/hardware/CameraStreamStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraStreamStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    .line 60
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    .line 61
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    .line 63
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    .line 65
    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    .line 66
    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    .line 67
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    .line 68
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    .line 69
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    .line 70
    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    .line 71
    const-wide/16 v3, 0x1

    iput-wide v3, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    .line 72
    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(IIIFIJJJIIIJJI)V
    .registers 36
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxPreviewFps"    # F
    .param p5, "dataSpace"    # I
    .param p6, "usage"    # J
    .param p8, "requestCount"    # J
    .param p10, "errorCount"    # J
    .param p12, "startLatencyMs"    # I
    .param p13, "maxHalBuffers"    # I
    .param p14, "maxAppBuffers"    # I
    .param p15, "dynamicRangeProfile"    # J
    .param p17, "streamUseCase"    # J
    .param p19, "colorSpace"    # I

    .line 79
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/CameraStreamStats;->mWidth:I

    .line 81
    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/CameraStreamStats;->mHeight:I

    .line 82
    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/CameraStreamStats;->mFormat:I

    .line 83
    move/from16 v4, p4

    iput v4, v0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    .line 84
    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    .line 85
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/hardware/CameraStreamStats;->mUsage:J

    .line 86
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    .line 87
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    .line 88
    move/from16 v12, p12

    iput v12, v0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    .line 89
    move/from16 v13, p13

    iput v13, v0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    .line 90
    move/from16 v14, p14

    iput v14, v0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    .line 91
    const/4 v15, 0x0

    iput v15, v0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    .line 92
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    .line 93
    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    .line 94
    move/from16 v15, p19

    iput v15, v0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    .line 95
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Landroid/hardware/CameraStreamStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/CameraStreamStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraStreamStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getColorSpace()I
    .registers 2

    .line 227
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    return v0
.end method

.method public blacklist getDataSpace()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    return v0
.end method

.method public blacklist getDynamicRangeProfile()J
    .registers 3

    .line 223
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public blacklist getErrorCount()J
    .registers 3

    .line 195
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    return-wide v0
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    return v0
.end method

.method public blacklist getHistogramBins()[F
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    return-object v0
.end method

.method public blacklist getHistogramCounts()[J
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    return-object v0
.end method

.method public blacklist getHistogramType()I
    .registers 2

    .line 211
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    return v0
.end method

.method public blacklist getMaxAppBuffers()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    return v0
.end method

.method public blacklist getMaxHalBuffers()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    return v0
.end method

.method public blacklist getMaxPreviewFps()F
    .registers 2

    .line 179
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    return v0
.end method

.method public blacklist getRequestCount()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    return-wide v0
.end method

.method public blacklist getStartLatencyMs()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    return v0
.end method

.method public blacklist getStreamUseCase()J
    .registers 3

    .line 231
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-wide v0
.end method

.method public blacklist getUsage()J
    .registers 3

    .line 187
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    .line 164
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 140
    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 141
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget v0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
