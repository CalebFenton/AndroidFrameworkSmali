.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onRedirectReceived(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

.field final synthetic blacklist val$newLocation:Ljava/lang/String;

.field final synthetic blacklist val$responseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->val$responseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->val$newLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 640
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 641
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmUrlRequestAdapterLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 642
    :try_start_c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 643
    monitor-exit v0

    return-void

    .line 645
    :cond_16
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fputmWaitingOnRedirect(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V

    .line 646
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_34

    .line 649
    :try_start_1d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->val$responseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->val$newLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onRedirectReceived(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_2d

    .line 653
    goto :goto_33

    .line 651
    :catch_2d
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->-$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void

    .line 646
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method
