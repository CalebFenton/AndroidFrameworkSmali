.class public final Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqrRfStats"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mExtensionInfo:I

.field private final blacklist mReportTimePeriod:J

.field private final blacklist mRssiChain50To55:J

.field private final blacklist mRssiChain55To60:J

.field private final blacklist mRssiChain60To65:J

.field private final blacklist mRssiChain65To70:J

.field private final blacklist mRssiChain70To75:J

.field private final blacklist mRssiChain75To80:J

.field private final blacklist mRssiChain80To85:J

.field private final blacklist mRssiChain85To90:J

.field private final blacklist mRssiChainOver50:J

.field private final blacklist mRssiChainUnder90:J

.field private final blacklist mRssiDelta2To5:J

.field private final blacklist mRssiDelta5To8:J

.field private final blacklist mRssiDelta8To11:J

.field private final blacklist mRssiDeltaOver11:J

.field private final blacklist mRssiDeltaUnder2:J

.field private final blacklist mTxPowerePaBf:J

.field private final blacklist mTxPowerePaDiv:J

.field private final blacklist mTxPoweriPaBf:J

.field private final blacklist mTxPoweriPaDiv:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2862
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->TAG:Ljava/lang/String;

    .line 3228
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mExtensionInfo:I

    .line 2921
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mReportTimePeriod:J

    .line 2922
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaBf:J

    .line 2923
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaBf:J

    .line 2924
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaDiv:J

    .line 2925
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaDiv:J

    .line 2926
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainOver50:J

    .line 2927
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain50To55:J

    .line 2928
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain55To60:J

    .line 2929
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain60To65:J

    .line 2930
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain65To70:J

    .line 2931
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain70To75:J

    .line 2932
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain75To80:J

    .line 2933
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain80To85:J

    .line 2934
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain85To90:J

    .line 2935
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainUnder90:J

    .line 2936
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaUnder2:J

    .line 2937
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta2To5:J

    .line 2938
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta5To8:J

    .line 2939
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta8To11:J

    .line 2940
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaOver11:J

    .line 2941
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 8
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 2886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2887
    if-eqz p1, :cond_c5

    array-length v0, p1

    if-le v0, p2, :cond_c5

    .line 2892
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 2893
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2894
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2896
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mExtensionInfo:I

    .line 2897
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mReportTimePeriod:J

    .line 2898
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaBf:J

    .line 2899
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaBf:J

    .line 2900
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaDiv:J

    .line 2901
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaDiv:J

    .line 2902
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainOver50:J

    .line 2903
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain50To55:J

    .line 2904
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain55To60:J

    .line 2905
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain60To65:J

    .line 2906
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain65To70:J

    .line 2907
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain70To75:J

    .line 2908
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain75To80:J

    .line 2909
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain80To85:J

    .line 2910
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain85To90:J

    .line 2911
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainUnder90:J

    .line 2912
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaUnder2:J

    .line 2913
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta2To5:J

    .line 2914
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta5To8:J

    .line 2915
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta8To11:J

    .line 2916
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaOver11:J

    .line 2917
    return-void

    .line 2888
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": BQR RF Stats raw data length is abnormal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtensionInfo()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2951
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mExtensionInfo:I

    return v0
.end method

.method public whitelist getPacketsWithRssi50To55dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3032
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain50To55:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi55To60dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3044
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain55To60:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi60To65dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3056
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain60To65:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi65To70dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3068
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain65To70:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi70To75dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3080
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain70To75:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi75To80dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3092
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain75To80:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi80To85dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3104
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain80To85:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssi85To90dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3116
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain85To90:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiAboveMinus50dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3020
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainOver50:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiBelowMinus90dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3128
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainUnder90:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiDelta2To5dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3152
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta2To5:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiDelta5To8dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3164
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta5To8:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiDelta8To11dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3176
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta8To11:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiDeltaAbove11dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3187
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaOver11:J

    return-wide v0
.end method

.method public whitelist getPacketsWithRssiDeltaBelow2dBm()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3140
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaUnder2:J

    return-wide v0
.end method

.method public whitelist getPerformanceDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2964
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mReportTimePeriod:J

    return-wide v0
.end method

.method public whitelist getTxPowerExternalPaBeamformingCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2986
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaBf:J

    return-wide v0
.end method

.method public whitelist getTxPowerExternalPaDiversityCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3008
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaDiv:J

    return-wide v0
.end method

.method public whitelist getTxPowerInternalPaBeamformingCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2975
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaBf:J

    return-wide v0
.end method

.method public whitelist getTxPowerInternalPaDiversityCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2997
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaDiv:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrRfStats: {\n    mExtensionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mExtensionInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportTimePeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mReportTimePeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPoweriPaBf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaBf:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerePaBf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaBf:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPoweriPaDiv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaDiv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerePaDiv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaDiv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mRssiChainOver50: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainOver50:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain50To55: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain50To55:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain55To60: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain55To60:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain60To65: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain60To65:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain65To70: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain65To70:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain70To75: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain70To75:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain75To80: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain75To80:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain80To85: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain80To85:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChain85To90: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain85To90:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiChainUnder90: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainUnder90:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mRssiDeltaUnder2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaUnder2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiDelta2To5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta2To5:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiDelta5To8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta5To8:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiDelta8To11: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta8To11:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssiDeltaOver11: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaOver11:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

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
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3203
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mExtensionInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mReportTimePeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3205
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaBf:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3206
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaBf:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3207
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPoweriPaDiv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3208
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mTxPowerePaDiv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3209
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainOver50:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3210
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain50To55:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3211
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain55To60:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3212
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain60To65:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3213
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain65To70:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3214
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain70To75:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3215
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain75To80:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3216
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain80To85:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3217
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChain85To90:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3218
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiChainUnder90:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3219
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaUnder2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3220
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta2To5:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3221
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta5To8:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3222
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDelta8To11:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3223
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->mRssiDeltaOver11:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3224
    return-void
.end method
