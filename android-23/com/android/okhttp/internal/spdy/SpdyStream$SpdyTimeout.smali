.class Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
.super Lcom/android/okhttp/okio/AsyncTimeout;
.source "SpdyStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpdyTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@0
    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-direct {p0}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exit()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 612
    :cond_0
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 605
    new-instance v0, Ljava/net/SocketTimeoutException;

    #@2
    const-string/jumbo v1, "timeout"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    #@8
    .line 606
    .local v0, "socketTimeoutException":Ljava/net/SocketTimeoutException;
    if-eqz p1, :cond_0

    #@a
    .line 607
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@d
    .line 609
    :cond_0
    return-object v0
.end method

.method protected timedOut()V
    .locals 2

    #@0
    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@7
    .line 600
    return-void
.end method
