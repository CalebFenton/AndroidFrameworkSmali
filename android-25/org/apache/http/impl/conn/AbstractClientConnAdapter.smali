.class public abstract Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile aborted:Z

.field private volatile connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private volatile duration:J

.field private final executionThread:Ljava/lang/Thread;

.field private volatile markedReusable:Z

.field private volatile wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/OperatedClientConnection;)V
    .locals 2
    .param p1, "mgr"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->executionThread:Ljava/lang/Thread;

    #@a
    .line 122
    iput-object p1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@c
    .line 123
    iput-object p2, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;

    #@e
    .line 124
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    #@10
    .line 125
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    #@12
    .line 126
    const-wide v0, 0x7fffffffffffffffL

    #@17
    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    #@19
    .line 119
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 3

    #@0
    .prologue
    .line 377
    iget-boolean v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 378
    return-void

    #@5
    .line 380
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    #@8
    .line 381
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    #@b
    .line 383
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 399
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->executionThread:Ljava/lang/Thread;

    #@10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 400
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->releaseConnection()V

    #@1d
    .line 376
    :cond_1
    return-void

    #@1e
    .line 384
    :catch_0
    move-exception v0

    #@1f
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected final assertNotAborted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 155
    new-instance v0, Ljava/io/InterruptedIOException;

    #@6
    const-string/jumbo v1, "Connection has been shut down."

    #@9
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 153
    :cond_0
    return-void
.end method

.method protected final assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V
    .locals 2
    .param p1, "wrappedConn"    # Lorg/apache/http/conn/OperatedClientConnection;

    #@0
    .prologue
    .line 167
    if-nez p1, :cond_0

    #@2
    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4
    const-string/jumbo v1, "No wrapped connection."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 166
    :cond_0
    return-void
.end method

.method protected detach()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 135
    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    .line 136
    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@5
    .line 137
    const-wide v0, 0x7fffffffffffffffL

    #@a
    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    #@c
    .line 134
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    #@3
    .line 223
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6
    move-result-object v0

    #@7
    .line 224
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@a
    .line 226
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->flush()V

    #@d
    .line 220
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 297
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 298
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getLocalPort()I
    .locals 2

    #@0
    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 304
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 305
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalPort()I

    #@a
    move-result v1

    #@b
    return v1
.end method

.method protected getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@2
    return-object v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 2

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 214
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 312
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 313
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getRemotePort()I
    .locals 2

    #@0
    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 319
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 320
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemotePort()I

    #@a
    move-result v1

    #@b
    return v1
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    #@0
    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 333
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 334
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 335
    const/4 v3, 0x0

    #@e
    return-object v3

    #@f
    .line 337
    :cond_0
    const/4 v1, 0x0

    #@10
    .line 338
    .local v1, "result":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    #@13
    move-result-object v2

    #@14
    .line 339
    .local v2, "sock":Ljava/net/Socket;
    instance-of v3, v2, Ljavax/net/ssl/SSLSocket;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 340
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    #@1a
    .end local v2    # "sock":Ljava/net/Socket;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@1d
    move-result-object v1

    #@1e
    .line 342
    .end local v1    # "result":Ljavax/net/ssl/SSLSession;
    :cond_1
    return-object v1
.end method

.method public getSocketTimeout()I
    .locals 2

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 205
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 206
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocketTimeout()I

    #@a
    move-result v1

    #@b
    return v1
.end method

.method protected getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;

    #@2
    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    #@0
    .prologue
    .line 357
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    #@2
    return v0
.end method

.method public isOpen()Z
    .locals 2

    #@0
    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-nez v0, :cond_0

    #@6
    .line 176
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 178
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public isResponseAvailable(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    #@3
    .line 235
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6
    move-result-object v0

    #@7
    .line 236
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@a
    .line 238
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isSecure()Z
    .locals 2

    #@0
    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 326
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 327
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    #@a
    move-result v1

    #@b
    return v1
.end method

.method public isStale()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 184
    iget-boolean v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 185
    return v2

    #@6
    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@9
    move-result-object v0

    #@a
    .line 187
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-nez v0, :cond_1

    #@c
    .line 188
    return v2

    #@d
    .line 190
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isStale()Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public markReusable()V
    .locals 1

    #@0
    .prologue
    .line 347
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    #@3
    .line 346
    return-void
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    #@3
    .line 247
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6
    move-result-object v0

    #@7
    .line 248
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@a
    .line 250
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    #@d
    .line 251
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    #@10
    .line 244
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    #@3
    .line 260
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6
    move-result-object v0

    #@7
    .line 261
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@a
    .line 263
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    #@d
    .line 264
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public releaseConnection()V
    .locals 4

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 371
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@6
    iget-wide v2, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    #@8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@a
    invoke-interface {v0, p0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    #@d
    .line 369
    :cond_0
    return-void
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    #@3
    .line 273
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6
    move-result-object v0

    #@7
    .line 274
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@a
    .line 276
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    #@d
    .line 277
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@10
    .line 270
    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    #@3
    .line 286
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@6
    move-result-object v0

    #@7
    .line 287
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@a
    .line 289
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    #@d
    .line 290
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    #@10
    .line 283
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 361
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 362
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    #@c
    .line 360
    :goto_0
    return-void

    #@d
    .line 364
    :cond_0
    const-wide/16 v0, -0x1

    #@f
    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    #@11
    goto :goto_0
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@3
    move-result-object v0

    #@4
    .line 197
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    #@7
    .line 198
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->setSocketTimeout(I)V

    #@a
    .line 195
    return-void
.end method

.method public unmarkReusable()V
    .locals 1

    #@0
    .prologue
    .line 352
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    #@3
    .line 351
    return-void
.end method
