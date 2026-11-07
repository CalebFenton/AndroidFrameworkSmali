.class public Landroid/net/wifi/usd/PublishSessionCallback;
.super Landroid/net/wifi/usd/SessionCallback;
.source "PublishSessionCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/net/wifi/usd/SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPublishFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 43
    return-void
.end method

.method public whitelist onPublishReplied(Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 2
    .param p1, "discoveryResult"    # Landroid/net/wifi/usd/DiscoveryResult;

    .line 58
    return-void
.end method

.method public whitelist onPublishStarted(Landroid/net/wifi/usd/PublishSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/wifi/usd/PublishSession;

    .line 51
    return-void
.end method
