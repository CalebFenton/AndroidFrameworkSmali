.class Llibcore/net/url/FtpURLInputStream;
.super Ljava/io/InputStream;
.source "FtpURLInputStream.java"


# instance fields
.field private controlSocket:Ljava/net/Socket;

.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "controlSocket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@5
    .line 37
    iput-object p2, p0, Llibcore/net/url/FtpURLInputStream;->controlSocket:Ljava/net/Socket;

    #@7
    .line 35
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5
    .line 68
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->controlSocket:Ljava/net/Socket;

    #@7
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    #@a
    .line 66
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "limit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 57
    :try_start_0
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@3
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 56
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 52
    :try_start_0
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@3
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 51
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Llibcore/net/url/FtpURLInputStream;->is:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
