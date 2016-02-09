.class public abstract Ljava/io/FilterWriter;
.super Ljava/io/Writer;
.source "FilterWriter.java"


# instance fields
.field protected out:Ljava/io/Writer;


# direct methods
.method protected constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 46
    iput-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 58
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 56
    return-void

    #@a
    .line 57
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 72
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 70
    return-void

    #@a
    .line 71
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 108
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 106
    return-void

    #@a
    .line 107
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 129
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 127
    return-void

    #@a
    .line 128
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public write([CII)V
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 92
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 90
    return-void

    #@a
    .line 91
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
