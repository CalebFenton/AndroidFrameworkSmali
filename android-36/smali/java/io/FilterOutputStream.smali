.class public Ljava/io/FilterOutputStream;
.super Ljava/io/OutputStream;
.source "FilterOutputStream.java"


# instance fields
.field private final blacklist closeLock:Ljava/lang/Object;

.field private volatile blacklist closed:Z

.field protected whitelist test-api out:Ljava/io/OutputStream;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 69
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FilterOutputStream;->closeLock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Ljava/io/FilterOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 171
    return-void

    .line 173
    :cond_5
    iget-object v0, p0, Ljava/io/FilterOutputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_8
    iget-boolean v1, p0, Ljava/io/FilterOutputStream;->closed:Z

    if-eqz v1, :cond_e

    .line 175
    monitor-exit v0

    return-void

    .line 177
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/FilterOutputStream;->closed:Z

    .line 178
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_50

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "flushException":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_2d

    .line 187
    if-nez v0, :cond_1e

    .line 188
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_24

    .line 191
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    .line 205
    nop

    .line 208
    :goto_24
    return-void

    .line 192
    :catchall_25
    move-exception v1

    .line 194
    .local v1, "closeException":Ljava/lang/Throwable;
    nop

    .line 200
    if-eq v0, v1, :cond_2c

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 204
    :cond_2c
    throw v1

    .line 183
    .end local v1    # "closeException":Ljava/lang/Throwable;
    :catchall_2d
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 185
    nop

    .end local v0    # "flushException":Ljava/lang/Throwable;
    .end local p0    # "this":Ljava/io/FilterOutputStream;
    :try_start_30
    throw v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 187
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "flushException":Ljava/lang/Throwable;
    .restart local p0    # "this":Ljava/io/FilterOutputStream;
    :catchall_31
    move-exception v1

    .line 191
    :try_start_32
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_39

    .line 205
    nop

    .line 207
    throw v1

    .line 192
    :catchall_39
    move-exception v1

    .line 194
    .local v1, "closeException":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_4a

    instance-of v2, v1, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_43

    goto :goto_4a

    .line 196
    :cond_43
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 197
    move-object v2, v0

    check-cast v2, Ljava/lang/ThreadDeath;

    throw v2

    .line 200
    :cond_4a
    :goto_4a
    if-eq v0, v1, :cond_4f

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 204
    :cond_4f
    throw v1

    .line 178
    .end local v0    # "flushException":Ljava/lang/Throwable;
    .end local v1    # "closeException":Ljava/lang/Throwable;
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 154
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 88
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 109
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p3, p2

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int v1, p2, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, p3, :cond_19

    .line 137
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 139
    .end local v0    # "i":I
    :cond_19
    return-void

    .line 134
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
