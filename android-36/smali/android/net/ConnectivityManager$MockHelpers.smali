.class public Landroid/net/ConnectivityManager$MockHelpers;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockHelpers"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist registerNetworkAgentResult(Landroid/net/Network;Landroid/net/INetworkAgentRegistry;)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    .registers 3
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "registry"    # Landroid/net/INetworkAgentRegistry;

    .line 1260
    new-instance v0, Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;-><init>()V

    .line 1262
    .local v0, "result":Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    iput-object p0, v0, Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;->network:Landroid/net/Network;

    .line 1263
    iput-object p1, v0, Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;->registry:Landroid/net/INetworkAgentRegistry;

    .line 1264
    return-object v0
.end method
