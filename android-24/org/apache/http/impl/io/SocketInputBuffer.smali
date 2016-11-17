.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    #@3
    .line 66
    if-nez p1, :cond_0

    #@5
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Socket may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 69
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@10
    .line 75
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x2000

    #@16
    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    #@19
    .line 64
    return-void
.end method


# virtual methods
.method public isDataAvailable(I)Z
    .locals 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    #@3
    move-result v2

    #@4
    .line 81
    .local v2, "result":Z
    if-nez v2, :cond_0

    #@6
    .line 82
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@8
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    #@b
    move-result v1

    #@c
    .line 84
    .local v1, "oldtimeout":I
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@e
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@11
    .line 85
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    #@14
    .line 86
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v2

    #@18
    .line 92
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@1a
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@1d
    .line 95
    .end local v1    # "oldtimeout":I
    :cond_0
    :goto_0
    return v2

    #@1e
    .line 87
    .restart local v1    # "oldtimeout":I
    :catch_0
    move-exception v0

    #@1f
    .line 88
    .local v0, "e":Ljava/io/InterruptedIOException;
    :try_start_1
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    #@21
    if-nez v3, :cond_1

    #@23
    .line 89
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 91
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v3

    #@25
    .line 92
    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@27
    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@2a
    .line 91
    throw v3

    #@2b
    .line 92
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@2d
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@30
    goto :goto_0
.end method

.method public isStale()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 106
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 107
    return v4

    #@9
    .line 109
    :cond_0
    iget-object v5, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@b
    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I

    #@e
    move-result v2

    #@f
    .line 111
    .local v2, "oldTimeout":I
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@11
    const/4 v6, 0x1

    #@12
    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    #@15
    .line 112
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v5

    #@19
    const/4 v6, -0x1

    #@1a
    if-ne v5, v6, :cond_1

    #@1c
    .line 118
    :goto_0
    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@1e
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@21
    .line 112
    return v3

    #@22
    :cond_1
    move v3, v4

    #@23
    goto :goto_0

    #@24
    .line 115
    :catch_0
    move-exception v0

    #@25
    .line 118
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@27
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@2a
    .line 116
    return v3

    #@2b
    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@2c
    .line 118
    .local v1, "e":Ljava/net/SocketTimeoutException;
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@2e
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@31
    .line 114
    return v4

    #@32
    .line 117
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v3

    #@33
    .line 118
    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    #@35
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@38
    .line 117
    throw v3
.end method
