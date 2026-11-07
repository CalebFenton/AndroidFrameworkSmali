.class public final Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;
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
    name = "BqrVsScoChoppy"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAirFormat:I

.field private final blacklist mGlitchCount:I

.field private final blacklist mGoodRxFrameCount:I

.field private final blacklist mInstanceCount:I

.field private final blacklist mIntervalEsco:I

.field private final blacklist mLateDispatch:I

.field private final blacklist mLpaIntrMiss:I

.field private final blacklist mMicIntrMiss:I

.field private final blacklist mMissedInstanceCount:I

.field private final blacklist mPlcDiscardCount:I

.field private final blacklist mPlcFillCount:I

.field private final blacklist mRxCxmDenials:I

.field private final blacklist mRxRetransmitSlotCount:I

.field private final blacklist mSprIntrMiss:I

.field private final blacklist mTxAbortCount:I

.field private final blacklist mTxCxmDenials:I

.field private final blacklist mTxRetransmitSlotCount:I

.field private final blacklist mWindowEsco:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1835
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->TAG:Ljava/lang/String;

    .line 2155
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    .line 1887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    .line 1888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    .line 1889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 1890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    .line 1891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    .line 1892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    .line 1893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    .line 1894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    .line 1895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    .line 1896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    .line 1897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    .line 1898
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    .line 1900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    .line 1901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    .line 1902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    .line 1903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    .line 1904
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 6
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 1856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    if-eqz p1, :cond_9c

    array-length v0, p1

    if-le v0, p2, :cond_9c

    .line 1861
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 1862
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1863
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1865
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    .line 1866
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    .line 1867
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    .line 1868
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 1869
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    .line 1870
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    .line 1871
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    .line 1872
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    .line 1873
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    .line 1874
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    .line 1875
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    .line 1876
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    .line 1877
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    .line 1878
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    .line 1879
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    .line 1880
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    .line 1881
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    .line 1882
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    .line 1883
    return-void

    .line 1858
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": BQR raw data length is abnormal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>([BI)V

    return-void
.end method

.method public static whitelist airFormatToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "airFormat"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1962
    invoke-static {p0}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    .line 1963
    .local v0, "m":Landroid/bluetooth/BluetoothQualityReport$AirMode;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAirFormat()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1950
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    return v0
.end method

.method public whitelist getGlitchCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1914
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    return v0
.end method

.method public whitelist getGoodRxFrameCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2117
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    return v0
.end method

.method public whitelist getInstanceCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1974
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    return v0
.end method

.method public whitelist getIntervalEsco()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1926
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    return v0
.end method

.method public whitelist getLateDispatch()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2018
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    return v0
.end method

.method public whitelist getLpaIntrMiss()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2040
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    return v0
.end method

.method public whitelist getMicIntrMiss()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2029
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    return v0
.end method

.method public whitelist getMissedInstanceCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2084
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    return v0
.end method

.method public whitelist getPlcDiscardCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2073
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    return v0
.end method

.method public whitelist getPlcFillCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2062
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    return v0
.end method

.method public whitelist getRxCxmDenials()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1996
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    return v0
.end method

.method public whitelist getRxRetransmitSlotCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2106
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    return v0
.end method

.method public whitelist getSprIntrMiss()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2051
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    return v0
.end method

.method public whitelist getTxAbortCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2007
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    return v0
.end method

.method public whitelist getTxCxmDenials()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1985
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    return v0
.end method

.method public whitelist getTxRetransmitSlotCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2095
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    return v0
.end method

.method public whitelist getWindowEsco()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1938
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsScoChoppy: {\n    mGlitchCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntervalEsco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindowEsco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAirFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 2180
    invoke-static {v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->airFormatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 2182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mInstanceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxAbortCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mLateDispatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMicIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLpaIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSprIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlcFillCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlcDiscardCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMissedInstanceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxRetransmitSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mRxRetransmitSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGoodRxFrameCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2216
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2133
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2139
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2140
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2142
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2145
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2148
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2149
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2150
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    return-void
.end method
