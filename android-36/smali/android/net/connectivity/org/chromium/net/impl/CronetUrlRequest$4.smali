.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onResponseStarted(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
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

    .line 683
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 686
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 687
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmUrlRequestAdapterLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 688
    :try_start_c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 689
    monitor-exit v0

    return-void

    .line 691
    :cond_16
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fputmWaitingOnRead(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V

    .line 692
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_36

    .line 695
    :try_start_1d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onResponseStarted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_2f

    .line 698
    goto :goto_35

    .line 696
    :catch_2f
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    .line 699
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void

    .line 692
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method
