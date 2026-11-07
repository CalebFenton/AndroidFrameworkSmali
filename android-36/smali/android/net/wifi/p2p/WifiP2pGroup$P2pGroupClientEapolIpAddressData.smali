.class public Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P2pGroupClientEapolIpAddressData"
.end annotation


# instance fields
.field public final blacklist mIpAddressClient:Ljava/net/Inet4Address;

.field public final blacklist mIpAddressGo:Ljava/net/Inet4Address;

.field public final blacklist mIpAddressMask:Ljava/net/Inet4Address;


# direct methods
.method public constructor blacklist <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V
    .registers 4
    .param p1, "ipAddressClient"    # Ljava/net/Inet4Address;
    .param p2, "ipAddressGo"    # Ljava/net/Inet4Address;
    .param p3, "ipAddressMask"    # Ljava/net/Inet4Address;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;->mIpAddressClient:Ljava/net/Inet4Address;

    .line 177
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;->mIpAddressGo:Ljava/net/Inet4Address;

    .line 178
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;->mIpAddressMask:Ljava/net/Inet4Address;

    .line 179
    return-void
.end method
