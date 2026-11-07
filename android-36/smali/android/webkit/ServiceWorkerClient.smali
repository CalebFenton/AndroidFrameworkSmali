.class public Landroid/webkit/ServiceWorkerClient;
.super Ljava/lang/Object;
.source "ServiceWorkerClient.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
