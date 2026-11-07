.class public final Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;
.super Ljava/lang/Object;
.source "HotspotNetworkConnectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .registers 6

    .line 162
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mStatus:I

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 151
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    .line 152
    return-object p0
.end method

.method public whitelist setHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;
    .registers 2
    .param p1, "hotspotNetwork"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 140
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 141
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 129
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;->mStatus:I

    .line 130
    return-object p0
.end method
