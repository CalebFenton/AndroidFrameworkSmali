.class public abstract Lcom/android/internal/infra/RemoteStream;
.super Lcom/android/internal/infra/AndroidFuture;
.source "RemoteStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RES:",
        "Ljava/lang/Object;",
        "IOSTREAM::",
        "Ljava/io/Closeable;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TRES;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final blacklist mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mLocalPipe:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V
    .registers 9
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .local p1, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p2, "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TIOSTREAM;TRES;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    .line 192
    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 193
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    aget-object v3, v0, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_38

    .line 194
    .local v3, "remotePipe":Landroid/os/ParcelFileDescriptor;
    :try_start_12
    invoke-interface {p1, v3}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2c

    .line 196
    if-eqz v3, :cond_1a

    :try_start_17
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 198
    .end local v3    # "remotePipe":Landroid/os/ParcelFileDescriptor;
    :cond_1a
    if-eqz p4, :cond_1d

    move v1, v2

    :cond_1d
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    .line 199
    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/infra/RemoteStream;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_38

    .line 206
    goto :goto_3c

    .line 193
    .restart local v3    # "remotePipe":Landroid/os/ParcelFileDescriptor;
    :catchall_2c
    move-exception v1

    if-eqz v3, :cond_37

    :try_start_2f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    :try_start_34
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .end local p1    # "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .end local p2    # "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TIOSTREAM;TRES;>;"
    .end local p3    # "backgroundExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "read":Z
    :cond_37
    :goto_37
    throw v1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    .line 203
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "remotePipe":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .restart local p1    # "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .restart local p2    # "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TIOSTREAM;TRES;>;"
    .restart local p3    # "backgroundExecutor":Ljava/util/concurrent/Executor;
    .restart local p4    # "read":Z
    :catchall_38
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 207
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3c
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;ZLcom/android/internal/infra/RemoteStream-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/infra/RemoteStream;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$sendBytes$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/io/OutputStream;)Ljava/lang/Void;
    .registers 3
    .param p0, "write"    # Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$sendBytes$1([BLjava/io/OutputStream;)Ljava/lang/Void;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 128
    .local v1, "buffer":[B
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 129
    .local v2, "numRead":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 130
    nop

    .line 134
    .end local v2    # "numRead":I
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 132
    .restart local v2    # "numRead":I
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 133
    .end local v2    # "numRead":I
    goto :goto_9
.end method

.method public static blacklist receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "[B>;"
        }
    .end annotation

    .line 115
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/InputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 98
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p1, "read":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/InputStream;TR;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$1;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$1;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 164
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p1, "write":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Ljava/io/OutputStream;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/OutputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 149
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p1, "write":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/OutputStream;TR;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$2;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$2;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;[B)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 176
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")TIOSTREAM;"
        }
    .end annotation
.end method

.method protected blacklist onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRES;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .local p1, "res":Ljava/lang/Object;, "TRES;"
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 213
    .local p0, "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_21

    .line 214
    .local v0, "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    invoke-interface {v1, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/RemoteStream;->complete(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 215
    if-eqz v0, :cond_14

    :try_start_11
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_21

    .line 217
    .end local v0    # "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    :cond_14
    goto :goto_25

    .line 213
    .restart local v0    # "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    :cond_20
    :goto_20
    throw v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    .line 215
    .end local v0    # "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    .restart local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    :catchall_21
    move-exception v0

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_25
    return-void
.end method
