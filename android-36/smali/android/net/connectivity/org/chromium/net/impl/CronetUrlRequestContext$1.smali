.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

.field final synthetic blacklist val$cronetInitializedInfoLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
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

    .line 309
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->val$cronetInitializedInfoLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 312
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->-$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_7
    const-string v1, "CronetUrlRequestContext#CronetUrlRequestContext initializing request context"

    .line 314
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_3c

    .line 320
    .local v1, "requestContextTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_d
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->-$$Nest$fgetmUrlRequestContextAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 321
    invoke-interface {v2, v3, v4, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->initRequestContextOnInitThread(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_30

    .line 324
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 325
    .end local v1    # "requestContextTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_3c

    .line 327
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->val$cronetInitializedInfoLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;

    if-eqz v0, :cond_2f

    .line 350
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;->val$cronetInitializedInfoLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;

    .line 351
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->getCronetInitializedInfo()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->onInitThreadDone(Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;)V

    .line 353
    :cond_2f
    return-void

    .line 313
    .restart local v1    # "requestContextTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    :try_start_38
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;
    :cond_3b
    :goto_3b
    throw v2

    .line 325
    .end local v1    # "requestContextTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw v1
.end method
