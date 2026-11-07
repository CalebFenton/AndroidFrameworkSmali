.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;
.super Ljava/lang/Object;
.source "KnownNetworkConnectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .registers 6

    .line 119
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mStatus:I

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 108
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    .line 109
    return-object p0
.end method

.method public whitelist setKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;
    .registers 2
    .param p1, "knownNetwork"    # Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 97
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 98
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 86
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;->mStatus:I

    .line 87
    return-object p0
.end method
