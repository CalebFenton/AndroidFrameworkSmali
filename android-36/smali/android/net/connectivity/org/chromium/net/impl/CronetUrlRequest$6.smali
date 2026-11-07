.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 818
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 822
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onCanceled(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 825
    goto :goto_1a

    .line 823
    :catch_12
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    const-string v2, "onCanceled"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$monFinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$mmaybeReportMetrics(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 827
    return-void
.end method
