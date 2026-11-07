.class public final Landroid/os/connectivity/GpsBatteryStats;
.super Ljava/lang/Object;
.source "GpsBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/GpsBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEnergyConsumedMaMs:J

.field private blacklist mLoggingDurationMs:J

.field private blacklist mTimeInGpsSignalQualityLevel:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/os/connectivity/GpsBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/GpsBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/GpsBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0}, Landroid/os/connectivity/GpsBatteryStats;->initialize()V

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-direct {p0}, Landroid/os/connectivity/GpsBatteryStats;->initialize()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/os/connectivity/GpsBatteryStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/connectivity/GpsBatteryStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/connectivity/GpsBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist initialize()V
    .registers 3

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    .line 103
    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnergyConsumedMaMs()J
    .registers 3

    .line 68
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public blacklist getLoggingDurationMs()J
    .registers 3

    .line 64
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public blacklist getTimeInGpsSignalQualityLevel()[J
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    .line 60
    iget-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 61
    return-void
.end method

.method public blacklist setEnergyConsumedMaMs(J)V
    .registers 3
    .param p1, "e"    # J

    .line 81
    iput-wide p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    .line 82
    return-void
.end method

.method public blacklist setLoggingDurationMs(J)V
    .registers 3
    .param p1, "t"    # J

    .line 76
    iput-wide p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    .line 77
    return-void
.end method

.method public blacklist setTimeInGpsSignalQualityLevel([J)V
    .registers 4
    .param p1, "t"    # [J

    .line 86
    array-length v0, p1

    .line 87
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    .line 88
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 55
    return-void
.end method
