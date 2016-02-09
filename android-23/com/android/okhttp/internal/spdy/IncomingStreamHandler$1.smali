.class final Lcom/android/okhttp/internal/spdy/IncomingStreamHandler$1;
.super Ljava/lang/Object;
.source "IncomingStreamHandler.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public receive(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 1
    .param p1, "stream"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@5
    .line 24
    return-void
.end method
