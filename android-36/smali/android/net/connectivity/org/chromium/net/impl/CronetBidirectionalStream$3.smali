.class Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onResponseTrailersReceived([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

.field final synthetic blacklist val$trailersBlock:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V
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

    .line 709
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->val$trailersBlock:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 712
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmNativeStreamLock(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 713
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 714
    monitor-exit v0

    return-void

    .line 716
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2d

    .line 718
    :try_start_12
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->val$trailersBlock:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onResponseTrailersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_26

    .line 722
    goto :goto_2c

    .line 720
    :catch_26
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void

    .line 716
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method
