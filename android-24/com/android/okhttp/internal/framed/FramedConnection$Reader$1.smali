.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$newStream"    # Lcom/android/okhttp/internal/framed/FramedStream;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    #@2
    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    #@4
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    #@0
    .prologue
    .line 648
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    #@2
    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/IncomingStreamHandler;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    #@a
    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/framed/IncomingStreamHandler;->receive(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 646
    :goto_0
    return-void

    #@e
    .line 649
    :catch_0
    move-exception v0

    #@f
    .line 650
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    #@11
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "StreamHandler failure for "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    #@21
    iget-object v5, v5, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@23
    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get3(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    .line 652
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    #@34
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@36
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@39
    goto :goto_0

    #@3a
    .line 653
    :catch_1
    move-exception v1

    #@3b
    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
