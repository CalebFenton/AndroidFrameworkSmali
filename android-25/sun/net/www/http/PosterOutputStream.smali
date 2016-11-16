.class public Lsun/net/www/http/PosterOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PosterOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@5
    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
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
    .line 102
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z

    #@4
    .line 103
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 101
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 91
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 92
    return-void

    #@7
    .line 94
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 90
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "b"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 60
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 61
    return-void

    #@7
    .line 63
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 59
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 75
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 76
    return-void

    #@7
    .line 78
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 74
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
