.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onSucceeded(J)V
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

    .line 751
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 754
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmUrlRequestAdapterLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 755
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 756
    monitor-exit v0

    return-void

    .line 760
    :cond_11
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$mdestroyRequestAdapterLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;I)V

    .line 761
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_38

    .line 763
    :try_start_18
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onSucceeded(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_29} :catch_2a

    .line 766
    goto :goto_32

    .line 764
    :catch_2a
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    const-string v2, "onSucceeded"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$monFinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 767
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$mmaybeReportMetrics(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 768
    return-void

    .line 761
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method
