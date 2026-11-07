.class public Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
.super Ljava/lang/Object;
.source "IkeConnectionController.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;
.implements Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$NatStatus;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_KEEPALIVE_DELAY_SEC_CELL:I = 0x96

.field public static final blacklist AUTO_KEEPALIVE_DELAY_SEC_WIFI:I = 0xf

.field private static final blacklist MAX_DNS_RESOLUTION_ATTEMPTS:I = 0x3

.field public static final blacklist NAT_DETECTED:I = 0x3

.field public static final blacklist NAT_NOT_DETECTED:I = 0x2

.field private static final blacklist NAT_STATUS_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NAT_TRAVERSAL_SUPPORT_NOT_CHECKED:I = 0x0

.field public static final blacklist NAT_TRAVERSAL_UNSUPPORTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

.field private final blacklist mConfig:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

.field private final blacklist mDscp:I

.field private blacklist mEncapType:I

.field private final blacklist mForcePort4500:Z

.field private final blacklist mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

.field private final blacklist mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

.field private blacklist mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

.field private final blacklist mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

.field private final blacklist mIkeSaRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

.field private final blacklist mIpSecManager:Landroid/net/IpSecManager;

.field private blacklist mIpVersion:I

.field private blacklist mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

.field private blacklist mKeepaliveDelaySeconds:I

.field private blacklist mLocalAddress:Ljava/net/InetAddress;

.field private blacklist mMobilityEnabled:Z

.field private blacklist mNatStatus:I

.field private blacklist mNc:Landroid/net/NetworkCapabilities;

.field private blacklist mNetwork:Landroid/net/Network;

.field private blacklist mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

.field private blacklist mRemoteAddress:Ljava/net/InetAddress;

.field private final blacklist mRemoteAddressesV4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteAddressesV6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteHostname:Ljava/lang/String;

.field private blacklist mUnderpinnedNetwork:Landroid/net/Network;

.field private final blacklist mUseCallerConfiguredNetwork:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$CWahsPKzng0vIOyEP3AaSxwjT78(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/NetworkCapabilities;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onCapabilitiesUpdated$1(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ScLi5gOOqXv2eVDFpVFtFhhdNfs(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onUnderlyingNetworkUpdated$0(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aA_iIC2FQH2v3VEK85d5XXE9poU(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onIkePacketReceived$3(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fCuy_2LOXLbNXedLia_ZOv5llT0(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onUnderlyingNetworkDied$2()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 107
    const-class v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    .line 192
    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "NAT_TRAVERSAL_SUPPORT_NOT_CHECKED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "NAT_TRAVERSAL_UNSUPPORTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "NAT_NOT_DETECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "NAT_DETECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;)V
    .registers 4
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "config"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    .line 237
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;-><init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;)V

    .line 238
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;)V
    .registers 9
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "config"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;
    .param p3, "dependencies"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    .line 174
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    .line 203
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 204
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConfig:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    .line 205
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 206
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/IpSecManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecManager;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpSecManager:Landroid/net/IpSecManager;

    .line 207
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    .line 208
    invoke-virtual {p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeLocalAddressGenerator()Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    .line 209
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->callback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    .line 211
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 212
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    .line 213
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getServerHostname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    .line 214
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_6b

    :cond_6a
    move v1, v0

    :goto_6b
    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUseCallerConfiguredNetwork:Z

    .line 215
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getIpVersion()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    .line 216
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getEncapType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    .line 217
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    .line 218
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getDscp()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDscp:I

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    .line 221
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUseCallerConfiguredNetwork:Z

    if-eqz v1, :cond_9d

    .line 222
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    goto :goto_a9

    .line 224
    :cond_9d
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    .line 225
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_ca

    .line 230
    :goto_a9
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set up on Network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 233
    return-void

    .line 226
    :cond_ca
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No active default network found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist adjustIpVersionPreference()V
    .registers 6

    .line 1079
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    .line 1080
    .local v0, "adjustedIpVersion":I
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-nez v1, :cond_42

    .line 1081
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 1082
    const/4 v0, 0x6

    goto :goto_14

    .line 1083
    :cond_d
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_14

    .line 1084
    const/4 v0, 0x4

    .line 1087
    :cond_14
    :goto_14
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-eq v0, v1, :cond_42

    .line 1088
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP version preference is overridden from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    .line 1093
    :cond_42
    return-void
.end method

.method private static blacklist buildInitialKeepaliveAlarmConfig(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .registers 15
    .param p0, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p1, "config"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;
    .param p2, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;

    .line 398
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->alarmCmd:I

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeSessionId:I

    iget v3, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->sendKeepaliveCmd:I

    .line 399
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 403
    .local v10, "keepaliveMsg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeSessionId:I

    .line 404
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIntentIdentifier(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    const-string v2, "IkeAlarmReceiver.ACTION_KEEPALIVE"

    invoke-static {v0, v2, v1, v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 406
    .local v9, "keepaliveIntent":Landroid/app/PendingIntent;
    new-instance v4, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 409
    invoke-static {p0, p2, p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getKeepaliveDelaySec(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-string v6, "IkeAlarmReceiver.ACTION_KEEPALIVE"

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    .line 406
    return-object v4
.end method

.method private blacklist executeOrSendFatalError(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1136
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->executeOrSendFatalError(Ljava/lang/Runnable;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V

    .line 1137
    return-void
.end method

.method private blacklist getAndSwitchToIkeSocket(ZZ)V
    .registers 9
    .param p1, "isIpv4"    # Z
    .param p2, "useEncapPort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v0

    .line 488
    .local v0, "newSocket":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_30

    .line 491
    nop

    .line 493
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-eq v0, v1, :cond_2f

    .line 494
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 495
    .local v2, "saRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->migrateSpiToIkeSocket(JLcom/android/internal/net/ipsec/ike/IkeSocket;Lcom/android/internal/net/ipsec/ike/IkeSocket;)V

    .line 496
    .end local v2    # "saRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    goto :goto_12

    .line 497
    :cond_28
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    .line 498
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 500
    :cond_2f
    return-void

    .line 489
    :catch_30
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .registers 9
    .param p1, "isIpv4"    # Z
    .param p2, "useEncapPort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDscp:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;I)V

    .line 447
    .local v0, "sockConfig":Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    const/4 v1, 0x0

    .line 450
    .local v1, "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    if-eqz p2, :cond_34

    .line 451
    if-eqz p1, :cond_21

    .line 452
    :try_start_c
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpSecManager:Landroid/net/IpSecManager;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 453
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 452
    invoke-virtual {v2, v0, v3, p0, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .local v2, "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    goto :goto_5b

    .line 455
    .end local v2    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .restart local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    :cond_21
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 456
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 455
    invoke-virtual {v2, v0, p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdp6WithEncapPortSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .restart local v2    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    goto :goto_5b

    .line 459
    .end local v2    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .restart local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    :cond_34
    if-eqz p1, :cond_49

    .line 460
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 461
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 460
    invoke-virtual {v2, v0, p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdp4Socket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .restart local v2    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    goto :goto_5b

    .line 463
    .end local v2    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .restart local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    :cond_49
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 464
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 463
    invoke-virtual {v2, v0, p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdp6Socket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    move-result-object v2

    move-object v1, v2

    .line 468
    :goto_5b
    if-eqz v1, :cond_63

    .line 472
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->bindToNetwork(Landroid/net/Network;)V

    .line 473
    return-object v1

    .line 469
    :cond_63
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No socket created"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sockConfig":Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .end local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .end local p1    # "isIpv4":Z
    .end local p2    # "useEncapPort":Z
    throw v2
    :try_end_6b
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_6b} :catch_6b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6b} :catch_6b
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_c .. :try_end_6b} :catch_6b

    .line 474
    .restart local v0    # "sockConfig":Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .restart local v1    # "result":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .restart local p1    # "isIpv4":Z
    .restart local p2    # "useEncapPort":Z
    :catch_6b
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v3

    throw v3
.end method

.method private static blacklist getIntentIdentifier(I)Ljava/lang/String;
    .registers 3
    .param p0, "ikeSessionId"    # I

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getKeepaliveDelaySec(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)I
    .registers 8
    .param p0, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p1, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 370
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    move-result v0

    .line 372
    .local v0, "keepaliveDelaySeconds":I
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 373
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 377
    const/16 v1, 0xf

    .line 378
    .local v1, "autoDelaySeconds":I
    const/16 v2, 0xf

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 379
    .end local v1    # "autoDelaySeconds":I
    :cond_1a
    goto :goto_33

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 380
    nop

    .line 381
    const-string v1, "config_auto_natt_keepalives_cellular_timeout_override_seconds"

    const/16 v2, 0xa

    const/16 v3, 0xe10

    const/16 v4, 0x96

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getDeviceConfigPropertyInt(Ljava/lang/String;III)I

    move-result v1

    .line 386
    .restart local v1    # "autoDelaySeconds":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 390
    .end local v1    # "autoDelaySeconds":I
    :cond_33
    :goto_33
    return v0
.end method

.method private static blacklist getSupportedVersions(ZZ)Ljava/util/Set;
    .registers 4
    .param p0, "isV4Supported"    # Z
    .param p1, "isV6Supported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1142
    .local v0, "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_f

    .line 1143
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_f
    if-eqz p1, :cond_19

    .line 1146
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_19
    return-object v0
.end method

.method private blacklist handleUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Z)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "skipIfSameNetwork"    # Z

    .line 1222
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    if-nez v0, :cond_17

    .line 1223
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "onUnderlyingNetworkUpdated: Unable to handle network update"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onUnderlyingNetworkDied(Landroid/net/Network;)V

    .line 1226
    return-void

    .line 1229
    :cond_17
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    .line 1230
    .local v0, "oldNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    .line 1231
    .local v1, "oldLocalAddress":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1233
    .local v2, "oldRemoteAddress":Ljava/net/InetAddress;
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    .line 1234
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    .line 1237
    :try_start_21
    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    .line 1238
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getKeepaliveDelaySec(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    .line 1241
    :cond_32
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 1243
    .local v3, "keepaliveDelayMs":J
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-wide v5, v5, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4e

    .line 1244
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 1245
    invoke-virtual {v5, v3, v4}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->buildCopyWithDelayMs(J)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 1246
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->restartKeepaliveIfRunning()V
    :try_end_4e
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_21 .. :try_end_4e} :catch_15e

    .line 1251
    .end local v3    # "keepaliveDelayMs":J
    :cond_4e
    nop

    .line 1254
    invoke-static {p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->hasLocalIpV4Address(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_82

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v3

    if-nez v3, :cond_82

    .line 1255
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    .line 1257
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No local address on the Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1258
    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    .line 1256
    invoke-static {v4}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v4

    .line 1255
    invoke-interface {v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1260
    return-void

    .line 1264
    :cond_82
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    .line 1265
    .local v4, "info":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;
    iget-boolean v5, v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->isNat64Addr:Z

    if-eqz v5, :cond_9d

    .line 1266
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1268
    .end local v4    # "info":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;
    :cond_9d
    goto :goto_88

    .line 1270
    :cond_9e
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, v0, v3, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isDnsLookupRequiredWithGlobalRemoteAddress(Landroid/net/Network;Landroid/net/Network;Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1272
    :try_start_a6
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->resolveAndSetAvailableRemoteAddresses(Landroid/net/LinkProperties;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 1276
    goto :goto_b5

    .line 1273
    :catch_aa
    move-exception v3

    .line 1274
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1275
    return-void

    .line 1280
    .end local v3    # "e":Ljava/io/IOException;
    :cond_b5
    :goto_b5
    :try_start_b5
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->selectAndSetRemoteAddress(Landroid/net/LinkProperties;)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_153

    .line 1284
    nop

    .line 1286
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    .line 1290
    .local v3, "isIpv4":Z
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isNattSupported()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 1291
    const/16 v4, 0x1194

    goto :goto_c8

    .line 1292
    :cond_c6
    const/16 v4, 0x1f4

    :goto_c8
    nop

    .line 1295
    .local v4, "serverPort":I
    :try_start_c9
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1296
    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;->generateLocalAddress(Landroid/net/Network;ZLjava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    .line 1299
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->shouldSkipIfSameNetwork(Z)Z

    move-result v5

    if-eqz v5, :cond_103

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    .line 1300
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    .line 1301
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1302
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 1303
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "onUnderlyingNetworkUpdated: None of network, local or remote address has changed, and the update is skippable. No action needed here."

    .line 1304
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    return-void

    .line 1312
    :cond_103
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_120

    .line 1313
    iget-boolean v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    if-nez v5, :cond_118

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isNattSupported()Z

    move-result v5

    if-eqz v5, :cond_116

    goto :goto_118

    :cond_116
    const/4 v5, 0x0

    goto :goto_119

    :cond_118
    :goto_118
    const/4 v5, 0x1

    .line 1314
    .local v5, "useEncapPort":Z
    :goto_119
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v6, v6, Ljava/net/Inet4Address;

    invoke-direct {p0, v6, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getAndSwitchToIkeSocket(ZZ)V

    .line 1317
    .end local v5    # "useEncapPort":Z
    :cond_120
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_126
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1318
    .local v6, "record":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->migrate(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_139
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_c9 .. :try_end_139} :catch_148
    .catch Landroid/system/ErrnoException; {:try_start_c9 .. :try_end_139} :catch_148
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_139} :catch_148

    .line 1319
    .end local v6    # "record":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    goto :goto_126

    .line 1323
    :cond_13a
    nop

    .line 1325
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->setAddress(Ljava/net/InetAddress;)V

    .line 1327
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-interface {v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onUnderlyingNetworkUpdated()V

    .line 1328
    return-void

    .line 1320
    :catch_148
    move-exception v5

    .line 1321
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v5}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1322
    return-void

    .line 1281
    .end local v3    # "isIpv4":Z
    .end local v4    # "serverPort":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_153
    move-exception v3

    .line 1282
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1283
    return-void

    .line 1248
    .end local v3    # "e":Ljava/io/IOException;
    :catch_15e
    move-exception v3

    .line 1249
    .local v3, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1250
    return-void
.end method

.method private static blacklist hasLocalIpV4Address(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p0, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1012
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1013
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1e

    .line 1014
    const/4 v0, 0x1

    return v0

    .line 1016
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    :cond_1e
    goto :goto_8

    .line 1018
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isIpVersionRequired(I)Z
    .registers 3
    .param p1, "ipVersion"    # I

    .line 1096
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isNattSupported()Z
    .registers 3

    .line 1022
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private synthetic blacklist lambda$onCapabilitiesUpdated$1(Landroid/net/NetworkCapabilities;)V
    .registers 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1399
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    .line 1403
    return-void
.end method

.method private synthetic blacklist lambda$onIkePacketReceived$3(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .registers 4
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "ikePackets"    # [B

    .line 1418
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    .line 1419
    return-void
.end method

.method private synthetic blacklist lambda$onUnderlyingNetworkDied$2()V
    .registers 3

    .line 1410
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onUnderlyingNetworkDied(Landroid/net/Network;)V

    .line 1411
    return-void
.end method

.method private synthetic blacklist lambda$onUnderlyingNetworkUpdated$0(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1387
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Z)V

    .line 1392
    return-void
.end method

.method private blacklist migrateSpiToIkeSocket(JLcom/android/internal/net/ipsec/ike/IkeSocket;Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    .registers 5
    .param p1, "localSpi"    # J
    .param p3, "oldSocket"    # Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .param p4, "newSocket"    # Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 480
    invoke-virtual {p4, p1, p2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    .line 481
    invoke-virtual {p3, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    .line 482
    return-void
.end method

.method private blacklist printPortInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1366
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 1367
    .local v0, "socket":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    if-nez v0, :cond_31

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Local port: null socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote(server) port: null socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_85

    .line 1372
    :cond_31
    :try_start_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Local port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/system/ErrnoException; {:try_start_31 .. :try_end_4f} :catch_50

    .line 1375
    goto :goto_67

    .line 1373
    :catch_50
    move-exception v1

    .line 1374
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Local port: failed to get port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote(server) port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getIkeServerPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    :goto_85
    return-void
.end method

.method private blacklist resolveAndSetAvailableRemoteAddresses(Landroid/net/LinkProperties;)V
    .registers 13
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    const/4 v0, 0x0

    .line 956
    .local v0, "allRemoteAddresses":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 958
    .local v1, "attempts":I
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_53

    if-eqz v0, :cond_c

    array-length v5, v0

    if-nez v5, :cond_53

    .line 961
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_14
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_14} :catch_16

    .line 974
    .end local v0    # "allRemoteAddresses":[Ljava/net/InetAddress;
    .local v2, "allRemoteAddresses":[Ljava/net/InetAddress;
    move-object v0, v2

    goto :goto_50

    .line 962
    .end local v2    # "allRemoteAddresses":[Ljava/net/InetAddress;
    .restart local v0    # "allRemoteAddresses":[Ljava/net/InetAddress;
    :catch_16
    move-exception v5

    .line 963
    .local v5, "e":Ljava/net/UnknownHostException;
    add-int/lit8 v6, v1, 0x1

    if-ge v6, v3, :cond_1c

    move v2, v4

    .line 964
    .local v2, "willRetry":Z
    :cond_1c
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to look up host for attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retrying? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 965
    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 959
    .end local v2    # "willRetry":Z
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 976
    .end local v1    # "attempts":I
    :cond_53
    if-eqz v0, :cond_cd

    array-length v1, v0

    if-eqz v1, :cond_cd

    .line 987
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved addresses for peer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 991
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to replace old addresses: v4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " v6="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 988
    invoke-virtual {v1, v3, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 998
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 999
    array-length v1, v0

    move v3, v2

    :goto_9c
    if-ge v3, v1, :cond_cc

    aget-object v5, v0, v3

    .line 1000
    .local v5, "remoteAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_ad

    .line 1001
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Ljava/net/Inet4Address;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 1003
    :cond_ad
    move-object v6, v5

    check-cast v6, Ljava/net/Inet6Address;

    .line 1004
    .local v6, "address":Ljava/net/Inet6Address;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v7

    .line 1005
    .local v7, "ipPrefix":Landroid/net/IpPrefix;
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v9, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    if-eqz v7, :cond_c2

    .line 1006
    invoke-virtual {v7, v6}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v10

    if-eqz v10, :cond_c2

    move v10, v4

    goto :goto_c3

    :cond_c2
    move v10, v2

    :goto_c3
    invoke-direct {v9, v6, v10}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;-><init>(Ljava/net/Inet6Address;Z)V

    .line 1005
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    .end local v5    # "remoteAddress":Ljava/net/InetAddress;
    .end local v6    # "address":Ljava/net/Inet6Address;
    .end local v7    # "ipPrefix":Landroid/net/IpPrefix;
    :goto_c9
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 1009
    :cond_cc
    return-void

    .line 977
    :cond_cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS resolution for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "errMsg":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private blacklist restartKeepaliveIfRunning()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 722
    nop

    .line 723
    return-void

    .line 720
    :catch_7
    move-exception v0

    .line 721
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    .registers 11
    .param p1, "ikeSocket"    # Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    if-nez v0, :cond_11

    .line 421
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    if-eqz v0, :cond_10

    .line 422
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->stop()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    .line 425
    :cond_10
    return-void

    .line 428
    :cond_11
    new-instance v1, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    move-object v3, v0

    check-cast v3, Ljava/net/Inet4Address;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    .line 432
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->getUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/Network;Landroid/net/Network;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 438
    .local v1, "keepaliveConfig":Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    if-eqz v0, :cond_39

    .line 439
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->restart(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)V

    goto :goto_43

    .line 441
    :cond_39
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeNattKeepalive(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    .line 443
    :goto_43
    return-void
.end method

.method private blacklist unregisterResources()V
    .registers 7

    .line 572
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 573
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->stop()V

    .line 574
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    .line 577
    :cond_c
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    if-eqz v0, :cond_19

    .line 578
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 579
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    .line 582
    :cond_19
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-eqz v0, :cond_40

    .line 583
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 584
    .local v2, "saRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    .line 585
    .end local v2    # "saRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    goto :goto_23

    .line 587
    :cond_39
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    .line 588
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 591
    :cond_40
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 592
    return-void
.end method


# virtual methods
.method public blacklist addRemoteAddress(Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 791
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_d

    .line 792
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 794
    :cond_d
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    move-object v2, p1

    check-cast v2, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;-><init>(Ljava/net/Inet6Address;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    :goto_1b
    return-void
.end method

.method public blacklist addRemoteAddressV6(Ljava/net/Inet6Address;Z)V
    .registers 5
    .param p1, "address"    # Ljava/net/Inet6Address;
    .param p2, "isNat64Addr"    # Z

    .line 806
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;-><init>(Ljava/net/Inet6Address;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    return-void
.end method

.method public blacklist buildIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .registers 5

    .line 1128
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V

    return-object v0
.end method

.method public blacklist clearRemoteAddress()V
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 817
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 818
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1340
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    const-string v1, "IkeConnectionController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Nat status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Local address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote(Server) address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mobility status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->printPortInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Esp ip version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    .line 1349
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1348
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Esp encap type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    .line 1351
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1350
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1354
    return-void
.end method

.method public blacklist enableMobility()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    .line 1119
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isNattSupported()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 1120
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getIkeServerPort()I

    move-result v1

    const/16 v2, 0x1194

    if-eq v1, v2, :cond_1a

    .line 1121
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getAndSwitchToIkeSocket(ZZ)V

    .line 1124
    :cond_1a
    return-void
.end method

.method public blacklist fireKeepAlive()V
    .registers 2

    .line 946
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    if-eqz v0, :cond_9

    .line 947
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->onAlarmFired()V

    .line 949
    :cond_9
    return-void
.end method

.method public blacklist getAllRemoteIpv4Addresses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getAllRemoteIpv6Addresses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet6Address;>;"
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    .line 834
    .local v2, "info":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;
    iget-object v3, v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    .end local v2    # "info":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;
    goto :goto_b

    .line 836
    :cond_1d
    return-object v0
.end method

.method public blacklist getDscp()I
    .registers 2

    .line 755
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDscp:I

    return v0
.end method

.method public blacklist getIkeNattKeepalive()Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
    .registers 2

    .line 939
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    return-object v0
.end method

.method public blacklist getIkeSaRecords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIkeSocket()Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    return-object v0
.end method

.method public blacklist getKeepaliveAlarmConfig()Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    return-object v0
.end method

.method public blacklist getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 770
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getLocalPort()I
    .registers 4

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getLocalPort()I

    move-result v0
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 843
    :catch_7
    move-exception v0

    .line 844
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fail to get local port"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getMetricsNetworkType()I
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 733
    return v1

    .line 734
    :cond_a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 735
    const/4 v0, 0x2

    return v0

    .line 739
    :cond_15
    return v1
.end method

.method public blacklist getNatStatus()I
    .registers 2

    .line 934
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return v0
.end method

.method public blacklist getNetwork()Landroid/net/Network;
    .registers 2

    .line 727
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 822
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getRemotePort()I
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getIkeServerPort()I

    move-result v0

    return v0
.end method

.method public blacklist getUnderpinnedNetwork()Landroid/net/Network;
    .registers 2

    .line 744
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist handleNatDetectionResultInIkeInit(ZJ)V
    .registers 7
    .param p1, "isNatDetected"    # Z
    .param p2, "localSpi"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 856
    if-nez p1, :cond_6

    .line 857
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 858
    return-void

    .line 861
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 862
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_3a

    .line 866
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Switching to send to remote port 4500 if it\'s not already"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v0

    .line 871
    .local v0, "newSocket":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    :try_start_1f
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_34

    .line 874
    nop

    .line 876
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-eq v0, v1, :cond_33

    .line 877
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->migrateSpiToIkeSocket(JLcom/android/internal/net/ipsec/ike/IkeSocket;Lcom/android/internal/net/ipsec/ike/IkeSocket;)V

    .line 878
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    .line 879
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 881
    :cond_33
    return-void

    .line 872
    :catch_34
    move-exception v1

    .line 873
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    throw v2

    .line 863
    .end local v0    # "newSocket":Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPv6 NAT-T not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist handleNatDetectionResultInMobike(Z)V
    .registers 5
    .param p1, "isNatDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 885
    if-nez p1, :cond_6

    .line 886
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 887
    return-void

    .line 890
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 891
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_1f

    .line 895
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Switching to send to remote port 4500 if it\'s not already"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getAndSwitchToIkeSocket(ZZ)V

    .line 897
    return-void

    .line 892
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPv6 NAT-T not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isDnsLookupRequiredWithGlobalRemoteAddress(Landroid/net/Network;Landroid/net/Network;Landroid/net/LinkProperties;)Z
    .registers 11
    .param p1, "oldNetwork"    # Landroid/net/Network;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1171
    nop

    .line 1173
    invoke-static {p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->hasLocalIpV4Address(Landroid/net/LinkProperties;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v1

    .line 1172
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getSupportedVersions(ZZ)Ljava/util/Set;

    move-result-object v0

    .line 1174
    .local v0, "localIpVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    .line 1176
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    .line 1177
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 1175
    xor-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getSupportedVersions(ZZ)Ljava/util/Set;

    move-result-object v1

    .line 1179
    .local v1, "remoteIpVersionsCached":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDnsLookupRequiredWithGlobalRemoteAddress localIpVersions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remoteIpVersionsCached "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1180
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1189
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    .line 1190
    const-string v5, "isDnsLookupRequiredWithGlobalRemoteAddress no local address on the Network"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    return v2

    .line 1197
    :cond_58
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1198
    return v2

    .line 1201
    :cond_63
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_71

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1202
    return v4

    .line 1205
    :cond_71
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    const-string v5, "config_use_cached_addrs"

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getDeviceConfigPropertyBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1207
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1208
    return v4

    .line 1211
    :cond_82
    return v2
.end method

.method public blacklist isIpV4Preferred(Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Z
    .registers 5
    .param p1, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1105
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 1106
    :cond_9
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1107
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1105
    :goto_19
    return v0
.end method

.method public blacklist isMobilityEnabled()Z
    .registers 2

    .line 749
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    return v0
.end method

.method public blacklist markSeverNattUnsupported()V
    .registers 2

    .line 907
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 908
    return-void
.end method

.method public blacklist onCapabilitiesUpdated(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1397
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    .line 1404
    return-void
.end method

.method public blacklist onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .registers 4
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "ikePackets"    # [B

    .line 1416
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    .line 1420
    return-void
.end method

.method public blacklist onNetworkSetByUser(Landroid/net/Network;III)V
    .registers 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ipVersion"    # I
    .param p3, "encapType"    # I
    .param p4, "keepaliveDelaySeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    if-nez v0, :cond_10

    .line 663
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to update network when mobility is disabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void

    .line 667
    :cond_10
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkSetByUser: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encapType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keepaliveDelaySeconds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 685
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 686
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 688
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_6a

    if-eqz v1, :cond_6a

    .line 700
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    .line 701
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    .line 702
    iput p4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    .line 705
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->setNetwork(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 706
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Z)V

    .line 708
    return-void

    .line 690
    :cond_6a
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt migrating to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with null LinkProperties or null NetworkCapabilities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onUnderlyingNetworkDied()V
    .registers 2

    .line 1408
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    .line 1412
    return-void
.end method

.method public blacklist onUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1385
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public blacklist onUnderpinnedNetworkSetByUser(Landroid/net/Network;)V
    .registers 2
    .param p1, "underpinnedNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    .line 714
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->restartKeepaliveIfRunning()V

    .line 715
    return-void
.end method

.method public blacklist registerIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .registers 5
    .param p1, "saRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 626
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    .line 628
    return-void
.end method

.method public blacklist registerIkeSpi(J)V
    .registers 4
    .param p1, "ikeSpi"    # J

    .line 616
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    .line 617
    return-void
.end method

.method public blacklist resetSeverNattSupport()V
    .registers 2

    .line 917
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 918
    return-void
.end method

.method public blacklist selectAndSetRemoteAddress(Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    .line 1043
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->hasLocalIpV4Address(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 1044
    .local v0, "canConnectWithIpv4":Z
    :goto_13
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    .line 1045
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    .line 1047
    .local v1, "canConnectWithIpv6":Z
    :goto_23
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->adjustIpVersionPreference()V

    .line 1049
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isIpVersionRequired(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1050
    if-eqz v0, :cond_3a

    .line 1054
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_98

    .line 1051
    :cond_3a
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v2

    const-string v3, "IPv4 required but no IPv4 address available"

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1055
    :cond_45
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isIpVersionRequired(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1056
    if-eqz v1, :cond_5b

    .line 1060
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_98

    .line 1057
    :cond_5b
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v2

    const-string v3, "IPv6 required but no global IPv6 address available"

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1061
    :cond_66
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isIpV4Preferred(Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_7d

    if-eqz v0, :cond_7d

    .line 1062
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_98

    .line 1063
    :cond_7d
    if-eqz v1, :cond_8c

    .line 1064
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_98

    .line 1065
    :cond_8c
    if-eqz v0, :cond_99

    .line 1066
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1071
    :goto_98
    return-void

    .line 1069
    :cond_99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No valid IPv4 or IPv6 addresses for peer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist sendIkePacket([B)V
    .registers 4
    .param p1, "ikePacket"    # [B

    .line 611
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->sendIkePacket([BLjava/net/InetAddress;)V

    .line 612
    return-void
.end method

.method public blacklist setLocalAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 765
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    .line 766
    return-void
.end method

.method public blacklist setNatDetected(Z)V
    .registers 3
    .param p1, "isNatDetected"    # Z

    .line 923
    if-nez p1, :cond_6

    .line 924
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 925
    return-void

    .line 928
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    .line 929
    return-void
.end method

.method public blacklist setRemoteAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 780
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->addRemoteAddress(Ljava/net/InetAddress;)V

    .line 782
    return-void
.end method

.method public blacklist setUp()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 506
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterResources()V

    .line 513
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    .line 514
    .local v6, "linkProperties":Landroid/net/LinkProperties;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    .line 515
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConfig:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    .line 516
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->buildInitialKeepaliveAlarmConfig(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 518
    if-eqz v6, :cond_ba

    :try_start_25
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_ba

    .line 526
    invoke-direct {p0, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->resolveAndSetAvailableRemoteAddresses(Landroid/net/LinkProperties;)V

    .line 527
    invoke-virtual {p0, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->selectAndSetRemoteAddress(Landroid/net/LinkProperties;)V

    .line 530
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    if-eqz v0, :cond_36

    .line 531
    const/16 v0, 0x1194

    goto :goto_38

    .line 532
    :cond_36
    const/16 v0, 0x1f4

    :goto_38
    nop

    .line 533
    .local v0, "remotePort":I
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    .line 534
    .local v1, "isIpv4":Z
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    .line 535
    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;->generateLocalAddress(Landroid/net/Network;ZLjava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    .line 537
    iget-boolean v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    invoke-direct {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    .line 539
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_56} :catch_b7
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_56} :catch_b7

    .line 542
    .end local v0    # "remotePort":I
    .end local v1    # "isIpv4":Z
    nop

    .line 545
    :try_start_57
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUseCallerConfiguredNetwork:Z

    if-eqz v0, :cond_89

    .line 551
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 552
    .local v0, "request":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_70} :catch_ad

    move-object v3, p0

    :try_start_71
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iput-object v2, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    .line 555
    iget-object v1, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 556
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 555
    invoke-virtual {v1, v0, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 557
    .end local v0    # "request":Landroid/net/NetworkRequest;
    goto :goto_a9

    .line 559
    :cond_89
    move-object v3, p0

    new-instance v2, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;

    iget-object v4, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v5, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v7, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iput-object v2, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    .line 562
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    new-instance v2, Landroid/os/Handler;

    iget-object v4, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 563
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 562
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_a9} :catch_ab

    .line 568
    :goto_a9
    nop

    .line 569
    return-void

    .line 565
    :catch_ab
    move-exception v0

    goto :goto_af

    :catch_ad
    move-exception v0

    move-object v3, p0

    .line 566
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_af
    const/4 v1, 0x0

    iput-object v1, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    .line 567
    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    throw v1

    .line 540
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_b7
    move-exception v0

    move-object v3, p0

    goto :goto_e1

    .line 518
    :cond_ba
    move-object v3, p0

    .line 520
    :try_start_bb
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt setup on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with null LinkProperties or null NetworkCapabilities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    .end local v6    # "linkProperties":Landroid/net/LinkProperties;
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    throw v0
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_e0} :catch_e0
    .catch Landroid/system/ErrnoException; {:try_start_bb .. :try_end_e0} :catch_e0

    .line 540
    .restart local v6    # "linkProperties":Landroid/net/LinkProperties;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    :catch_e0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    :goto_e1
    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist tearDown()V
    .registers 1

    .line 596
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterResources()V

    .line 597
    return-void
.end method

.method public blacklist unregisterIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .registers 5
    .param p1, "saRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 632
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    .line 634
    return-void
.end method

.method public blacklist unregisterIkeSpi(J)V
    .registers 4
    .param p1, "ikeSpi"    # J

    .line 621
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    .line 622
    return-void
.end method

.method public blacklist useUdpEncapSocket()Z
    .registers 2

    .line 606
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    instance-of v0, v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    return v0
.end method
