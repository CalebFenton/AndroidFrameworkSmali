.class Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onStreamReady(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

.field final synthetic blacklist val$requestHeadersSent:Z


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 575
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iput-boolean p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->val$requestHeadersSent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 578
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmNativeStreamLock(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 579
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 580
    monitor-exit v0

    return-void

    .line 582
    :cond_11
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->val$requestHeadersSent:Z

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmRequestHeadersSent(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V

    .line 583
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmReadState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V

    .line 584
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmInitialMethod(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$smdoesMethodAllowWriteData(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmRequestHeadersSent(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 585
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmWriteState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V

    goto :goto_41

    .line 587
    :cond_3a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fputmWriteState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V

    .line 589
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_55

    .line 592
    :try_start_42
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onStreamReady(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4d} :catch_4e

    .line 595
    goto :goto_54

    .line 593
    :catch_4e
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    .line 596
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void

    .line 589
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method
