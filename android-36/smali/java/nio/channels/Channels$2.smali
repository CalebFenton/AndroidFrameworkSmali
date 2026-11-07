.class Ljava/nio/channels/Channels$2;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/InputStream;
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

    .line 201
    iput-object p1, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

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

    .line 255
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/AsynchronousByteChannel;->close()V

    .line 256
    return-void
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->b1:[B

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 210
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$2;->b1:[B

    .line 211
    .end local p0    # "this":Ljava/nio/channels/Channels$2;
    :cond_a
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->b1:[B

    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$2;->read([B)I

    move-result v0

    .line 212
    .local v0, "n":I
    if-ne v0, v1, :cond_1b

    .line 213
    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .line 214
    :cond_1b
    monitor-exit p0

    const/4 v1, -0x1

    return v1

    .line 208
    .end local v0    # "n":I
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
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

    .line 221
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

    .line 224
    if-nez p3, :cond_16

    .line 225
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_16
    :try_start_16
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->bs:[B

    if-ne v0, p1, :cond_1d

    .line 229
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    goto :goto_21

    .line 230
    .end local p0    # "this":Ljava/nio/channels/Channels$2;
    :cond_1d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_21
    nop

    .line 231
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    .line 234
    iput-object p1, p0, Ljava/nio/channels/Channels$2;->bs:[B
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_72

    .line 236
    const/4 v1, 0x0

    .line 240
    .local v1, "interrupted":Z
    :goto_37
    :try_start_37
    iget-object v2, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v2, v0}, Ljava/nio/channels/AsynchronousByteChannel;->read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_47
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_37 .. :try_end_47} :catch_57
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_47} :catch_54
    .catchall {:try_start_37 .. :try_end_47} :catchall_52

    .line 248
    if-eqz v1, :cond_50

    .line 249
    :try_start_49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_72

    .line 240
    :cond_50
    monitor-exit p0

    return v2

    .line 248
    .restart local p0    # "this":Ljava/nio/channels/Channels$2;
    :catchall_52
    move-exception v2

    goto :goto_62

    .line 243
    :catch_54
    move-exception v2

    .line 244
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 245
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    goto :goto_37

    .line 241
    :catch_57
    move-exception v2

    .line 242
    .local v2, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_58
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "interrupted":Z
    .end local p0    # "this":Ljava/nio/channels/Channels$2;
    .end local p1    # "bs":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v3
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_52

    .line 248
    .end local v2    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "interrupted":Z
    .restart local p0    # "this":Ljava/nio/channels/Channels$2;
    .restart local p1    # "bs":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :goto_62
    if-eqz v1, :cond_6b

    .line 249
    :try_start_64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 250
    .end local p0    # "this":Ljava/nio/channels/Channels$2;
    :cond_6b
    throw v2

    .line 223
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "interrupted":Z
    :cond_6c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 220
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
