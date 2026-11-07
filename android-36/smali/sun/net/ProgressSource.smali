.class public Lsun/net/ProgressSource;
.super Ljava/lang/Object;
.source "ProgressSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ProgressSource$State;
    }
.end annotation


# instance fields
.field private blacklist connected:Z

.field private blacklist contentType:Ljava/lang/String;

.field private blacklist expected:J

.field private blacklist lastProgress:J

.field private blacklist method:Ljava/lang/String;

.field private blacklist progress:J

.field private blacklist progressMonitor:Lsun/net/ProgressMonitor;

.field private blacklist state:Lsun/net/ProgressSource$State;

.field private blacklist threshold:I

.field private blacklist url:Ljava/net/URL;


# direct methods
.method public constructor blacklist <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .line 63
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Ljava/lang/String;J)V
    .registers 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "expected"    # J

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    .line 47
    iput-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    .line 49
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lsun/net/ProgressSource;->expected:J

    .line 53
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/net/ProgressSource;->connected:Z

    .line 55
    const/16 v2, 0x2000

    iput v2, p0, Lsun/net/ProgressSource;->threshold:I

    .line 70
    iput-object p1, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    .line 71
    iput-object p2, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    .line 72
    const-string v2, "content/unknown"

    iput-object v2, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    .line 73
    iput-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    .line 74
    iput-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    .line 75
    iput-wide p3, p0, Lsun/net/ProgressSource;->expected:J

    .line 76
    sget-object v0, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    .line 77
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    .line 78
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0}, Lsun/net/ProgressMonitor;->getProgressUpdateThreshold()I

    move-result v0

    iput v0, p0, Lsun/net/ProgressSource;->threshold:I

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist beginTracking()V
    .registers 2

    .line 148
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->registerSource(Lsun/net/ProgressSource;)V

    .line 149
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist close()V
    .registers 2

    .line 94
    sget-object v0, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    .line 95
    return-void
.end method

.method public blacklist connected()Z
    .registers 3

    .line 82
    iget-boolean v0, p0, Lsun/net/ProgressSource;->connected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 83
    iput-boolean v1, p0, Lsun/net/ProgressSource;->connected:Z

    .line 84
    sget-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_d
    return v1
.end method

.method public blacklist finishTracking()V
    .registers 2

    .line 155
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->unregisterSource(Lsun/net/ProgressSource;)V

    .line 156
    return-void
.end method

.method public blacklist getContentType()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExpected()J
    .registers 3

    .line 134
    iget-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    return-wide v0
.end method

.method public blacklist getMethod()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProgress()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    return-wide v0
.end method

.method public blacklist getState()Lsun/net/ProgressSource$State;
    .registers 2

    .line 141
    iget-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    return-object v0
.end method

.method public blacklist getURL()Ljava/net/URL;
    .registers 2

    .line 101
    iget-object v0, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    return-object v0
.end method

.method public blacklist setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "ct"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content-type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lsun/net/ProgressSource;->progress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lsun/net/ProgressSource;->expected:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateProgress(JJ)V
    .registers 11
    .param p1, "latestProgress"    # J
    .param p3, "expectedProgress"    # J

    .line 162
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    iput-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    .line 163
    iput-wide p1, p0, Lsun/net/ProgressSource;->progress:J

    .line 164
    iput-wide p3, p0, Lsun/net/ProgressSource;->expected:J

    .line 166
    invoke-virtual {p0}, Lsun/net/ProgressSource;->connected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 167
    sget-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    goto :goto_17

    .line 169
    :cond_13
    sget-object v0, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    .line 191
    :goto_17
    iget-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    iget v2, p0, Lsun/net/ProgressSource;->threshold:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    iget v4, p0, Lsun/net/ProgressSource;->threshold:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    .line 192
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->updateProgress(Lsun/net/ProgressSource;)V

    .line 196
    :cond_2c
    iget-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_47

    .line 197
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    iget-wide v2, p0, Lsun/net/ProgressSource;->expected:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_47

    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_47

    .line 198
    invoke-virtual {p0}, Lsun/net/ProgressSource;->close()V

    .line 200
    :cond_47
    return-void
.end method
