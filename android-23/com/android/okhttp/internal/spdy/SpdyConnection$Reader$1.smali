.class Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

.field final synthetic val$newStream:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$newStream"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@0
    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    #@2
    iput-object p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@4
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    #@0
    .prologue
    .line 645
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    #@2
    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get2(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@a
    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;->receive(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 643
    :goto_0
    return-void

    #@e
    .line 646
    :catch_0
    move-exception v0

    #@f
    .line 648
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@11
    sget-object v3, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@13
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@16
    goto :goto_0

    #@17
    .line 649
    :catch_1
    move-exception v1

    #@18
    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
