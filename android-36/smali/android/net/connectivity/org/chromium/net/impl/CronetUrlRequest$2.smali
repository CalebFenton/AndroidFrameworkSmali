.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$2;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->getStatus(Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
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

    .line 408
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$2;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 411
    nop

    .line 412
    const-string v0, "CronetUrlRequest#getStatus running callback"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 414
    .local v0, "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$2;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->onStatus(I)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_13

    .line 415
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 416
    .end local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_12
    return-void

    .line 411
    .restart local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_13
    move-exception v1

    if-eqz v0, :cond_1e

    :try_start_16
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw v1
.end method
