.class Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "CronetFixedModeOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadDataProviderImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)V

    return-void
.end method


# virtual methods
.method public blacklist getLength()J
    .registers 3

    .line 173
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmContentLength(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 178
    nop

    .line 179
    const-string v0, "CronetFixedModeOutputStream.UploadDataProviderImpl#read"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 181
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_37

    .line 182
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 185
    invoke-virtual {p1, v3}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 187
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->quit()V

    goto :goto_6e

    .line 189
    :cond_37
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 190
    .local v1, "oldLimit":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 191
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 192
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {p1, v3}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_74

    .line 195
    .end local v1    # "oldLimit":I
    :goto_6e
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 196
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_73
    return-void

    .line 178
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_74
    move-exception v1

    if-eqz v0, :cond_7f

    :try_start_77
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7f
    :goto_7f
    throw v1
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 5
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    .line 200
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed Http body"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    .line 202
    return-void
.end method
