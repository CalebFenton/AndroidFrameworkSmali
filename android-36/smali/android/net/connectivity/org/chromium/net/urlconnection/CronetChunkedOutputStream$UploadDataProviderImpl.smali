.class Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "CronetChunkedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadDataProviderImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)V

    return-void
.end method


# virtual methods
.method public blacklist getLength()J
    .registers 3

    .line 99
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 104
    nop

    .line 105
    const-string v0, "CronetChunkedOutputStream.UploadDataProviderImpl#read"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 107
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_44

    .line 108
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmLastChunk(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 111
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmLastChunk(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 113
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->quit()V

    goto :goto_7c

    .line 116
    :cond_44
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 117
    .local v1, "oldLimit":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 119
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V
    :try_end_7c
    .catchall {:try_start_7 .. :try_end_7c} :catchall_82

    .line 122
    .end local v1    # "oldLimit":I
    :cond_7c
    :goto_7c
    if-eqz v0, :cond_81

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 123
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_81
    return-void

    .line 104
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_82
    move-exception v1

    if-eqz v0, :cond_8d

    :try_start_85
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8d
    :goto_8d
    throw v1
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 5
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    .line 127
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed Http body"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    .line 129
    return-void
.end method
