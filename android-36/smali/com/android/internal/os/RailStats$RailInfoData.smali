.class public Lcom/android/internal/os/RailStats$RailInfoData;
.super Ljava/lang/Object;
.source "RailStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RailStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RailInfoData"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RailInfoData"


# instance fields
.field public blacklist energyUsedSinceBootuWs:J

.field public blacklist index:J

.field public blacklist railName:Ljava/lang/String;

.field public blacklist subSystemName:Ljava/lang/String;

.field public blacklist timestampSinceBootMs:J


# direct methods
.method private constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 9
    .param p1, "index"    # J
    .param p3, "railName"    # Ljava/lang/String;
    .param p4, "subSystemName"    # Ljava/lang/String;
    .param p5, "timestampSinceBootMs"    # J
    .param p7, "energyUsedSinceBoot"    # J

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide p1, p0, Lcom/android/internal/os/RailStats$RailInfoData;->index:J

    .line 130
    iput-object p3, p0, Lcom/android/internal/os/RailStats$RailInfoData;->railName:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/android/internal/os/RailStats$RailInfoData;->subSystemName:Ljava/lang/String;

    .line 132
    iput-wide p5, p0, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    .line 133
    iput-wide p7, p0, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    .line 134
    return-void
.end method

.method synthetic constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;JJLcom/android/internal/os/RailStats-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/os/RailStats$RailInfoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist printData()V
    .registers 5

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/RailStats$RailInfoData;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RailInfoData"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RailName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->railName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubSystemName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->subSystemName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimestampSinceBootMs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnergyUsedSinceBootuWs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
