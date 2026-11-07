.class public final Landroid/bluetooth/le/PeriodicAdvertisingReport;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DATA_COMPLETE:I = 0x0

.field public static final blacklist DATA_INCOMPLETE_TRUNCATED:I = 0x2


# instance fields
.field private blacklist mData:Landroid/bluetooth/le/ScanRecord;

.field private blacklist mDataStatus:I

.field private blacklist mRssi:I

.field private blacklist mSyncHandle:I

.field private blacklist mTimestampNanos:J

.field private blacklist mTxPower:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/bluetooth/le/ScanRecord;)V
    .registers 6
    .param p1, "syncHandle"    # I
    .param p2, "txPower"    # I
    .param p3, "rssi"    # I
    .param p4, "dataStatus"    # I
    .param p5, "data"    # Landroid/bluetooth/le/ScanRecord;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    .line 56
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    .line 57
    iput p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    .line 58
    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    .line 59
    iput-object p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 88
    :cond_29
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 140
    return v0

    .line 142
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    .line 145
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 146
    .local v2, "other":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 150
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-wide v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    iget-wide v5, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 146
    :goto_41
    return v0

    .line 143
    .end local v2    # "other":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :cond_42
    :goto_42
    return v1
.end method

.method public blacklist getData()Landroid/bluetooth/le/ScanRecord;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public blacklist getDataStatus()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    return v0
.end method

.method public blacklist getRssi()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    return v0
.end method

.method public blacklist getSyncHandle()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    return v0
.end method

.method public blacklist getTimestampNanos()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    return-wide v0
.end method

.method public blacklist getTxPower()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 134
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    iget-wide v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodicAdvertisingReport{syncHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 165
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_26

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2a

    .line 76
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    :goto_2a
    return-void
.end method
