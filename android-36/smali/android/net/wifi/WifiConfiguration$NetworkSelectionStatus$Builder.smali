.class public final Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2766
    new-instance v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .registers 3

    .line 2802
    new-instance v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    .line 2803
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    .line 2804
    return-object v0
.end method

.method public whitelist setNetworkSelectionDisableReason(I)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;
    .registers 3
    .param p1, "reason"    # I

    .line 2793
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 2794
    return-object p0
.end method

.method public whitelist setNetworkSelectionStatus(I)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;
    .registers 3
    .param p1, "status"    # I

    .line 2779
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 2780
    return-object p0
.end method
