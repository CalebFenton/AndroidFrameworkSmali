.class public interface abstract Landroid/webkit/PacProcessor;
.super Ljava/lang/Object;
.source "PacProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public static whitelist createInstance()Landroid/webkit/PacProcessor;
    .registers 1

    .line 57
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->createPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance()Landroid/webkit/PacProcessor;
    .registers 1

    .line 43
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist findProxyForUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setProxyScript(Ljava/lang/String;)Z
.end method
