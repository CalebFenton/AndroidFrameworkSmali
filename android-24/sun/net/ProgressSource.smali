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
.field private connected:Z

.field private contentType:Ljava/lang/String;

.field private expected:J

.field private lastProgress:J

.field private method:Ljava/lang/String;

.field private progress:J

.field private progressMonitor:Lsun/net/ProgressMonitor;

.field private state:Lsun/net/ProgressSource$State;

.field private threshold:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    #@5
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "expected"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 45
    iput-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    #@7
    .line 47
    iput-wide v2, p0, Lsun/net/ProgressSource;->lastProgress:J

    #@9
    .line 49
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    #@d
    .line 53
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lsun/net/ProgressSource;->connected:Z

    #@10
    .line 55
    const/16 v0, 0x2000

    #@12
    iput v0, p0, Lsun/net/ProgressSource;->threshold:I

    #@14
    .line 70
    iput-object p1, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    #@16
    .line 71
    iput-object p2, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    #@18
    .line 72
    const-string/jumbo v0, "content/unknown"

    #@1b
    iput-object v0, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    #@1d
    .line 73
    iput-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    #@1f
    .line 74
    iput-wide v2, p0, Lsun/net/ProgressSource;->lastProgress:J

    #@21
    .line 75
    iput-wide p3, p0, Lsun/net/ProgressSource;->expected:J

    #@23
    .line 76
    sget-object v0, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    #@25
    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@27
    .line 77
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    #@2d
    .line 78
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    #@2f
    invoke-virtual {v0}, Lsun/net/ProgressMonitor;->getProgressUpdateThreshold()I

    #@32
    move-result v0

    #@33
    iput v0, p0, Lsun/net/ProgressSource;->threshold:I

    #@35
    .line 69
    return-void
.end method


# virtual methods
.method public beginTracking()V
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    #@2
    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->registerSource(Lsun/net/ProgressSource;)V

    #@5
    .line 147
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 94
    sget-object v0, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    #@2
    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@4
    .line 93
    return-void
.end method

.method public connected()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 82
    iget-boolean v0, p0, Lsun/net/ProgressSource;->connected:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 83
    iput-boolean v1, p0, Lsun/net/ProgressSource;->connected:Z

    #@7
    .line 84
    sget-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    #@9
    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@b
    .line 85
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 87
    :cond_0
    return v1
.end method

.method public finishTracking()V
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    #@2
    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->unregisterSource(Lsun/net/ProgressSource;)V

    #@5
    .line 154
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExpected()J
    .locals 2

    #@0
    .prologue
    .line 134
    iget-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    #@2
    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProgress()J
    .locals 2

    #@0
    .prologue
    .line 127
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    #@2
    return-wide v0
.end method

.method public getState()Lsun/net/ProgressSource$State;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@2
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "ct"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    #@2
    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[url="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ", method="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, ", state="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 208
    const-string/jumbo v1, ", content-type="

    #@3b
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 208
    iget-object v1, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    #@41
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 208
    const-string/jumbo v1, ", progress="

    #@48
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 208
    iget-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    #@4e
    .line 207
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 208
    const-string/jumbo v1, ", expected="

    #@55
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 208
    iget-wide v2, p0, Lsun/net/ProgressSource;->expected:J

    #@5b
    .line 207
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 208
    const-string/jumbo v1, "]"

    #@62
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    return-object v0
.end method

.method public updateProgress(JJ)V
    .locals 7
    .param p1, "latestProgress"    # J
    .param p3, "expectedProgress"    # J

    #@0
    .prologue
    .line 162
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    #@2
    iput-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    #@4
    .line 163
    iput-wide p1, p0, Lsun/net/ProgressSource;->progress:J

    #@6
    .line 164
    iput-wide p3, p0, Lsun/net/ProgressSource;->expected:J

    #@8
    .line 166
    invoke-virtual {p0}, Lsun/net/ProgressSource;->connected()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_2

    #@e
    .line 167
    sget-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    #@10
    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@12
    .line 191
    :goto_0
    iget-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    #@14
    iget v2, p0, Lsun/net/ProgressSource;->threshold:I

    #@16
    int-to-long v2, v2

    #@17
    div-long/2addr v0, v2

    #@18
    iget-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    #@1a
    iget v4, p0, Lsun/net/ProgressSource;->threshold:I

    #@1c
    int-to-long v4, v4

    #@1d
    div-long/2addr v2, v4

    #@1e
    cmp-long v0, v0, v2

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 192
    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    #@24
    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->updateProgress(Lsun/net/ProgressSource;)V

    #@27
    .line 196
    :cond_0
    iget-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    #@29
    const-wide/16 v2, -0x1

    #@2b
    cmp-long v0, v0, v2

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 197
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    #@31
    iget-wide v2, p0, Lsun/net/ProgressSource;->expected:J

    #@33
    cmp-long v0, v0, v2

    #@35
    if-ltz v0, :cond_1

    #@37
    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    #@39
    const-wide/16 v2, 0x0

    #@3b
    cmp-long v0, v0, v2

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 198
    invoke-virtual {p0}, Lsun/net/ProgressSource;->close()V

    #@42
    .line 161
    :cond_1
    return-void

    #@43
    .line 169
    :cond_2
    sget-object v0, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    #@45
    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    #@47
    goto :goto_0
.end method
