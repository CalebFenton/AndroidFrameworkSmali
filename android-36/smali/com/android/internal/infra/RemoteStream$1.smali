.class Lcom/android/internal/infra/RemoteStream$1;
.super Lcom/android/internal/infra/RemoteStream;
.source "RemoteStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/RemoteStream<",
        "TR;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V
    .registers 11
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "read"    # Z

    .line 99
    .local p1, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p2, "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/InputStream;TR;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .end local p2    # "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/InputStream;TR;>;"
    .end local p3    # "backgroundExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "read":Z
    .local v1, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local v2, "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/InputStream;TR;>;"
    .local v3, "backgroundExecutor":Ljava/util/concurrent/Executor;
    .local v4, "read":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/RemoteStream;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;ZLcom/android/internal/infra/RemoteStream-IA;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/RemoteStream$1;->createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/InputStream;
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 102
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method
