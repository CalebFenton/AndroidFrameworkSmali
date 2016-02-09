.class Lcom/android/okhttp/internal/spdy/SpdyConnection$6;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$buffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$streamId"    # I
    .param p5, "val$buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p6, "val$byteCount"    # I
    .param p7, "val$inFinished"    # Z

    #@0
    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    iput p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    #@4
    iput-object p5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$buffer:Lcom/android/okhttp/okio/Buffer;

    #@6
    iput p6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$byteCount:I

    #@8
    iput-boolean p7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$inFinished:Z

    #@a
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@d
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    #@0
    .prologue
    .line 854
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get6(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/PushObserver;

    #@5
    move-result-object v2

    #@6
    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    #@8
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$buffer:Lcom/android/okhttp/okio/Buffer;

    #@a
    iget v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$byteCount:I

    #@c
    iget-boolean v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$inFinished:Z

    #@e
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/okhttp/internal/spdy/PushObserver;->onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z

    #@11
    move-result v0

    #@12
    .line 855
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    #@14
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@16
    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@18
    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    #@1a
    sget-object v4, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@1c
    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@1f
    .line 856
    :cond_0
    if-nez v0, :cond_1

    #@21
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$inFinished:Z

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 857
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@27
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 858
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2a
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get0(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;

    #@2d
    move-result-object v2

    #@2e
    iget v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    #@30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v4

    #@34
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    :try_start_2
    monitor-exit v3

    #@38
    .line 852
    .end local v0    # "cancel":Z
    :cond_2
    :goto_0
    return-void

    #@39
    .line 857
    .restart local v0    # "cancel":Z
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@3c
    .line 861
    .end local v0    # "cancel":Z
    :catch_0
    move-exception v1

    #@3d
    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
