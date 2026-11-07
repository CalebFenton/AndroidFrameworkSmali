.class public final Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;
.super Ljava/lang/Object;
.source "LocalNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/LocalNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

.field private blacklist mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

.field private blacklist mUpstreamSelector:Landroid/net/NetworkRequest;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .registers 6

    .line 180
    new-instance v0, Landroid/net/connectivity/android/net/LocalNetworkConfig;

    iget-object v1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->mUpstreamSelector:Landroid/net/NetworkRequest;

    iget-object v2, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    iget-object v3, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/connectivity/android/net/LocalNetworkConfig;-><init>(Landroid/net/NetworkRequest;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/LocalNetworkConfig-IA;)V

    return-object v0
.end method

.method public blacklist setDownstreamMulticastRoutingConfig(Landroid/net/connectivity/android/net/MulticastRoutingConfig;)Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;
    .registers 2
    .param p1, "cfg"    # Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 171
    iput-object p1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 172
    return-object p0
.end method

.method public blacklist setUpstreamMulticastRoutingConfig(Landroid/net/connectivity/android/net/MulticastRoutingConfig;)Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;
    .registers 2
    .param p1, "cfg"    # Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 159
    iput-object p1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 160
    return-object p0
.end method

.method public blacklist setUpstreamSelector(Landroid/net/NetworkRequest;)Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;
    .registers 2
    .param p1, "upstreamSelector"    # Landroid/net/NetworkRequest;

    .line 147
    iput-object p1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->mUpstreamSelector:Landroid/net/NetworkRequest;

    .line 148
    return-object p0
.end method
