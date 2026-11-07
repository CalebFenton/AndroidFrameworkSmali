.class public Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;
.super Ljava/lang/Object;
.source "IkeNattKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeepaliveConfig"
.end annotation


# instance fields
.field public final blacklist dest:Ljava/net/Inet4Address;

.field public final blacklist ikeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

.field public final blacklist ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

.field public final blacklist network:Landroid/net/Network;

.field public final blacklist socket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

.field public final blacklist src:Ljava/net/Inet4Address;

.field public final blacklist underpinnedNetwork:Landroid/net/Network;


# direct methods
.method public constructor blacklist <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/Network;Landroid/net/Network;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Landroid/net/ipsec/ike/IkeSessionParams;)V
    .registers 8
    .param p1, "src"    # Ljava/net/Inet4Address;
    .param p2, "dest"    # Ljava/net/Inet4Address;
    .param p3, "socket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "underpinnedNetwork"    # Landroid/net/Network;
    .param p6, "ikeAlarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .param p7, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->src:Ljava/net/Inet4Address;

    .line 110
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->dest:Ljava/net/Inet4Address;

    .line 111
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->socket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 112
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->network:Landroid/net/Network;

    .line 113
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->underpinnedNetwork:Landroid/net/Network;

    .line 114
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 115
    iput-object p7, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 116
    return-void
.end method
