.class public Landroid/os/WakeLockStats$WakeLock;
.super Ljava/lang/Object;
.source "WakeLockStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WakeLockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeLock"
.end annotation


# static fields
.field public static final blacklist NAME_AGGREGATED:Ljava/lang/String; = "wakelockstats_aggregated"


# instance fields
.field public final blacklist backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

.field public final blacklist isAggregated:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

.field public final blacklist uid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLock;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ZLandroid/os/WakeLockStats$WakeLockData;Landroid/os/WakeLockStats$WakeLockData;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isAggregated"    # Z
    .param p4, "totalWakeLockData"    # Landroid/os/WakeLockStats$WakeLockData;
    .param p5, "backgroundWakeLockData"    # Landroid/os/WakeLockStats$WakeLockData;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    .line 116
    iput-object p2, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    .line 117
    iput-boolean p3, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    .line 118
    iput-object p4, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    .line 119
    iput-object p5, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    .line 120
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    .line 137
    new-instance v0, Landroid/os/WakeLockStats$WakeLockData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/WakeLockStats$WakeLockData;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    .line 138
    new-instance v0, Landroid/os/WakeLockStats$WakeLockData;

    invoke-direct {v0, p1, v1}, Landroid/os/WakeLockStats$WakeLockData;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist isDataValid(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/WakeLockStats$WakeLockData;)Z
    .registers 6
    .param p0, "totalWakeLockData"    # Landroid/os/WakeLockStats$WakeLockData;
    .param p1, "backgroundWakeLockData"    # Landroid/os/WakeLockStats$WakeLockData;

    .line 125
    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 126
    invoke-virtual {p0}, Landroid/os/WakeLockStats$WakeLockData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 127
    invoke-virtual {p1}, Landroid/os/WakeLockStats$WakeLockData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    iget v1, p1, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    if-lt v0, v1, :cond_2c

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    iget-wide v2, p1, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    iget-wide v2, p1, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 125
    :goto_2d
    return v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 142
    iget v0, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-static {v0, p1}, Landroid/os/WakeLockStats$WakeLockData;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/Parcel;)V

    .line 146
    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-static {v0, p1}, Landroid/os/WakeLockStats$WakeLockData;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/Parcel;)V

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAggregated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalWakeLockData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundWakeLockData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
