.class public final Landroid/net/wifi/WifiInfo$Builder;
.super Ljava/lang/Object;
.source "WifiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 773
    new-instance v0, Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    return-object v0
.end method

.method public blacklist enableApTidToLinkMappingNegotiationSupport(Z)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .line 764
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->enableApTidToLinkMappingNegotiationSupport(Z)V

    .line 765
    return-object p0
.end method

.method public blacklist setAffiliatedMloLinks(Ljava/util/List;)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;)",
            "Landroid/net/wifi/WifiInfo$Builder;"
        }
    .end annotation

    .line 712
    .local p1, "links":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/MloLink;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setAffiliatedMloLinks(Ljava/util/List;)V

    .line 713
    return-object p0
.end method

.method public blacklist setApMldMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "address"    # Landroid/net/MacAddress;

    .line 691
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setApMldMacAddress(Landroid/net/MacAddress;)V

    .line 692
    return-object p0
.end method

.method public blacklist setApMloLinkId(I)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "linkId"    # I

    .line 701
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setApMloLinkId(I)V

    .line 702
    return-object p0
.end method

.method public whitelist setBssid(Ljava/lang/String;)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;

    .line 680
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 681
    return-object p0
.end method

.method public whitelist setCurrentSecurityType(I)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "securityType"    # I

    .line 753
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setCurrentSecurityType(I)V

    .line 754
    return-object p0
.end method

.method public whitelist setNetworkId(I)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "networkId"    # I

    .line 732
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 733
    return-object p0
.end method

.method public whitelist setRssi(I)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "rssi"    # I

    .line 722
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 723
    return-object p0
.end method

.method public whitelist setSsid([B)Landroid/net/wifi/WifiInfo$Builder;
    .registers 4
    .param p1, "ssid"    # [B

    .line 670
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 671
    return-object p0
.end method

.method public whitelist setSubscriptionId(I)Landroid/net/wifi/WifiInfo$Builder;
    .registers 3
    .param p1, "subId"    # I

    .line 743
    iget-object v0, p0, Landroid/net/wifi/WifiInfo$Builder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSubscriptionId(I)V

    .line 744
    return-object p0
.end method
