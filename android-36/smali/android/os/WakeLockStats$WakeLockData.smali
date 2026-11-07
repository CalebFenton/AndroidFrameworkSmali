.class public Landroid/os/WakeLockStats$WakeLockData;
.super Ljava/lang/Object;
.source "WakeLockStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WakeLockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeLockData"
.end annotation


# static fields
.field public static final blacklist EMPTY:Landroid/os/WakeLockStats$WakeLockData;


# instance fields
.field public final blacklist timeHeldMs:J

.field public final blacklist timesAcquired:I

.field public final blacklist totalTimeHeldMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLockData;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 34
    new-instance v0, Landroid/os/WakeLockStats$WakeLockData;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/WakeLockStats$WakeLockData;-><init>(IJJ)V

    sput-object v0, Landroid/os/WakeLockStats$WakeLockData;->EMPTY:Landroid/os/WakeLockStats$WakeLockData;

    return-void
.end method

.method public constructor blacklist <init>(IJJ)V
    .registers 6
    .param p1, "timesAcquired"    # I
    .param p2, "totalTimeHeldMs"    # J
    .param p4, "timeHeldMs"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    .line 50
    iput-wide p2, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    .line 51
    iput-wide p4, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    .line 52
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLockData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 5

    .line 66
    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    if-nez v0, :cond_14

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 76
    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist isDataValid()Z
    .registers 8

    .line 58
    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1e

    iget-wide v3, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1e

    iget-wide v3, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1e

    iget-wide v3, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    iget-wide v5, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 62
    .local v0, "isDataReasonable":Z
    :goto_1f
    invoke-direct {p0}, Landroid/os/WakeLockStats$WakeLockData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :cond_29
    :goto_29
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLockData{timesAcquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTimeHeldMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeHeldMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
