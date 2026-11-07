.class Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 762
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 766
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onCanceled(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 769
    goto :goto_1a

    .line 767
    :catch_12
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    const-string v2, "onCanceled"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$monFinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 770
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$fgetmInflightDoneCallbackCount(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 771
    return-void
.end method
