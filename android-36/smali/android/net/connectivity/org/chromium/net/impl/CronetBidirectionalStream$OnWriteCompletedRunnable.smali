.class final Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnWriteCompletedRunnable"
.end annotation


# instance fields
.field private blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mEndOfStream:Z

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V
    .registers 4
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 245
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mEndOfStream:Z

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 253
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "maybeOnSucceeded":Z
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmNativeStreamLock(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_4e

    .line 256
    :try_start_d
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 257
    monitor-exit v2

    return-void

    .line 259
    :cond_17
    iget-boolean v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mEndOfStream:Z

    if-eqz v3, :cond_2f

    .line 260
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmWriteState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V

    .line 261
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmReadState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    move v1, v3

    .line 263
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_4b

    .line 264
    :try_start_30
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mEndOfStream:Z

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onWriteCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 266
    if-eqz v1, :cond_4a

    .line 267
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$mmaybeOnSucceededOnExecutor(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4a} :catch_4e

    .line 271
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "maybeOnSucceeded":Z
    :cond_4a
    goto :goto_54

    .line 263
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "maybeOnSucceeded":Z
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;
    :try_start_4d
    throw v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 269
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "maybeOnSucceeded":Z
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;
    :catch_4e
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void
.end method
