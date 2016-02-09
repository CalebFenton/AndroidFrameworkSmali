.class public Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;
.super Ljava/lang/Object;
.source "StopwatchStats.java"


# static fields
.field private static instancesByName:Ljava/util/Hashtable;


# instance fields
.field private clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private count:I

.field private final eventType:S

.field private last:I

.field private logStatus:Ljava/lang/String;

.field private max:I

.field private min:I

.field private name:Ljava/lang/String;

.field private start:J

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->instancesByName:Ljava/util/Hashtable;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/Clock;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2
    .param p1, "clock"    # Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "logStatus"    # Ljava/lang/String;
    .param p4, "eventType"    # S

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x7fffffff

    #@6
    .line 60
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    #@8
    const-wide/16 v0, -0x1

    #@a
    .line 66
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    #@c
    .line 88
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@e
    .line 89
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->name:Ljava/lang/String;

    #@10
    .line 90
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->logStatus:Ljava/lang/String;

    #@12
    .line 91
    int-to-short v0, p4

    #@13
    iput-short v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->eventType:S

    #@15
    .line 92
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->instancesByName:Ljava/util/Hashtable;

    #@17
    invoke-virtual {v0, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "logStatus"    # Ljava/lang/String;
    .param p3, "eventType"    # S

    #@0
    .prologue
    .line 114
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;-><init>(Landroid_maps_conflict_avoidance/com/google/common/Clock;Ljava/lang/String;Ljava/lang/String;S)V

    #@b
    .line 115
    return-void
.end method

.method private addSample(I)V
    .locals 4
    .param p1, "msec"    # I

    #@0
    .prologue
    .line 149
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->last:I

    #@2
    .line 150
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    #@4
    int-to-long v2, p1

    #@5
    add-long/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    #@8
    .line 151
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    #@e
    .line 152
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    #@10
    if-gt v0, p1, :cond_1

    #@12
    .line 155
    :goto_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->max:I

    #@14
    if-lt v0, p1, :cond_2

    #@16
    .line 158
    :goto_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->logStatus:Ljava/lang/String;

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 161
    :cond_0
    :goto_2
    return-void

    #@1b
    .line 153
    :cond_1
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    #@1d
    goto :goto_0

    #@1e
    .line 156
    :cond_2
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->max:I

    #@20
    goto :goto_1

    #@21
    .line 158
    :cond_3
    iget-short v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->eventType:S

    #@23
    const/4 v1, -0x1

    #@24
    if-eq v0, v1, :cond_0

    #@26
    .line 159
    iget-short v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->eventType:S

    #@28
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->logStatus:Ljava/lang/String;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, ""

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@41
    goto :goto_2
.end method

.method private getCurrentTime()J
    .locals 2

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method


# virtual methods
.method public getAverage()I
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 170
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    #@3
    if-gtz v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    #@8
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    #@a
    int-to-long v2, v2

    #@b
    add-long/2addr v0, v2

    #@c
    const-wide/16 v2, 0x1

    #@e
    sub-long/2addr v0, v2

    #@f
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    #@11
    int-to-long v2, v2

    #@12
    div-long/2addr v0, v2

    #@13
    long-to-int v0, v0

    #@14
    goto :goto_0
.end method

.method public getLast()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->last:I

    #@2
    return v0
.end method

.method public getMax()I
    .locals 1

    #@0
    .prologue
    .line 180
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->max:I

    #@2
    return v0
.end method

.method public getMin()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 175
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    #@3
    if-gtz v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    #@8
    goto :goto_0
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getCurrentTime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    #@6
    .line 129
    return-void
.end method

.method public stop()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 133
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    #@4
    cmp-long v0, v0, v4

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 134
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getCurrentTime()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    #@e
    sub-long/2addr v0, v2

    #@f
    long-to-int v0, v0

    #@10
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->addSample(I)V

    #@13
    .line 135
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    #@15
    .line 137
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 197
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->name:Ljava/lang/String;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 201
    :goto_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getMin()I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@10
    const-string/jumbo v1, ","

    #@13
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 203
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getAverage()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    const-string/jumbo v1, ","

    #@20
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 205
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getMax()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    const-string/jumbo v1, ":"

    #@2d
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 207
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getLast()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@37
    const-string/jumbo v1, ":"

    #@3a
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 209
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    #@3f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@42
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 198
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->name:Ljava/lang/String;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    const-string/jumbo v1, ":"

    #@4f
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    goto :goto_0
.end method
