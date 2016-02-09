.class public Lorg/apache/http/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected attemptReuse:Z

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ManagedClientConnection;Z)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "reuse"    # Z

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    if-nez p1, :cond_0

    #@5
    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 75
    const-string/jumbo v1, "Connection may not be null."

    #@a
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 77
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@10
    .line 78
    iput-boolean p2, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    #@12
    .line 72
    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 90
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@7
    .line 91
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@9
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@e
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    #@11
    .line 96
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 93
    :catchall_0
    move-exception v0

    #@14
    .line 94
    iget-object v1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@16
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    #@19
    .line 93
    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@2
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V

    #@5
    .line 123
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 108
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@7
    .line 109
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@9
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@e
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    #@11
    .line 114
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 111
    :catchall_0
    move-exception v0

    #@14
    .line 112
    iget-object v1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@16
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    #@19
    .line 111
    throw v0
.end method
