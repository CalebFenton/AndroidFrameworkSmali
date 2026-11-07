.class public abstract Landroid/net/netstats/provider/NetworkStatsProvider;
.super Ljava/lang/Object;
.source "NetworkStatsProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist QUOTA_UNLIMITED:I = -0x1


# instance fields
.field private final blacklist mProviderBinder:Landroid/net/netstats/provider/INetworkStatsProvider;

.field private blacklist mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/net/netstats/provider/NetworkStatsProvider$1;

    invoke-direct {v0, p0}, Landroid/net/netstats/provider/NetworkStatsProvider$1;-><init>(Landroid/net/netstats/provider/NetworkStatsProvider;)V

    iput-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderBinder:Landroid/net/netstats/provider/INetworkStatsProvider;

    return-void
.end method


# virtual methods
.method public blacklist getProviderBinder()Landroid/net/netstats/provider/INetworkStatsProvider;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderBinder:Landroid/net/netstats/provider/INetworkStatsProvider;

    return-object v0
.end method

.method public blacklist getProviderCallbackBinder()Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    return-object v0
.end method

.method public blacklist getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    return-object v0

    .line 104
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the provider is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist notifyAlertReached()V
    .registers 2

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyAlertReached()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 145
    goto :goto_c

    .line 143
    :catch_8
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist notifyLimitReached()V
    .registers 2

    .line 167
    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyLimitReached()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 170
    goto :goto_c

    .line 168
    :catch_8
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "ifaceStats"    # Landroid/net/NetworkStats;
    .param p3, "uidStats"    # Landroid/net/NetworkStats;

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 134
    goto :goto_c

    .line 132
    :catch_8
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist notifyWarningReached()V
    .registers 2

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyWarningReached()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 158
    goto :goto_c

    .line 156
    :catch_8
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public abstract whitelist onRequestStatsUpdate(I)V
.end method

.method public abstract whitelist onSetAlert(J)V
.end method

.method public abstract whitelist onSetLimit(Ljava/lang/String;J)V
.end method

.method public whitelist onSetWarningAndLimit(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warningBytes"    # J
    .param p4, "limitBytes"    # J

    .line 219
    invoke-virtual {p0, p1, p4, p5}, Landroid/net/netstats/provider/NetworkStatsProvider;->onSetLimit(Ljava/lang/String;J)V

    .line 220
    return-void
.end method

.method public blacklist setProviderCallbackBinder(Landroid/net/netstats/provider/INetworkStatsProviderCallback;)V
    .registers 4
    .param p1, "binder"    # Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    .line 78
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    if-nez v0, :cond_7

    .line 81
    iput-object p1, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    .line 82
    return-void

    .line 79
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
