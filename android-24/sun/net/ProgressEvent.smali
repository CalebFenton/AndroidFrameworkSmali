.class public Lsun/net/ProgressEvent;
.super Ljava/util/EventObject;
.source "ProgressEvent.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private expected:J

.field private method:Ljava/lang/String;

.field private progress:J

.field private state:Lsun/net/ProgressSource$State;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V
    .locals 0
    .param p1, "source"    # Lsun/net/ProgressSource;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "state"    # Lsun/net/ProgressSource$State;
    .param p6, "progress"    # J
    .param p8, "expected"    # J

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 55
    iput-object p2, p0, Lsun/net/ProgressEvent;->url:Ljava/net/URL;

    #@5
    .line 56
    iput-object p3, p0, Lsun/net/ProgressEvent;->method:Ljava/lang/String;

    #@7
    .line 57
    iput-object p4, p0, Lsun/net/ProgressEvent;->contentType:Ljava/lang/String;

    #@9
    .line 58
    iput-wide p6, p0, Lsun/net/ProgressEvent;->progress:J

    #@b
    .line 59
    iput-wide p8, p0, Lsun/net/ProgressEvent;->expected:J

    #@d
    .line 60
    iput-object p5, p0, Lsun/net/ProgressEvent;->state:Lsun/net/ProgressSource$State;

    #@f
    .line 53
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lsun/net/ProgressEvent;->contentType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExpected()J
    .locals 2

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Lsun/net/ProgressEvent;->expected:J

    #@2
    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lsun/net/ProgressEvent;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProgress()J
    .locals 2

    #@0
    .prologue
    .line 92
    iget-wide v0, p0, Lsun/net/ProgressEvent;->progress:J

    #@2
    return-wide v0
.end method

.method public getState()Lsun/net/ProgressSource$State;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lsun/net/ProgressEvent;->state:Lsun/net/ProgressSource$State;

    #@2
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lsun/net/ProgressEvent;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 110
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
    iget-object v1, p0, Lsun/net/ProgressEvent;->url:Ljava/net/URL;

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
    iget-object v1, p0, Lsun/net/ProgressEvent;->method:Ljava/lang/String;

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
    iget-object v1, p0, Lsun/net/ProgressEvent;->state:Lsun/net/ProgressSource$State;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 111
    const-string/jumbo v1, ", content-type="

    #@3b
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 111
    iget-object v1, p0, Lsun/net/ProgressEvent;->contentType:Ljava/lang/String;

    #@41
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 111
    const-string/jumbo v1, ", progress="

    #@48
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 111
    iget-wide v2, p0, Lsun/net/ProgressEvent;->progress:J

    #@4e
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 111
    const-string/jumbo v1, ", expected="

    #@55
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 111
    iget-wide v2, p0, Lsun/net/ProgressEvent;->expected:J

    #@5b
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 111
    const-string/jumbo v1, "]"

    #@62
    .line 110
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
