.class Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "CronetBufferedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadDataProviderImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)V

    return-void
.end method


# virtual methods
.method public blacklist getLength()J
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmInitialContentLength(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 161
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmConnected(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_26

    :cond_1c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_26
    int-to-long v0, v0

    return-wide v0

    .line 163
    :cond_28
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmInitialContentLength(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 168
    nop

    .line 169
    const-string v0, "CronetBufferedOutputStream.UploadDataProviderImpl#read"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 171
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 172
    .local v1, "availableSpace":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 173
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 174
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4c

    .line 176
    :cond_43
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 178
    :goto_4c
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_56

    .line 179
    .end local v1    # "availableSpace":I
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 180
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_55
    return-void

    .line 168
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_56
    move-exception v1

    if-eqz v0, :cond_61

    :try_start_59
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    throw v1
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 5
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    .line 184
    nop

    .line 185
    const-string v0, "CronetBufferedOutputStream.UploadDataProviderImpl#rewind"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 187
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->-$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindSucceeded()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1a

    .line 189
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 190
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_19
    return-void

    .line 184
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_1a
    move-exception v1

    if-eqz v0, :cond_25

    :try_start_1d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v1
.end method
