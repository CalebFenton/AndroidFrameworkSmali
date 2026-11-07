.class Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
.super Lcom/android/okhttp/okio/AsyncTimeout;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exitAndThrowIfTimedOut()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected blacklist newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    .line 607
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 609
    invoke-virtual {p0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object p0
.end method

.method protected blacklist timedOut()V
    .registers 2

    .line 603
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method
