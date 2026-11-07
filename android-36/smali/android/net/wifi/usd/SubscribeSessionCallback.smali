.class public Landroid/net/wifi/usd/SubscribeSessionCallback;
.super Landroid/net/wifi/usd/SessionCallback;
.source "SubscribeSessionCallback.java"


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
.method public whitelist onServiceDiscovered(Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 2
    .param p1, "discoveryResult"    # Landroid/net/wifi/usd/DiscoveryResult;

    .line 60
    return-void
.end method

.method public whitelist onSubscribeFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 43
    return-void
.end method

.method public whitelist onSubscribeStarted(Landroid/net/wifi/usd/SubscribeSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/wifi/usd/SubscribeSession;

    .line 51
    return-void
.end method
