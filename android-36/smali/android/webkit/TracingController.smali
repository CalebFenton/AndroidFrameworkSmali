.class public abstract Landroid/webkit/TracingController;
.super Ljava/lang/Object;
.source "TracingController.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/webkit/TracingController;
    .registers 1

    .line 63
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getTracingController()Landroid/webkit/TracingController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist isTracing()Z
.end method

.method public abstract whitelist start(Landroid/webkit/TracingConfig;)V
.end method

.method public abstract whitelist stop(Ljava/io/OutputStream;Ljava/util/concurrent/Executor;)Z
.end method
