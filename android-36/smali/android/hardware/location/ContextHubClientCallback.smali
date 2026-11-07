.class public Landroid/hardware/location/ContextHubClientCallback;
.super Ljava/lang/Object;
.source "ContextHubClientCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClientAuthorizationChanged(Landroid/hardware/location/ContextHubClient;JI)V
    .registers 5
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "authorization"    # I

    .line 137
    return-void
.end method

.method public whitelist onHubReset(Landroid/hardware/location/ContextHubClient;)V
    .registers 2
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;

    .line 58
    return-void
.end method

.method public whitelist onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .registers 3
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 51
    return-void
.end method

.method public whitelist onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V
    .registers 5
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 67
    return-void
.end method

.method public whitelist onNanoAppDisabled(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 107
    return-void
.end method

.method public whitelist onNanoAppEnabled(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 98
    return-void
.end method

.method public whitelist onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 80
    return-void
.end method

.method public whitelist onNanoAppUnloaded(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 89
    return-void
.end method
