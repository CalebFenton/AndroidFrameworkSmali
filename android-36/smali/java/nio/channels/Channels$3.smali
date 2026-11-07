.class Ljava/nio/channels/Channels$3;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist b1:[B

.field private blacklist bb:Ljava/nio/ByteBuffer;

.field private blacklist bs:[B

.field final synthetic blacklist val$ch:Ljava/nio/channels/AsynchronousByteChannel;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/AsynchronousByteChannel;)V
    .registers 2

    .line 276
    iput-object p1, p0, Ljava/nio/channels/Channels$3;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/AsynchronousByteChannel;->close()V

    .line 328
    return-void
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    if-nez v0, :cond_a

    .line 285
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    .line 286
    .end local p0    # "this":Ljava/nio/channels/Channels$3;
    :cond_a
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 287
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$3;->write([B)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 288
    monitor-exit p0

    return-void

    .line 283
    .end local p1    # "b":I
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 9
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 294
    if-ltz p2, :cond_6c

    :try_start_3
    array-length v0, p1

    if-gt p2, v0, :cond_6c

    if-ltz p3, :cond_6c

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_72

    if-gt v0, v1, :cond_6c

    add-int v0, p2, p3

    if-ltz v0, :cond_6c

    .line 297
    if-nez p3, :cond_15

    .line 298
    monitor-exit p0

    return-void

    .line 300
    :cond_15
    :try_start_15
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->bs:[B

    if-ne v0, p1, :cond_1c

    .line 301
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->bb:Ljava/nio/ByteBuffer;

    goto :goto_20

    .line 302
    .end local p0    # "this":Ljava/nio/channels/Channels$3;
    :cond_1c
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_20
    nop

    .line 303
    .local v0, "bb":Ljava/nio/ByteBuffer;
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 304
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    iput-object v0, p0, Ljava/nio/channels/Channels$3;->bb:Ljava/nio/ByteBuffer;

    .line 306
    iput-object p1, p0, Ljava/nio/channels/Channels$3;->bs:[B
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_72

    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, "interrupted":Z
    :goto_36
    :try_start_36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_61

    if-lez v2, :cond_56

    .line 312
    :try_start_3c
    iget-object v2, p0, Ljava/nio/channels/Channels$3;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v2, v0}, Ljava/nio/channels/AsynchronousByteChannel;->write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_45
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3c .. :try_end_45} :catch_4b
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_45} :catch_48
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    goto :goto_4a

    .line 320
    :catchall_46
    move-exception v2

    goto :goto_62

    .line 315
    :catch_48
    move-exception v2

    .line 316
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 317
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_4a
    goto :goto_36

    .line 313
    :catch_4b
    move-exception v2

    .line 314
    .local v2, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_4c
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "interrupted":Z
    .end local p1    # "bs":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v3
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_61

    .line 320
    .end local v2    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "interrupted":Z
    .restart local p0    # "this":Ljava/nio/channels/Channels$3;
    .restart local p1    # "bs":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_56
    if-eqz v1, :cond_5f

    .line 321
    :try_start_58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_72

    .line 323
    .end local p0    # "this":Ljava/nio/channels/Channels$3;
    :cond_5f
    monitor-exit p0

    return-void

    .line 320
    .restart local p0    # "this":Ljava/nio/channels/Channels$3;
    :catchall_61
    move-exception v2

    :goto_62
    if-eqz v1, :cond_6b

    .line 321
    :try_start_64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 322
    .end local p0    # "this":Ljava/nio/channels/Channels$3;
    :cond_6b
    throw v2

    .line 296
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "interrupted":Z
    :cond_6c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 293
    .end local p1    # "bs":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_72
    move-exception p1

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_72

    throw p1
.end method
