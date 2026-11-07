.class public abstract Landroid/webkit/WebViewRenderProcessClient;
.super Ljava/lang/Object;
.source "WebViewRenderProcessClient.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
.end method

.method public abstract whitelist onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
.end method
