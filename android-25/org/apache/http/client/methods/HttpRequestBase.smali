.class public abstract Lorg/apache/http/client/methods/HttpRequestBase;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "HttpRequestBase.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;
.implements Lorg/apache/http/client/methods/AbortableHttpRequest;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private abortLock:Ljava/util/concurrent/locks/Lock;

.field private aborted:Z

.field private connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

.field private releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    #@3
    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@a
    .line 75
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 5

    #@0
    .prologue
    .line 142
    iget-object v3, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 144
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 152
    iget-object v3, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@b
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@e
    .line 145
    return-void

    #@f
    .line 147
    :cond_0
    const/4 v3, 0x1

    #@10
    :try_start_1
    iput-boolean v3, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    #@12
    .line 149
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    #@14
    .line 150
    .local v1, "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 152
    .local v2, "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    iget-object v3, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@18
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1b
    .line 159
    if-eqz v1, :cond_1

    #@1d
    .line 160
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionRequest;->abortRequest()V

    #@20
    .line 162
    :cond_1
    if-eqz v2, :cond_2

    #@22
    .line 164
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@25
    .line 138
    :cond_2
    :goto_0
    return-void

    #@26
    .line 151
    .end local v1    # "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v2    # "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :catchall_0
    move-exception v3

    #@27
    .line 152
    iget-object v4, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@29
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2c
    .line 151
    throw v3

    #@2d
    .line 165
    .restart local v1    # "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v2    # "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :catch_0
    move-exception v0

    #@2e
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 177
    invoke-super {p0}, Lorg/apache/http/message/AbstractHttpMessage;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    #@7
    .line 178
    .local v0, "clone":Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@9
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@c
    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@e
    .line 179
    const/4 v1, 0x0

    #@f
    iput-boolean v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    #@11
    .line 180
    iput-object v2, v0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

    #@13
    .line 181
    iput-object v2, v0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    #@15
    .line 182
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->headergroup:Lorg/apache/http/message/HeaderGroup;

    #@17
    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lorg/apache/http/message/HeaderGroup;

    #@1d
    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->headergroup:Lorg/apache/http/message/HeaderGroup;

    #@1f
    .line 183
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->params:Lorg/apache/http/params/HttpParams;

    #@21
    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lorg/apache/http/params/HttpParams;

    #@27
    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->params:Lorg/apache/http/params/HttpParams;

    #@29
    .line 184
    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 5

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 92
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@7
    move-result-object v3

    #@8
    .line 93
    .local v3, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    #@b
    move-result-object v1

    #@c
    .line 94
    .local v1, "uri":Ljava/net/URI;
    const/4 v2, 0x0

    #@d
    .line 95
    .local v2, "uritext":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@f
    .line 96
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 98
    .end local v2    # "uritext":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 99
    :cond_1
    const-string/jumbo v2, "/"

    #@1e
    .line 101
    :cond_2
    new-instance v4, Lorg/apache/http/message/BasicRequestLine;

    #@20
    invoke-direct {v4, v0, v2, v3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@23
    return-object v4
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    #@2
    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    #@0
    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    #@2
    return v0
.end method

.method public setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .locals 2
    .param p1, "connRequest"    # Lorg/apache/http/conn/ClientConnectionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 112
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 113
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Request already aborted"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 118
    :catchall_0
    move-exception v0

    #@13
    .line 119
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@18
    .line 118
    throw v0

    #@19
    .line 116
    :cond_0
    const/4 v0, 0x0

    #@1a
    :try_start_1
    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

    #@1c
    .line 117
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 119
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@23
    .line 109
    return-void
.end method

.method public setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    .locals 2
    .param p1, "releaseTrigger"    # Lorg/apache/http/conn/ConnectionReleaseTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 127
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 128
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Request already aborted"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 133
    :catchall_0
    move-exception v0

    #@13
    .line 134
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@18
    .line 133
    throw v0

    #@19
    .line 131
    :cond_0
    const/4 v0, 0x0

    #@1a
    :try_start_1
    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    #@1c
    .line 132
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 134
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    #@20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@23
    .line 124
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    #@2
    .line 104
    return-void
.end method
