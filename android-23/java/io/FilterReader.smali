.class public abstract Ljava/io/FilterReader;
.super Ljava/io/Reader;
.source "FilterReader.java"


# instance fields
.field protected in:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@3
    .line 45
    iput-object p1, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    .line 43
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
    .line 56
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 57
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 55
    return-void

    #@a
    .line 56
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 80
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@6
    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a
    monitor-exit p0

    #@b
    .line 78
    return-void

    #@c
    .line 79
    :catchall_0
    move-exception v0

    #@d
    :try_start_3
    monitor-exit v1

    #@e
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@f
    :catchall_1
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public markSupported()Z
    .locals 2

    #@0
    .prologue
    .line 96
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 97
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 96
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 114
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0}, Ljava/io/Reader;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 113
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public read([CII)I
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
    .line 129
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 130
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 129
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 148
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 147
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 168
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 166
    return-void

    #@a
    .line 167
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 188
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-wide v2

    #@9
    monitor-exit v1

    #@a
    return-wide v2

    #@b
    .line 187
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
