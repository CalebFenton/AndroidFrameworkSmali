.class final Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;
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
    name = "OnReadCompletedRunnable"
.end annotation


# instance fields
.field blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field blacklist mEndOfStream:Z

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 212
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 213
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "maybeOnSucceeded":Z
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmNativeStreamLock(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_55

    .line 216
    :try_start_d
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 217
    monitor-exit v2

    return-void

    .line 219
    :cond_17
    iget-boolean v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->mEndOfStream:Z

    if-eqz v3, :cond_30

    .line 220
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmReadState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V

    .line 221
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmWriteState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    move v1, v3

    .end local v1    # "maybeOnSucceeded":Z
    .local v3, "maybeOnSucceeded":Z
    goto :goto_36

    .line 223
    .end local v3    # "maybeOnSucceeded":Z
    .restart local v1    # "maybeOnSucceeded":Z
    :cond_30
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmReadState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V

    .line 225
    :goto_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_52

    .line 226
    :try_start_37
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->mEndOfStream:Z

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onReadCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 228
    if-eqz v1, :cond_51

    .line 229
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$mmaybeOnSucceededOnExecutor(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_51} :catch_55

    .line 233
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "maybeOnSucceeded":Z
    :cond_51
    goto :goto_5b

    .line 225
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "maybeOnSucceeded":Z
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;
    :try_start_54
    throw v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_55

    .line 231
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "maybeOnSucceeded":Z
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;
    :catch_55
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    return-void
.end method
