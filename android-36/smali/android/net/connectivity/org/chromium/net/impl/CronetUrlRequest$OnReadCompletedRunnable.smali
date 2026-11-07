.class final Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnReadCompletedRunnable"
.end annotation


# instance fields
.field blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 142
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 144
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 145
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 148
    :try_start_a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmUrlRequestAdapterLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_37

    .line 149
    :try_start_11
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 150
    monitor-exit v1

    return-void

    .line 152
    :cond_1b
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fputmWaitingOnRead(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V

    .line 153
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_34

    .line 154
    :try_start_22
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onReadCompleted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_37

    .line 157
    goto :goto_3d

    .line 153
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;
    :try_start_36
    throw v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_37} :catch_37

    .line 155
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;
    :catch_37
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method
