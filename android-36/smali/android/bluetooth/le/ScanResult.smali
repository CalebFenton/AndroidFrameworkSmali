.class public final Landroid/bluetooth/le/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/bluetooth/Attributable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_COMPLETE:I = 0x0

.field public static final whitelist DATA_TRUNCATED:I = 0x2

.field private static final blacklist ET_CONNECTABLE_MASK:I = 0x1

.field private static final blacklist ET_LEGACY_MASK:I = 0x10

.field public static final whitelist PERIODIC_INTERVAL_NOT_PRESENT:I = 0x0

.field public static final whitelist PHY_UNUSED:I = 0x0

.field public static final whitelist SID_NOT_PRESENT:I = 0xff

.field public static final whitelist TX_POWER_NOT_PRESENT:I = 0x7f


# instance fields
.field private blacklist mAdvertisingSid:I

.field private blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mEventType:I

.field private blacklist mPeriodicAdvertisingInterval:I

.field private blacklist mPrimaryPhy:I

.field private blacklist mRssi:I

.field private blacklist mScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private blacklist mSecondaryPhy:I

.field private blacklist mTimestampNanos:J

.field private blacklist mTxPower:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 351
    new-instance v0, Landroid/bluetooth/le/ScanResult$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanResult$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "eventType"    # I
    .param p3, "primaryPhy"    # I
    .param p4, "secondaryPhy"    # I
    .param p5, "advertisingSid"    # I
    .param p6, "txPower"    # I
    .param p7, "rssi"    # I
    .param p8, "periodicAdvertisingInterval"    # I
    .param p9, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p10, "timestampNanos"    # J

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 133
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 134
    iput p4, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 135
    iput p5, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 136
    iput p6, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 137
    iput p7, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 138
    iput p8, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 139
    iput-object p9, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 140
    iput-wide p10, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p3, "rssi"    # I
    .param p4, "timestampNanos"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 95
    iput-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 96
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 97
    iput-wide p4, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 98
    const/16 v0, 0x11

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 101
    const/16 v1, 0xff

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 102
    const/16 v1, 0x7f

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 103
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 104
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 173
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 175
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_21

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 178
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 186
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 307
    return v0

    .line 309
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5e

    .line 312
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 313
    .local v2, "other":Landroid/bluetooth/le/ScanResult;
    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v2, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v2, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 315
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-wide v3, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    iget-wide v5, v2, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mEventType:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    if-ne v3, v4, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    .line 313
    :goto_5d
    return v0

    .line 310
    .end local v2    # "other":Landroid/bluetooth/le/ScanResult;
    :cond_5e
    :goto_5e
    return v1
.end method

.method public whitelist getAdvertisingSid()I
    .registers 2

    .line 269
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    return v0
.end method

.method public whitelist getDataStatus()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getPeriodicAdvertisingInterval()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return v0
.end method

.method public whitelist getPrimaryPhy()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    return v0
.end method

.method public whitelist getScanRecord()Landroid/bluetooth/le/ScanRecord;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public whitelist getSecondaryPhy()I
    .registers 2

    .line 261
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    return v0
.end method

.method public whitelist getTimestampNanos()J
    .registers 3

    .line 221
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public whitelist getTxPower()I
    .registers 2

    .line 277
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 291
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iget-wide v3, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 295
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 298
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 299
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 300
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 301
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 291
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isConnectable()Z
    .registers 3

    .line 234
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isLegacy()Z
    .registers 2

    .line 229
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist setAttributionSource(Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 195
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 196
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 331
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advertisingSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodicAdvertisingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 150
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 153
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_12
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_23

    .line 156
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_26

    .line 159
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    :goto_26
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void
.end method
