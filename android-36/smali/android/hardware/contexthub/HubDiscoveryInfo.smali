.class public Landroid/hardware/contexthub/HubDiscoveryInfo;
.super Ljava/lang/Object;
.source "HubDiscoveryInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mServiceInfo:Landroid/hardware/contexthub/HubServiceInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 3
    .param p1, "endpointInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/hardware/contexthub/HubDiscoveryInfo;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contexthub/HubDiscoveryInfo;->mServiceInfo:Landroid/hardware/contexthub/HubServiceInfo;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubServiceInfo;)V
    .registers 3
    .param p1, "endpointInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceInfo"    # Landroid/hardware/contexthub/HubServiceInfo;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/hardware/contexthub/HubDiscoveryInfo;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 56
    iput-object p2, p0, Landroid/hardware/contexthub/HubDiscoveryInfo;->mServiceInfo:Landroid/hardware/contexthub/HubServiceInfo;

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist getHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/hardware/contexthub/HubDiscoveryInfo;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object v0
.end method

.method public whitelist getHubServiceInfo()Landroid/hardware/contexthub/HubServiceInfo;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/hardware/contexthub/HubDiscoveryInfo;->mServiceInfo:Landroid/hardware/contexthub/HubServiceInfo;

    return-object v0
.end method
