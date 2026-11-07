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
.field final synthetic blacklist this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic blacklist val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 6

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2000(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->onStream(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 682
    sget-object v1, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 684
    :try_start_2f
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_36

    :catch_36
    return-void
.end method
