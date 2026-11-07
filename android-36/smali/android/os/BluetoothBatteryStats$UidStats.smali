.class public Landroid/os/BluetoothBatteryStats$UidStats;
.super Ljava/lang/Object;
.source "BluetoothBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BluetoothBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidStats"
.end annotation


# instance fields
.field public final blacklist rxTimeMs:J

.field public final blacklist scanResultCount:I

.field public final blacklist scanTimeMs:J

.field public final blacklist txTimeMs:J

.field public final blacklist uid:I

.field public final blacklist unoptimizedScanTimeMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/os/BluetoothBatteryStats$UidStats;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BluetoothBatteryStats$UidStats;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(IJJIJJ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "scanTimeMs"    # J
    .param p4, "unoptimizedScanTimeMs"    # J
    .param p6, "scanResultCount"    # I
    .param p7, "rxTimeMs"    # J
    .param p9, "txTimeMs"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    .line 44
    iput-wide p2, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    .line 45
    iput-wide p4, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    .line 46
    iput p6, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    .line 47
    iput-wide p7, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    .line 48
    iput-wide p9, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BluetoothBatteryStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BluetoothBatteryStats$UidStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 61
    iget v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStats{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unoptimizedScanTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->unoptimizedScanTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanResultCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->scanResultCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->rxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BluetoothBatteryStats$UidStats;->txTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
