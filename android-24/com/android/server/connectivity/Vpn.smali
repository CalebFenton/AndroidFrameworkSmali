.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$1;,
        Lcom/android/server/connectivity/Vpn$2;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageIntentReceiverRegistered:Z

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mVpnUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Vpn;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/Vpn;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p1, "interfaze"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 126
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    #@7
    .line 137
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@9
    .line 144
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@b
    .line 157
    const/4 v1, 0x0

    #@c
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@e
    .line 165
    new-instance v1, Landroid/util/ArraySet;

    #@10
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    #@15
    .line 171
    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    #@17
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    #@1a
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 207
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    #@1e
    .line 1093
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    #@20
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    #@23
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    #@25
    .line 211
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@27
    .line 212
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    #@29
    .line 213
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@2b
    .line 214
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    #@2d
    .line 216
    const-string/jumbo v1, "[Legacy VPN]"

    #@30
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@32
    .line 217
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@34
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@36
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@39
    move-result v1

    #@3a
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@3c
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    #@3e
    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 225
    :goto_0
    new-instance v1, Landroid/net/NetworkInfo;

    #@43
    const-string/jumbo v2, "VPN"

    #@46
    const-string/jumbo v3, ""

    #@49
    const/16 v4, 0x11

    #@4b
    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@4e
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@50
    .line 227
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@52
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@55
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@57
    .line 228
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@59
    const/4 v2, 0x4

    #@5a
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@5d
    .line 229
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@5f
    const/16 v2, 0xf

    #@61
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@64
    .line 210
    return-void

    #@65
    .line 221
    :catch_0
    move-exception v0

    #@66
    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Vpn"

    #@69
    const-string/jumbo v2, "Problem registering observer"

    #@6c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6f
    goto :goto_0
.end method

.method private agentConnect()V
    .locals 13

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, 0xc

    #@3
    const/4 v12, 0x1

    #@4
    const/4 v0, 0x0

    #@5
    .line 642
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    #@8
    move-result-object v7

    #@9
    .line 644
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@17
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1a
    .line 650
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@1c
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@1e
    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 652
    new-instance v9, Landroid/net/NetworkMisc;

    #@23
    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    #@26
    .line 653
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@28
    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    #@2a
    if-eqz v1, :cond_1

    #@2c
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@2e
    if-eqz v1, :cond_3

    #@30
    :cond_1
    :goto_1
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    #@32
    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@35
    move-result-wide v10

    #@36
    .line 657
    .local v10, "token":J
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    #@38
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    #@3a
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@3c
    const-string/jumbo v4, "VPN"

    #@3f
    .line 658
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@41
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@43
    const/4 v8, 0x0

    #@44
    move-object v1, p0

    #@45
    .line 657
    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@48
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 668
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@4f
    .line 669
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@51
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@53
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@55
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@57
    .line 668
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@5d
    .line 670
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@5f
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@61
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@63
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@66
    move-result v2

    #@67
    new-array v2, v2, [Landroid/net/UidRange;

    #@69
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, [Landroid/net/UidRange;

    #@6f
    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    #@72
    .line 672
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@74
    invoke-virtual {v0, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@77
    .line 673
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@79
    const-string/jumbo v1, "agentConnect"

    #@7c
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@7f
    .line 641
    return-void

    #@80
    .line 647
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "token":J
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@82
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@85
    goto :goto_0

    #@86
    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    :cond_3
    move v0, v12

    #@87
    .line 653
    goto :goto_1

    #@88
    .line 664
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    #@89
    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 664
    throw v0
.end method

.method private agentDisconnect()V
    .locals 2

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 700
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    #@f
    .line 701
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@12
    .line 698
    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    #@0
    .prologue
    .line 694
    new-instance v0, Landroid/net/NetworkInfo;

    #@2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@7
    .line 695
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    #@a
    .line 693
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 686
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@5
    .line 687
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@7
    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 688
    if-eqz p2, :cond_0

    #@c
    .line 689
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@f
    .line 685
    :cond_0
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 679
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    .line 681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 679
    return v2

    #@12
    .line 680
    :catchall_0
    move-exception v2

    #@13
    .line 681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 680
    throw v2
.end method

.method private enforceControlPermission()V
    .locals 3

    #@0
    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    #@5
    const-string/jumbo v2, "Unauthorized Caller"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1124
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .locals 3

    #@0
    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    #@5
    .line 1132
    const-string/jumbo v2, "Unauthorized Caller"

    #@8
    .line 1131
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1128
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/net/RouteInfo;

    #@14
    .line 1264
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@1d
    move-result-object v2

    #@1e
    instance-of v2, v2, Ljava/net/Inet4Address;

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 1265
    return-object v0

    #@23
    .line 1269
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v3, "Unable to find IPv4 default gateway"

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 4
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 565
    const-string/jumbo v3, "[Legacy VPN]"

    #@3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 566
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@c
    move-result v3

    #@d
    return v3

    #@e
    .line 568
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@13
    move-result-object v1

    #@14
    .line 571
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 575
    .local v2, "result":I
    :goto_0
    return v2

    #@19
    .line 572
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    #@1a
    .line 573
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    #@1b
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .locals 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 833
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    #@2
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@5
    .line 834
    .local v3, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 835
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@18
    move-result v2

    #@19
    .line 836
    .local v2, "uid":I
    const/4 v4, -0x1

    #@1a
    if-eq v2, v4, :cond_0

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 838
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_1
    return-object v3
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 828
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 474
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "[Legacy VPN]"

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 822
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 557
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v3, "appops"

    #@6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/AppOpsManager;

    #@c
    .line 560
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v2

    #@10
    const/16 v3, 0x2f

    #@12
    invoke-virtual {v0, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 18

    #@0
    .prologue
    .line 587
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@4
    iget-boolean v4, v14, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    #@6
    .line 588
    .local v4, "allowIPv4":Z
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@a
    iget-boolean v5, v14, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    #@c
    .line 590
    .local v5, "allowIPv6":Z
    new-instance v11, Landroid/net/LinkProperties;

    #@e
    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    #@11
    .line 592
    .local v11, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    #@13
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@15
    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@18
    .line 594
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1c
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@1e
    if-eqz v14, :cond_0

    #@20
    .line 595
    move-object/from16 v0, p0

    #@22
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@24
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@26
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v3

    #@2a
    .local v3, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v14

    #@2e
    if-eqz v14, :cond_0

    #@30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/net/LinkAddress;

    #@36
    .line 596
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v11, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@39
    .line 597
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@3c
    move-result-object v14

    #@3d
    instance-of v14, v14, Ljava/net/Inet4Address;

    #@3f
    or-int/2addr v4, v14

    #@40
    .line 598
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@43
    move-result-object v14

    #@44
    instance-of v14, v14, Ljava/net/Inet6Address;

    #@46
    or-int/2addr v5, v14

    #@47
    goto :goto_0

    #@48
    .line 602
    .end local v1    # "address":Landroid/net/LinkAddress;
    .end local v3    # "address$iterator":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    #@4a
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@4c
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@4e
    if-eqz v14, :cond_1

    #@50
    .line 603
    move-object/from16 v0, p0

    #@52
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@54
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@56
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v13

    #@5a
    .local v13, "route$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v14

    #@5e
    if-eqz v14, :cond_1

    #@60
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v12

    #@64
    check-cast v12, Landroid/net/RouteInfo;

    #@66
    .line 604
    .local v12, "route":Landroid/net/RouteInfo;
    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@69
    .line 605
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@6c
    move-result-object v14

    #@6d
    invoke-virtual {v14}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@70
    move-result-object v2

    #@71
    .line 606
    .local v2, "address":Ljava/net/InetAddress;
    instance-of v14, v2, Ljava/net/Inet4Address;

    #@73
    or-int/2addr v4, v14

    #@74
    .line 607
    instance-of v14, v2, Ljava/net/Inet6Address;

    #@76
    or-int/2addr v5, v14

    #@77
    goto :goto_1

    #@78
    .line 611
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v12    # "route":Landroid/net/RouteInfo;
    .end local v13    # "route$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    #@7a
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@7c
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@7e
    if-eqz v14, :cond_2

    #@80
    .line 612
    move-object/from16 v0, p0

    #@82
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@84
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@86
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@89
    move-result-object v8

    #@8a
    .local v8, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@8d
    move-result v14

    #@8e
    if-eqz v14, :cond_2

    #@90
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@93
    move-result-object v7

    #@94
    check-cast v7, Ljava/lang/String;

    #@96
    .line 613
    .local v7, "dnsServer":Ljava/lang/String;
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@99
    move-result-object v2

    #@9a
    .line 614
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-virtual {v11, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@9d
    .line 615
    instance-of v14, v2, Ljava/net/Inet4Address;

    #@9f
    or-int/2addr v4, v14

    #@a0
    .line 616
    instance-of v14, v2, Ljava/net/Inet6Address;

    #@a2
    or-int/2addr v5, v14

    #@a3
    goto :goto_2

    #@a4
    .line 620
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v7    # "dnsServer":Ljava/lang/String;
    .end local v8    # "dnsServer$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_3

    #@a6
    .line 621
    new-instance v14, Landroid/net/RouteInfo;

    #@a8
    new-instance v15, Landroid/net/IpPrefix;

    #@aa
    sget-object v16, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@ac
    const/16 v17, 0x0

    #@ae
    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@b1
    const/16 v16, 0x7

    #@b3
    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    #@b6
    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@b9
    .line 623
    :cond_3
    if-nez v5, :cond_4

    #@bb
    .line 624
    new-instance v14, Landroid/net/RouteInfo;

    #@bd
    new-instance v15, Landroid/net/IpPrefix;

    #@bf
    sget-object v16, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@c1
    const/16 v17, 0x0

    #@c3
    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@c6
    const/16 v16, 0x7

    #@c8
    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    #@cb
    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@ce
    .line 628
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    .line 629
    .local v6, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@d5
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@d7
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@d9
    if-eqz v14, :cond_5

    #@db
    .line 630
    move-object/from16 v0, p0

    #@dd
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@df
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@e1
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e4
    move-result-object v10

    #@e5
    .local v10, "domain$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@e8
    move-result v14

    #@e9
    if-eqz v14, :cond_5

    #@eb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ee
    move-result-object v9

    #@ef
    check-cast v9, Ljava/lang/String;

    #@f1
    .line 631
    .local v9, "domain":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v14

    #@f5
    const/16 v15, 0x20

    #@f7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fa
    goto :goto_3

    #@fb
    .line 634
    .end local v9    # "domain":Ljava/lang/String;
    .end local v10    # "domain$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v14

    #@ff
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@102
    move-result-object v14

    #@103
    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    #@106
    .line 638
    return-object v11
.end method

.method private maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 305
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    #@4
    .line 307
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 308
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    #@d
    .line 310
    new-instance v3, Landroid/content/IntentFilter;

    #@f
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@12
    .line 312
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    #@15
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18
    .line 313
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@1b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 314
    const-string/jumbo v0, "package"

    #@21
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@24
    .line 315
    const/4 v0, 0x0

    #@25
    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@28
    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2a
    .line 317
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@2c
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@2e
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@31
    move-result-object v2

    #@32
    move-object v5, v4

    #@33
    .line 316
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@36
    .line 303
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 8
    .param p1, "newPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 482
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 483
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    #@b
    .line 484
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    #@e
    .line 485
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    #@13
    .line 486
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@16
    .line 487
    const/4 v1, 0x0

    #@17
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@19
    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 493
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@1f
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$Connection;->-get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    #@22
    move-result-object v1

    #@23
    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@26
    move-result-object v4

    #@27
    .line 493
    const v5, 0xffffff

    #@2a
    .line 494
    const/4 v6, 0x0

    #@2b
    const/4 v7, 0x1

    #@2c
    .line 493
    invoke-interface {v1, v5, v4, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 498
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@31
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@33
    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@36
    .line 499
    const/4 v1, 0x0

    #@37
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    .line 506
    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    #@3b
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@3d
    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    .line 511
    :goto_2
    :try_start_4
    const-string/jumbo v1, "Vpn"

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "Switched from "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    const-string/jumbo v5, " to "

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 512
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@69
    .line 513
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@6b
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@6e
    move-result v1

    #@6f
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@71
    .line 515
    :try_start_5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    #@73
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@75
    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@78
    .line 519
    :goto_3
    const/4 v1, 0x0

    #@79
    :try_start_6
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@7b
    .line 521
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@7d
    const-string/jumbo v4, "prepare"

    #@80
    invoke-direct {p0, v1, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@83
    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 478
    return-void

    #@87
    .line 500
    :cond_2
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@89
    if-eqz v1, :cond_1

    #@8b
    .line 501
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@8d
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@90
    .line 502
    const/4 v1, 0x0

    #@91
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@93
    goto :goto_1

    #@94
    .line 522
    :catchall_0
    move-exception v1

    #@95
    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@98
    .line 522
    throw v1

    #@99
    .line 507
    :catch_0
    move-exception v0

    #@9a
    .line 508
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v1, "Vpn"

    #@9d
    new-instance v4, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v5, "Failed to disallow UID "

    #@a5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    const-string/jumbo v5, " to call protect() "

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v4

    #@be
    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    goto/16 :goto_2

    #@c3
    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@c4
    .line 517
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Vpn"

    #@c7
    new-instance v4, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v5, "Failed to allow UID "

    #@cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@d5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    const-string/jumbo v5, " to call protect() "

    #@dc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v4

    #@e0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@eb
    goto :goto_3

    #@ec
    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@ed
    .restart local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private prepareStatusIntent()V
    .locals 3

    #@0
    .prologue
    .line 1150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1152
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 1149
    return-void

    #@10
    .line 1153
    :catchall_0
    move-exception v2

    #@11
    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 1153
    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 944
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 945
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "VPN is not active"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 947
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    .line 948
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 949
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@17
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1a
    move-result v1

    #@1b
    new-array v1, v1, [Landroid/net/UidRange;

    #@1d
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, [Landroid/net/UidRange;

    #@23
    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    #@26
    .line 951
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@28
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@2b
    .line 943
    return-void
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .locals 6
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1057
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1058
    return v3

    #@9
    .line 1060
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@c
    move-result v2

    #@d
    new-array v2, v2, [Landroid/net/UidRange;

    #@f
    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [Landroid/net/UidRange;

    #@15
    .line 1062
    .local v1, "rangesArray":[Landroid/net/UidRange;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    #@17
    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1068
    if-eqz p1, :cond_1

    #@1c
    .line 1069
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    #@1e
    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@21
    .line 1073
    :goto_0
    return v3

    #@22
    .line 1063
    :catch_0
    move-exception v0

    #@23
    .line 1064
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Vpn"

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Updating blocked="

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 1065
    const-string/jumbo v4, " for UIDs "

    #@39
    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 1065
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 1065
    const-string/jumbo v4, " failed"

    #@4c
    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 1066
    return v5

    #@58
    .line 1071
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    #@5a
    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@5d
    goto :goto_0
.end method

.method private declared-synchronized setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 356
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 357
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 358
    const/4 v0, 0x1

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    .line 360
    :cond_0
    const/4 v0, 0x0

    #@e
    monitor-exit p0

    #@f
    return v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method private setVpnForcedLocked(Z)V
    .locals 6
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1029
    new-instance v1, Landroid/util/ArraySet;

    #@3
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    #@5
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@8
    .line 1030
    .local v1, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz p1, :cond_0

    #@a
    .line 1031
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@c
    .line 1033
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@e
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v3

    #@12
    .line 1032
    const/4 v4, 0x0

    #@13
    .line 1031
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    .line 1035
    .local v0, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@1a
    .line 1036
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    #@1c
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@1f
    .line 1038
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    #@22
    .line 1039
    const/4 v2, 0x1

    #@23
    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    #@26
    .line 1028
    .end local v0    # "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_0
    return-void

    #@27
    .line 1041
    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    #@2a
    goto :goto_0
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1406
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    #@4
    .line 1409
    const-string/jumbo v0, "[Legacy VPN]"

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    #@a
    .line 1410
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@c
    const-string/jumbo v1, "startLegacyVpn"

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@12
    .line 1413
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@14
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@19
    .line 1414
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 1405
    return-void

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 933
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    #@3
    move-result-object v3

    #@4
    .line 934
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 935
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "range$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/UidRange;

    #@1b
    .line 936
    .local v0, "range":Landroid/net/UidRange;
    invoke-virtual {v3, v0}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 937
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 940
    .end local v0    # "range":Landroid/net/UidRange;
    :cond_1
    return-object v2
.end method

.method private unregisterPackageChangeReceiverLocked()V
    .locals 2

    #@0
    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 298
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@b
    .line 299
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    #@e
    .line 295
    :cond_0
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 4
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 245
    const-string/jumbo v0, "Vpn"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "setting state="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ", reason="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 246
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@28
    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 247
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@31
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@33
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@36
    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1159
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1160
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return v1

    #@a
    .line 1162
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@c
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    .line 1163
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@12
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 1164
    return v0

    #@1b
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .locals 7
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    #@1
    .line 898
    if-eqz p3, :cond_4

    #@3
    .line 900
    const/4 v0, -0x1

    #@4
    .local v0, "start":I
    const/4 v1, -0x1

    #@5
    .line 901
    .local v1, "stop":I
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Ljava/lang/Integer;

    #@19
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v2

    #@1d
    .line 902
    .local v2, "uid":I
    if-ne v0, v6, :cond_1

    #@1f
    .line 903
    move v0, v2

    #@20
    .line 908
    :cond_0
    :goto_1
    move v1, v2

    #@21
    goto :goto_0

    #@22
    .line 904
    :cond_1
    add-int/lit8 v5, v1, 0x1

    #@24
    if-eq v2, v5, :cond_0

    #@26
    .line 905
    new-instance v5, Landroid/net/UidRange;

    #@28
    invoke-direct {v5, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    #@2b
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    .line 906
    move v0, v2

    #@2f
    goto :goto_1

    #@30
    .line 910
    .end local v2    # "uid":I
    :cond_2
    if-eq v0, v6, :cond_3

    #@32
    new-instance v5, Landroid/net/UidRange;

    #@34
    invoke-direct {v5, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    #@37
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    .line 897
    .end local v0    # "start":I
    .end local v1    # "stop":I
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    return-void

    #@3b
    .line 911
    :cond_4
    if-eqz p4, :cond_7

    #@3d
    .line 913
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    #@40
    move-result-object v4

    #@41
    .line 914
    .local v4, "userRange":Landroid/net/UidRange;
    iget v0, v4, Landroid/net/UidRange;->start:I

    #@43
    .line 915
    .restart local v0    # "start":I
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    #@46
    move-result-object v5

    #@47
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v3

    #@4b
    .restart local v3    # "uid$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_6

    #@51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v5

    #@55
    check-cast v5, Ljava/lang/Integer;

    #@57
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@5a
    move-result v2

    #@5b
    .line 916
    .restart local v2    # "uid":I
    if-ne v2, v0, :cond_5

    #@5d
    .line 917
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_3

    #@60
    .line 919
    :cond_5
    new-instance v5, Landroid/net/UidRange;

    #@62
    add-int/lit8 v6, v2, -0x1

    #@64
    invoke-direct {v5, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    #@67
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6a
    .line 920
    add-int/lit8 v0, v2, 0x1

    #@6c
    goto :goto_3

    #@6d
    .line 923
    .end local v2    # "uid":I
    :cond_6
    iget v5, v4, Landroid/net/UidRange;->stop:I

    #@6f
    if-gt v0, v5, :cond_3

    #@71
    new-instance v5, Landroid/net/UidRange;

    #@73
    iget v6, v4, Landroid/net/UidRange;->stop:I

    #@75
    invoke-direct {v5, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    #@78
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_2

    #@7c
    .line 926
    .end local v0    # "start":I
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    .end local v4    # "userRange":Landroid/net/UidRange;
    :cond_7
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    #@7f
    move-result-object v5

    #@80
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_2
.end method

.method public declared-synchronized appliesToUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1218
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 1219
    return v3

    #@a
    .line 1221
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "uidRange$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/UidRange;

    #@1c
    .line 1222
    .local v0, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 1223
    const/4 v2, 0x1

    #@23
    monitor-exit p0

    #@24
    return v2

    #@25
    .end local v0    # "uidRange":Landroid/net/UidRange;
    :cond_2
    monitor-exit p0

    #@26
    .line 1226
    return v3

    #@27
    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit p0

    #@29
    throw v2
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 858
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 861
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    #@8
    .line 864
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v2

    #@12
    .line 868
    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@14
    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@17
    move-result-object v6

    #@18
    const/4 v7, 0x1

    #@19
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v5

    #@1d
    .line 870
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 872
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v4

    #@24
    .local v4, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_1

    #@2a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/content/pm/UserInfo;

    #@30
    .line 873
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_0

    #@36
    iget v6, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@38
    if-ne v6, p1, :cond_0

    #@3a
    .line 874
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    #@3c
    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    #@3f
    goto :goto_0

    #@40
    .line 869
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "user$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    #@41
    .line 870
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 869
    throw v6

    #@45
    .line 878
    .end local v2    # "token":J
    :cond_1
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 28
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 715
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@5
    move-object/from16 v24, v0

    #@7
    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@a
    move-result-object v14

    #@b
    .line 716
    .local v14, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v24

    #@f
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@13
    move/from16 v25, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    move/from16 v0, v24

    #@17
    move/from16 v1, v25

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 717
    const/16 v24, 0x0

    #@1d
    monitor-exit p0

    #@1e
    return-object v24

    #@1f
    .line 720
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@23
    move-object/from16 v24, v0

    #@25
    move-object/from16 v0, p0

    #@27
    move-object/from16 v1, v24

    #@29
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    move-result v24

    #@2d
    if-nez v24, :cond_1

    #@2f
    .line 721
    const/16 v24, 0x0

    #@31
    monitor-exit p0

    #@32
    return-object v24

    #@33
    .line 724
    :cond_1
    :try_start_2
    new-instance v12, Landroid/content/Intent;

    #@35
    const-string/jumbo v24, "android.net.VpnService"

    #@38
    move-object/from16 v0, v24

    #@3a
    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3d
    .line 725
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@41
    move-object/from16 v24, v0

    #@43
    move-object/from16 v0, p1

    #@45
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@47
    move-object/from16 v25, v0

    #@49
    move-object/from16 v0, v24

    #@4b
    move-object/from16 v1, v25

    #@4d
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@50
    .line 726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    move-result-wide v20

    #@54
    .line 729
    .local v20, "token":J
    :try_start_3
    move-object/from16 v0, p0

    #@56
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@58
    move/from16 v24, v0

    #@5a
    move/from16 v0, v24

    #@5c
    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@5f
    move-result-object v23

    #@60
    .line 730
    .local v23, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@63
    move-result v24

    #@64
    if-eqz v24, :cond_2

    #@66
    .line 731
    new-instance v24, Ljava/lang/SecurityException;

    #@68
    const-string/jumbo v25, "Restricted users cannot establish VPNs"

    #@6b
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v24
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6f
    .line 742
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v8

    #@70
    .line 743
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v24, Ljava/lang/SecurityException;

    #@72
    new-instance v25, Ljava/lang/StringBuilder;

    #@74
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v26, "Cannot find "

    #@7a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v25

    #@7e
    move-object/from16 v0, p1

    #@80
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@82
    move-object/from16 v26, v0

    #@84
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v25

    #@88
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v25

    #@8c
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@90
    .line 744
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v24

    #@91
    .line 745
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    .line 744
    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@95
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "mgr":Landroid/os/UserManager;
    .end local v20    # "token":J
    :catchall_1
    move-exception v24

    #@96
    monitor-exit p0

    #@97
    throw v24

    #@98
    .line 734
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "token":J
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@9b
    move-result-object v24

    #@9c
    .line 735
    move-object/from16 v0, p0

    #@9e
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@a0
    move/from16 v25, v0

    #@a2
    const/16 v26, 0x0

    #@a4
    const/16 v27, 0x0

    #@a6
    .line 734
    move-object/from16 v0, v24

    #@a8
    move-object/from16 v1, v26

    #@aa
    move/from16 v2, v27

    #@ac
    move/from16 v3, v25

    #@ae
    invoke-interface {v0, v12, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@b1
    move-result-object v11

    #@b2
    .line 736
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_3

    #@b4
    .line 737
    new-instance v24, Ljava/lang/SecurityException;

    #@b6
    new-instance v25, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v26, "Cannot find "

    #@be
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v25

    #@c2
    move-object/from16 v0, p1

    #@c4
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@c6
    move-object/from16 v26, v0

    #@c8
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v25

    #@cc
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v25

    #@d0
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v24

    #@d4
    .line 739
    :cond_3
    const-string/jumbo v24, "android.permission.BIND_VPN_SERVICE"

    #@d7
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d9
    move-object/from16 v25, v0

    #@db
    move-object/from16 v0, v25

    #@dd
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@df
    move-object/from16 v25, v0

    #@e1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v24

    #@e5
    if-nez v24, :cond_4

    #@e7
    .line 740
    new-instance v24, Ljava/lang/SecurityException;

    #@e9
    new-instance v25, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    move-object/from16 v0, p1

    #@f0
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@f2
    move-object/from16 v26, v0

    #@f4
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v25

    #@f8
    const-string/jumbo v26, " does not require "

    #@fb
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v25

    #@ff
    const-string/jumbo v26, "android.permission.BIND_VPN_SERVICE"

    #@102
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v25

    #@106
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v25

    #@10a
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v24
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@10e
    .line 745
    :cond_4
    :try_start_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@111
    .line 749
    move-object/from16 v0, p0

    #@113
    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@115
    .line 750
    .local v15, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@119
    move-object/from16 v17, v0

    #@11b
    .line 751
    .local v17, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@11f
    move-object/from16 v16, v0

    #@121
    .line 752
    .local v16, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@125
    move-object/from16 v18, v0

    #@127
    .line 753
    .local v18, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v24, 0x0

    #@129
    move-object/from16 v0, v24

    #@12b
    move-object/from16 v1, p0

    #@12d
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@12f
    .line 754
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@133
    move-object/from16 v19, v0

    #@135
    .line 757
    .local v19, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    move-object/from16 v0, p1

    #@137
    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    #@139
    move/from16 v24, v0

    #@13b
    move-object/from16 v0, p0

    #@13d
    move/from16 v1, v24

    #@13f
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    #@142
    move-result v24

    #@143
    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@146
    move-result-object v22

    #@147
    .line 759
    .local v22, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@149
    const-string/jumbo v25, "establish"

    #@14c
    move-object/from16 v0, p0

    #@14e
    move-object/from16 v1, v24

    #@150
    move-object/from16 v2, v25

    #@152
    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@155
    .line 760
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@158
    move-result v24

    #@159
    move-object/from16 v0, p0

    #@15b
    move/from16 v1, v24

    #@15d
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    #@160
    move-result-object v13

    #@161
    .line 763
    .local v13, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    .line 764
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    #@168
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@16a
    move-object/from16 v24, v0

    #@16c
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16f
    move-result-object v5

    #@170
    .local v5, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@173
    move-result v24

    #@174
    if-eqz v24, :cond_5

    #@176
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@179
    move-result-object v4

    #@17a
    check-cast v4, Landroid/net/LinkAddress;

    #@17c
    .line 765
    .local v4, "address":Landroid/net/LinkAddress;
    const-string/jumbo v24, " "

    #@17f
    move-object/from16 v0, v24

    #@181
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v24

    #@185
    move-object/from16 v0, v24

    #@187
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@18a
    goto :goto_0

    #@18b
    .line 806
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "address$iterator":Ljava/util/Iterator;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v13    # "interfaze":Ljava/lang/String;
    :catch_1
    move-exception v10

    #@18c
    .line 807
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_9
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@18f
    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    #@192
    .line 810
    move-object/from16 v0, p0

    #@194
    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@196
    .line 811
    move-object/from16 v0, v16

    #@198
    move-object/from16 v1, p0

    #@19a
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@19c
    .line 812
    move-object/from16 v0, v19

    #@19e
    move-object/from16 v1, p0

    #@1a0
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@1a2
    .line 813
    move-object/from16 v0, v18

    #@1a4
    move-object/from16 v1, p0

    #@1a6
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@1a8
    .line 814
    move-object/from16 v0, v17

    #@1aa
    move-object/from16 v1, p0

    #@1ac
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@1ae
    .line 815
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1af
    .line 767
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "address$iterator":Ljava/util/Iterator;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "interfaze":Ljava/lang/String;
    :cond_5
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v24

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    move-object/from16 v1, v24

    #@1b7
    invoke-direct {v0, v13, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    #@1ba
    move-result v24

    #@1bb
    const/16 v25, 0x1

    #@1bd
    move/from16 v0, v24

    #@1bf
    move/from16 v1, v25

    #@1c1
    if-ge v0, v1, :cond_6

    #@1c3
    .line 768
    new-instance v24, Ljava/lang/IllegalArgumentException;

    #@1c5
    const-string/jumbo v25, "At least one address must be specified"

    #@1c8
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cb
    throw v24

    #@1cc
    .line 770
    :cond_6
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    #@1ce
    const/16 v24, 0x0

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    move-object/from16 v1, v24

    #@1d4
    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V

    #@1d7
    .line 771
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@1db
    move-object/from16 v24, v0

    #@1dd
    .line 773
    new-instance v25, Landroid/os/UserHandle;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@1e3
    move/from16 v26, v0

    #@1e5
    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    #@1e8
    .line 772
    const v26, 0x4000001

    #@1eb
    .line 771
    move-object/from16 v0, v24

    #@1ed
    move/from16 v1, v26

    #@1ef
    move-object/from16 v2, v25

    #@1f1
    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@1f4
    move-result v24

    #@1f5
    if-nez v24, :cond_7

    #@1f7
    .line 774
    new-instance v24, Ljava/lang/IllegalStateException;

    #@1f9
    new-instance v25, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v26, "Cannot bind "

    #@201
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v25

    #@205
    move-object/from16 v0, p1

    #@207
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@209
    move-object/from16 v26, v0

    #@20b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v25

    #@20f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v25

    #@213
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@216
    throw v24

    #@217
    .line 777
    :cond_7
    move-object/from16 v0, p0

    #@219
    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@21b
    .line 778
    move-object/from16 v0, p0

    #@21d
    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@21f
    .line 781
    move-object/from16 v0, p0

    #@221
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@223
    move-object/from16 v24, v0

    #@225
    move-object/from16 v0, v24

    #@227
    move-object/from16 v1, p1

    #@229
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@22b
    .line 782
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@22f
    move-object/from16 v24, v0

    #@231
    move-object/from16 v0, v24

    #@233
    move-object/from16 v1, p1

    #@235
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@237
    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@23a
    move-result-wide v24

    #@23b
    move-wide/from16 v0, v24

    #@23d
    move-object/from16 v2, p1

    #@23f
    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@241
    .line 784
    move-object/from16 v0, p1

    #@243
    move-object/from16 v1, p0

    #@245
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@247
    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    #@24a
    .line 789
    if-eqz v16, :cond_8

    #@24c
    .line 790
    move-object/from16 v0, p0

    #@24e
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@250
    move-object/from16 v24, v0

    #@252
    move-object/from16 v0, v24

    #@254
    move-object/from16 v1, v16

    #@256
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@259
    .line 795
    :cond_8
    move-object/from16 v0, p0

    #@25b
    move-object/from16 v1, v18

    #@25d
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    #@260
    .line 796
    if-eqz v17, :cond_9

    #@262
    move-object/from16 v0, v17

    #@264
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@267
    move-result v24

    #@268
    if-eqz v24, :cond_a

    #@26a
    .line 801
    :cond_9
    :goto_1
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@26d
    move-result-object v24

    #@26e
    move-object/from16 v0, p1

    #@270
    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@272
    move/from16 v25, v0

    #@274
    invoke-static/range {v24 .. v25}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@277
    .line 817
    :try_start_c
    const-string/jumbo v24, "Vpn"

    #@27a
    new-instance v25, Ljava/lang/StringBuilder;

    #@27c
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@27f
    const-string/jumbo v26, "Established by "

    #@282
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v25

    #@286
    move-object/from16 v0, p1

    #@288
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@28a
    move-object/from16 v26, v0

    #@28c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v25

    #@290
    const-string/jumbo v26, " on "

    #@293
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v25

    #@297
    move-object/from16 v0, p0

    #@299
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@29b
    move-object/from16 v26, v0

    #@29d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v25

    #@2a1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a4
    move-result-object v25

    #@2a5
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@2a8
    monitor-exit p0

    #@2a9
    .line 818
    return-object v22

    #@2aa
    .line 797
    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    #@2ac
    move-object/from16 v1, v17

    #@2ae
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    #@2b1
    goto :goto_1

    #@2b2
    .line 802
    :catch_2
    move-exception v9

    #@2b3
    .line 803
    .local v9, "e":Ljava/io/IOException;
    new-instance v24, Ljava/lang/IllegalStateException;

    #@2b5
    .line 804
    new-instance v25, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v26, "Cannot set tunnel\'s fd as blocking="

    #@2bd
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v25

    #@2c1
    move-object/from16 v0, p1

    #@2c3
    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@2c5
    move/from16 v26, v0

    #@2c7
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v25

    #@2cb
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ce
    move-result-object v25

    #@2cf
    .line 803
    move-object/from16 v0, v24

    #@2d1
    move-object/from16 v1, v25

    #@2d3
    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d6
    throw v24
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    #@4
    .line 329
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :goto_0
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1456
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1457
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@7
    return-object v0

    #@8
    .line 1459
    :cond_0
    return-object v1
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1435
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@4
    .line 1436
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    monitor-exit p0

    #@7
    return-object v2

    #@8
    .line 1446
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    #@a
    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    #@d
    .line 1447
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@f
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@11
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    #@13
    .line 1448
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@15
    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    #@18
    move-result v1

    #@19
    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    #@1b
    .line 1449
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@1d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 1450
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    #@25
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 1452
    return-object v0

    #@29
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1
.end method

.method public getNetId()I
    .locals 1

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@6
    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    #@0
    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1196
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1197
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 1199
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@c
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    #@0
    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@3
    .line 1081
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@5
    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1207
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1208
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v1

    #@a
    .line 1211
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    #@c
    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    #@f
    .line 1212
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@11
    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    #@13
    .line 1213
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@15
    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 1214
    return-object v0

    #@19
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    #@3
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 1085
    return-void

    #@8
    :catchall_0
    move-exception v1

    #@9
    monitor-exit p0

    #@a
    throw v1

    #@b
    .line 1088
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 1237
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v4, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 1238
    return v2

    #@9
    .line 1241
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@b
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 1242
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    :goto_0
    monitor-exit p0

    #@18
    return v2

    #@19
    :cond_1
    move v2, v3

    #@1a
    goto :goto_0

    #@1b
    .line 1244
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    #@1d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "uidRange$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_4

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/net/UidRange;

    #@2d
    .line 1245
    .local v0, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_3

    #@33
    monitor-exit p0

    #@34
    .line 1246
    return v3

    #@35
    .end local v0    # "uidRange":Landroid/net/UidRange;
    :cond_4
    monitor-exit p0

    #@36
    .line 1249
    return v2

    #@37
    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@38
    monitor-exit p0

    #@39
    throw v2
.end method

.method public onUserAdded(I)V
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 956
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v2

    #@a
    .line 957
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@12
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@14
    if-ne v3, v4, :cond_2

    #@16
    .line 958
    monitor-enter p0

    #@17
    .line 959
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 961
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    #@1d
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1f
    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@21
    .line 962
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@23
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@25
    .line 961
    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    #@28
    .line 963
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 964
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    #@2f
    move-result-object v1

    #@30
    .line 965
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@32
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@35
    move-result v3

    #@36
    new-array v3, v3, [Landroid/net/UidRange;

    #@38
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, [Landroid/net/UidRange;

    #@3e
    invoke-virtual {v4, v3}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 971
    .end local v1    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@43
    if-eqz v3, :cond_1

    #@45
    .line 972
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@47
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    :cond_1
    monitor-exit p0

    #@4b
    .line 954
    :cond_2
    return-void

    #@4c
    .line 967
    :catch_0
    move-exception v0

    #@4d
    .line 968
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "Vpn"

    #@50
    const-string/jumbo v4, "Failed to add restricted user to owner"

    #@53
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 958
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@58
    monitor-exit p0

    #@59
    throw v3
.end method

.method public onUserRemoved(I)V
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 980
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v1

    #@a
    .line 981
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@12
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@14
    if-ne v2, v3, :cond_2

    #@16
    .line 982
    monitor-enter p0

    #@17
    .line 983
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 985
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 990
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 991
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@24
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 978
    :cond_2
    return-void

    #@29
    .line 986
    :catch_0
    move-exception v0

    #@2a
    .line 987
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "Vpn"

    #@2d
    const-string/jumbo v3, "Failed to remove restricted user to owner"

    #@30
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 982
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@35
    monitor-exit p0

    #@36
    throw v2
.end method

.method public declared-synchronized onUserStopped()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1002
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    #@5
    .line 1003
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@8
    .line 1005
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    #@b
    .line 1007
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 1000
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 430
    if-eqz p1, :cond_4

    #@5
    .line 432
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_3

    #@15
    .line 440
    const-string/jumbo v0, "[Legacy VPN]"

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 441
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 442
    return v2

    #@29
    :cond_1
    monitor-exit p0

    #@2a
    .line 433
    return v1

    #@2b
    :cond_2
    monitor-exit p0

    #@2c
    .line 444
    return v1

    #@2d
    .line 445
    :cond_3
    :try_start_1
    const-string/jumbo v0, "[Legacy VPN]"

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_4

    #@36
    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_6

    #@3c
    .line 454
    :cond_4
    if-eqz p2, :cond_5

    #@3e
    const-string/jumbo v0, "[Legacy VPN]"

    #@41
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_7

    #@47
    .line 455
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    move-result v0

    #@4b
    .line 454
    if-eqz v0, :cond_7

    #@4d
    :cond_5
    monitor-exit p0

    #@4e
    .line 456
    return v2

    #@4f
    .line 448
    :cond_6
    :try_start_2
    const-string/jumbo v0, "[Legacy VPN]"

    #@52
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@55
    monitor-exit p0

    #@56
    .line 449
    return v1

    #@57
    .line 460
    :cond_7
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@5a
    .line 463
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@5c
    if-eqz v0, :cond_8

    #@5e
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_9

    #@64
    .line 467
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@67
    monitor-exit p0

    #@68
    .line 468
    return v2

    #@69
    :cond_9
    monitor-exit p0

    #@6a
    .line 464
    return v1

    #@6b
    :catchall_0
    move-exception v0

    #@6c
    monitor-exit p0

    #@6d
    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1168
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1169
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return v1

    #@a
    .line 1171
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@c
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    .line 1172
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@12
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 1173
    return v0

    #@1b
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1
.end method

.method public declared-synchronized saveAlwaysOnPackage()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 336
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    move-result-wide v2

    #@5
    .line 338
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    .line 339
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "always_on_vpn_app"

    #@e
    .line 340
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@14
    .line 339
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@17
    .line 341
    const-string/jumbo v4, "always_on_vpn_lockdown"

    #@1a
    .line 342
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    :goto_0
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@21
    .line 341
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 344
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    monitor-exit p0

    #@28
    .line 335
    return-void

    #@29
    .line 342
    :cond_0
    const/4 v1, 0x0

    #@2a
    goto :goto_0

    #@2b
    .line 343
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    #@2c
    .line 344
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 343
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    #@31
    monitor-exit p0

    #@32
    throw v1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 265
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    #@6
    .line 266
    const-string/jumbo v1, "[Legacy VPN]"

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 267
    const-string/jumbo v1, "Vpn"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Not setting legacy VPN \""

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "\" as always-on."

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit p0

    #@31
    .line 268
    return v0

    #@32
    .line 271
    :cond_0
    if-eqz p1, :cond_3

    #@34
    .line 273
    const/4 v1, 0x1

    #@35
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_1

    #@3b
    monitor-exit p0

    #@3c
    .line 274
    return v0

    #@3d
    .line 276
    :cond_1
    const/4 v1, 0x1

    #@3e
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@40
    .line 282
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    #@42
    if-eqz v1, :cond_4

    #@44
    .end local p2    # "lockdown":Z
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@46
    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_2

    #@4c
    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    #@4f
    .line 286
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V

    #@52
    .line 287
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    #@54
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    monitor-exit p0

    #@58
    .line 288
    return v2

    #@59
    .line 278
    .restart local p2    # "lockdown":Z
    :cond_3
    :try_start_3
    const-string/jumbo p1, "[Legacy VPN]"

    #@5c
    .line 279
    const/4 v1, 0x0

    #@5d
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5f
    goto :goto_0

    #@60
    .end local p2    # "lockdown":Z
    :catchall_0
    move-exception v0

    #@61
    monitor-exit p0

    #@62
    throw v0

    #@63
    .restart local p2    # "lockdown":Z
    :cond_4
    move p2, v0

    #@64
    .line 282
    goto :goto_1
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    #@0
    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    #@2
    .line 237
    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 532
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    #@5
    .line 534
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@7
    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@a
    move-result v4

    #@b
    .line 535
    .local v4, "uid":I
    const/4 v5, -0x1

    #@c
    if-eq v4, v5, :cond_0

    #@e
    const-string/jumbo v5, "[Legacy VPN]"

    #@11
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 537
    :cond_0
    return v6

    #@18
    .line 540
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v2

    #@1c
    .line 543
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@1e
    const-string/jumbo v8, "appops"

    #@21
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/app/AppOpsManager;

    #@27
    .line 545
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz p2, :cond_2

    #@29
    move v5, v6

    #@2a
    .line 544
    :goto_0
    const/16 v8, 0x2f

    #@2c
    invoke-virtual {v0, v8, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 546
    return v7

    #@33
    :cond_2
    move v5, v7

    #@34
    .line 545
    goto :goto_0

    #@35
    .line 547
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v1

    #@36
    .line 548
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "Vpn"

    #@39
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "Failed to set app ops for package "

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    const-string/jumbo v8, ", uid "

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5e
    .line 552
    return v6

    #@5f
    .line 549
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@60
    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 549
    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1177
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1178
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return v1

    #@a
    .line 1180
    :cond_0
    if-nez p1, :cond_2

    #@c
    .line 1181
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@e
    const/4 v2, 0x0

    #@f
    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 1192
    :cond_1
    const/4 v1, 0x1

    #@12
    monitor-exit p0

    #@13
    return v1

    #@14
    .line 1183
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@16
    array-length v2, p1

    #@17
    new-array v2, v2, [Landroid/net/Network;

    #@19
    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@1b
    .line 1184
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@1d
    if-ge v0, v1, :cond_1

    #@1f
    .line 1185
    aget-object v1, p1, v0

    #@21
    if-nez v1, :cond_3

    #@23
    .line 1186
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@25
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v2, v1, v0

    #@2a
    .line 1184
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1188
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2f
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@31
    new-instance v2, Landroid/net/Network;

    #@33
    aget-object v3, p1, v0

    #@35
    iget v3, v3, Landroid/net/Network;->netId:I

    #@37
    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    #@3a
    aput-object v2, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    goto :goto_1

    #@3d
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit p0

    #@3f
    throw v1
.end method

.method public startAlwaysOnVpn()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 370
    monitor-enter p0

    #@3
    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 373
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    monitor-exit p0

    #@a
    .line 374
    return v3

    #@b
    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    monitor-exit p0

    #@16
    .line 380
    return v3

    #@17
    :cond_1
    monitor-exit p0

    #@18
    .line 385
    new-instance v2, Landroid/content/Intent;

    #@1a
    const-string/jumbo v5, "android.net.VpnService"

    #@1d
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 386
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@23
    .line 388
    :try_start_2
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@25
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@27
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e
    move-result-object v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    :goto_0
    return v3

    #@32
    .line 370
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@33
    monitor-exit p0

    #@34
    throw v3

    #@35
    .restart local v0    # "alwaysOnPackage":Ljava/lang/String;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    move v3, v4

    #@36
    .line 388
    goto :goto_0

    #@37
    .line 389
    :catch_0
    move-exception v1

    #@38
    .line 390
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "Vpn"

    #@3b
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "VpnService "

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    const-string/jumbo v6, " failed to start"

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@59
    .line 391
    return v4
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@3
    .line 1282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 1284
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 1280
    return-void

    #@e
    .line 1285
    :catchall_0
    move-exception v2

    #@f
    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 1285
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 17
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1298
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@7
    move-result-object v6

    #@8
    .line 1299
    .local v6, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    #@a
    iget v14, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@c
    invoke-virtual {v6, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@f
    move-result-object v11

    #@10
    .line 1300
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@13
    move-result v14

    #@14
    if-nez v14, :cond_0

    #@16
    const-string/jumbo v14, "no_config_vpn"

    #@19
    .line 1301
    new-instance v15, Landroid/os/UserHandle;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@1f
    move/from16 v16, v0

    #@21
    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    #@24
    .line 1300
    invoke-virtual {v6, v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@27
    move-result v14

    #@28
    if-eqz v14, :cond_1

    #@2a
    .line 1302
    :cond_0
    new-instance v14, Ljava/lang/SecurityException;

    #@2c
    const-string/jumbo v15, "Restricted users cannot establish VPNs"

    #@2f
    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v14

    #@33
    .line 1305
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    #@36
    move-result-object v5

    #@37
    .line 1306
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@3a
    move-result-object v14

    #@3b
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 1307
    .local v3, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 1310
    .local v4, "iface":Ljava/lang/String;
    const-string/jumbo v8, ""

    #@46
    .line 1311
    .local v8, "privateKey":Ljava/lang/String;
    const-string/jumbo v12, ""

    #@49
    .line 1312
    .local v12, "userCert":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@4c
    .line 1313
    .local v1, "caCert":Ljava/lang/String;
    const-string/jumbo v10, ""

    #@4f
    .line 1314
    .local v10, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    #@51
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@53
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@56
    move-result v14

    #@57
    if-nez v14, :cond_2

    #@59
    .line 1315
    new-instance v14, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v15, "USRPKEY_"

    #@61
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v14

    #@65
    move-object/from16 v0, p1

    #@67
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@69
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v14

    #@6d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    .line 1316
    new-instance v14, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v15, "USRCERT_"

    #@79
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v14

    #@7d
    move-object/from16 v0, p1

    #@7f
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v14

    #@85
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v14

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@8e
    move-result-object v13

    #@8f
    .line 1317
    .local v13, "value":[B
    if-nez v13, :cond_6

    #@91
    const/4 v12, 0x0

    #@92
    .line 1319
    .end local v12    # "userCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_2
    :goto_0
    move-object/from16 v0, p1

    #@94
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@96
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@99
    move-result v14

    #@9a
    if-nez v14, :cond_3

    #@9c
    .line 1320
    new-instance v14, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v15, "CACERT_"

    #@a4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v14

    #@a8
    move-object/from16 v0, p1

    #@aa
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@ac
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v14

    #@b0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v14

    #@b4
    move-object/from16 v0, p2

    #@b6
    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@b9
    move-result-object v13

    #@ba
    .line 1321
    .restart local v13    # "value":[B
    if-nez v13, :cond_7

    #@bc
    const/4 v1, 0x0

    #@bd
    .line 1323
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    #@bf
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@c1
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@c4
    move-result v14

    #@c5
    if-nez v14, :cond_4

    #@c7
    .line 1324
    new-instance v14, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v15, "USRCERT_"

    #@cf
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v14

    #@d3
    move-object/from16 v0, p1

    #@d5
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@d7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v14

    #@db
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v14

    #@df
    move-object/from16 v0, p2

    #@e1
    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@e4
    move-result-object v13

    #@e5
    .line 1325
    .restart local v13    # "value":[B
    if-nez v13, :cond_8

    #@e7
    const/4 v10, 0x0

    #@e8
    .line 1327
    .end local v10    # "serverCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    #@ea
    if-nez v12, :cond_9

    #@ec
    .line 1328
    :cond_5
    new-instance v14, Ljava/lang/IllegalStateException;

    #@ee
    const-string/jumbo v15, "Cannot load credentials"

    #@f1
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f4
    throw v14

    #@f5
    .line 1317
    .restart local v1    # "caCert":Ljava/lang/String;
    .restart local v10    # "serverCert":Ljava/lang/String;
    .restart local v12    # "userCert":Ljava/lang/String;
    .restart local v13    # "value":[B
    :cond_6
    new-instance v12, Ljava/lang/String;

    #@f7
    .end local v12    # "userCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f9
    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@fc
    .restart local v12    # "userCert":Ljava/lang/String;
    goto :goto_0

    #@fd
    .line 1321
    .end local v12    # "userCert":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/String;

    #@ff
    .end local v1    # "caCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@101
    invoke-direct {v1, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@104
    .restart local v1    # "caCert":Ljava/lang/String;
    goto :goto_1

    #@105
    .line 1325
    .end local v1    # "caCert":Ljava/lang/String;
    :cond_8
    new-instance v10, Ljava/lang/String;

    #@107
    .end local v10    # "serverCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@109
    invoke-direct {v10, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@10c
    .restart local v10    # "serverCert":Ljava/lang/String;
    goto :goto_2

    #@10d
    .line 1327
    .end local v10    # "serverCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_9
    if-eqz v1, :cond_5

    #@10f
    if-eqz v10, :cond_5

    #@111
    .line 1332
    const/4 v9, 0x0

    #@112
    .line 1333
    .local v9, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@114
    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    #@116
    packed-switch v14, :pswitch_data_0

    #@119
    .line 1367
    .end local v9    # "racoon":[Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    #@11a
    .line 1368
    .local v7, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@11c
    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    #@11e
    packed-switch v14, :pswitch_data_1

    #@121
    .line 1389
    .end local v7    # "mtpd":[Ljava/lang/String;
    :goto_4
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    #@123
    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    #@126
    .line 1390
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v14, 0x1

    #@127
    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@129
    .line 1391
    move-object/from16 v0, p1

    #@12b
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    #@12d
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@12f
    .line 1392
    iput-object v4, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@131
    .line 1393
    move-object/from16 v0, p1

    #@133
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@135
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    #@137
    .line 1395
    move-object/from16 v0, p1

    #@139
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@13b
    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    #@13e
    .line 1396
    move-object/from16 v0, p1

    #@140
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@142
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@145
    move-result v14

    #@146
    if-nez v14, :cond_a

    #@148
    .line 1397
    move-object/from16 v0, p1

    #@14a
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@14c
    const-string/jumbo v15, " +"

    #@14f
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@152
    move-result-object v14

    #@153
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@156
    move-result-object v14

    #@157
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@159
    .line 1399
    :cond_a
    move-object/from16 v0, p1

    #@15b
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@15d
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@160
    move-result v14

    #@161
    if-nez v14, :cond_b

    #@163
    .line 1400
    move-object/from16 v0, p1

    #@165
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@167
    const-string/jumbo v15, " +"

    #@16a
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16d
    move-result-object v14

    #@16e
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@171
    move-result-object v14

    #@172
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@174
    .line 1402
    :cond_b
    move-object/from16 v0, p0

    #@176
    invoke-direct {v0, v2, v9, v7}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    #@179
    .line 1297
    return-void

    #@17a
    .line 1335
    .end local v2    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "racoon":[Ljava/lang/String;
    :pswitch_0
    const/4 v14, 0x6

    #@17b
    new-array v9, v14, [Ljava/lang/String;

    #@17d
    .line 1336
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@17e
    aput-object v4, v9, v14

    #@180
    move-object/from16 v0, p1

    #@182
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@184
    const/4 v15, 0x1

    #@185
    aput-object v14, v9, v15

    #@187
    const-string/jumbo v14, "udppsk"

    #@18a
    const/4 v15, 0x2

    #@18b
    aput-object v14, v9, v15

    #@18d
    move-object/from16 v0, p1

    #@18f
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@191
    const/4 v15, 0x3

    #@192
    aput-object v14, v9, v15

    #@194
    .line 1337
    move-object/from16 v0, p1

    #@196
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@198
    const/4 v15, 0x4

    #@199
    aput-object v14, v9, v15

    #@19b
    const-string/jumbo v14, "1701"

    #@19e
    const/4 v15, 0x5

    #@19f
    aput-object v14, v9, v15

    #@1a1
    .line 1339
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@1a3
    .line 1341
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_1
    const/16 v14, 0x8

    #@1a5
    new-array v9, v14, [Ljava/lang/String;

    #@1a7
    .line 1342
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@1a8
    aput-object v4, v9, v14

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@1ae
    const/4 v15, 0x1

    #@1af
    aput-object v14, v9, v15

    #@1b1
    const-string/jumbo v14, "udprsa"

    #@1b4
    const/4 v15, 0x2

    #@1b5
    aput-object v14, v9, v15

    #@1b7
    const/4 v14, 0x3

    #@1b8
    aput-object v8, v9, v14

    #@1ba
    const/4 v14, 0x4

    #@1bb
    aput-object v12, v9, v14

    #@1bd
    .line 1343
    const/4 v14, 0x5

    #@1be
    aput-object v1, v9, v14

    #@1c0
    const/4 v14, 0x6

    #@1c1
    aput-object v10, v9, v14

    #@1c3
    const-string/jumbo v14, "1701"

    #@1c6
    const/4 v15, 0x7

    #@1c7
    aput-object v14, v9, v15

    #@1c9
    .line 1345
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@1cb
    .line 1347
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_2
    const/16 v14, 0x9

    #@1cd
    new-array v9, v14, [Ljava/lang/String;

    #@1cf
    .line 1348
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@1d0
    aput-object v4, v9, v14

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@1d6
    const/4 v15, 0x1

    #@1d7
    aput-object v14, v9, v15

    #@1d9
    const-string/jumbo v14, "xauthpsk"

    #@1dc
    const/4 v15, 0x2

    #@1dd
    aput-object v14, v9, v15

    #@1df
    move-object/from16 v0, p1

    #@1e1
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@1e3
    const/4 v15, 0x3

    #@1e4
    aput-object v14, v9, v15

    #@1e6
    .line 1349
    move-object/from16 v0, p1

    #@1e8
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@1ea
    const/4 v15, 0x4

    #@1eb
    aput-object v14, v9, v15

    #@1ed
    move-object/from16 v0, p1

    #@1ef
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@1f1
    const/4 v15, 0x5

    #@1f2
    aput-object v14, v9, v15

    #@1f4
    move-object/from16 v0, p1

    #@1f6
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@1f8
    const/4 v15, 0x6

    #@1f9
    aput-object v14, v9, v15

    #@1fb
    const-string/jumbo v14, ""

    #@1fe
    const/4 v15, 0x7

    #@1ff
    aput-object v14, v9, v15

    #@201
    const/16 v14, 0x8

    #@203
    aput-object v3, v9, v14

    #@205
    .line 1351
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@207
    .line 1353
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_3
    const/16 v14, 0xb

    #@209
    new-array v9, v14, [Ljava/lang/String;

    #@20b
    .line 1354
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@20c
    aput-object v4, v9, v14

    #@20e
    move-object/from16 v0, p1

    #@210
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@212
    const/4 v15, 0x1

    #@213
    aput-object v14, v9, v15

    #@215
    const-string/jumbo v14, "xauthrsa"

    #@218
    const/4 v15, 0x2

    #@219
    aput-object v14, v9, v15

    #@21b
    const/4 v14, 0x3

    #@21c
    aput-object v8, v9, v14

    #@21e
    const/4 v14, 0x4

    #@21f
    aput-object v12, v9, v14

    #@221
    .line 1355
    const/4 v14, 0x5

    #@222
    aput-object v1, v9, v14

    #@224
    const/4 v14, 0x6

    #@225
    aput-object v10, v9, v14

    #@227
    move-object/from16 v0, p1

    #@229
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@22b
    const/4 v15, 0x7

    #@22c
    aput-object v14, v9, v15

    #@22e
    move-object/from16 v0, p1

    #@230
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@232
    const/16 v15, 0x8

    #@234
    aput-object v14, v9, v15

    #@236
    const-string/jumbo v14, ""

    #@239
    const/16 v15, 0x9

    #@23b
    aput-object v14, v9, v15

    #@23d
    const/16 v14, 0xa

    #@23f
    aput-object v3, v9, v14

    #@241
    .line 1357
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@243
    .line 1359
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_4
    const/16 v14, 0x9

    #@245
    new-array v9, v14, [Ljava/lang/String;

    #@247
    .line 1360
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@248
    aput-object v4, v9, v14

    #@24a
    move-object/from16 v0, p1

    #@24c
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@24e
    const/4 v15, 0x1

    #@24f
    aput-object v14, v9, v15

    #@251
    const-string/jumbo v14, "hybridrsa"

    #@254
    const/4 v15, 0x2

    #@255
    aput-object v14, v9, v15

    #@257
    .line 1361
    const/4 v14, 0x3

    #@258
    aput-object v1, v9, v14

    #@25a
    const/4 v14, 0x4

    #@25b
    aput-object v10, v9, v14

    #@25d
    move-object/from16 v0, p1

    #@25f
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@261
    const/4 v15, 0x5

    #@262
    aput-object v14, v9, v15

    #@264
    move-object/from16 v0, p1

    #@266
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@268
    const/4 v15, 0x6

    #@269
    aput-object v14, v9, v15

    #@26b
    const-string/jumbo v14, ""

    #@26e
    const/4 v15, 0x7

    #@26f
    aput-object v14, v9, v15

    #@271
    const/16 v14, 0x8

    #@273
    aput-object v3, v9, v14

    #@275
    .line 1363
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@277
    .line 1370
    .end local v9    # "racoon":[Ljava/lang/String;
    .restart local v7    # "mtpd":[Ljava/lang/String;
    :pswitch_5
    const/16 v14, 0x14

    #@279
    new-array v7, v14, [Ljava/lang/String;

    #@27b
    .line 1371
    .end local v7    # "mtpd":[Ljava/lang/String;
    const/4 v14, 0x0

    #@27c
    aput-object v4, v7, v14

    #@27e
    const-string/jumbo v14, "pptp"

    #@281
    const/4 v15, 0x1

    #@282
    aput-object v14, v7, v15

    #@284
    move-object/from16 v0, p1

    #@286
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@288
    const/4 v15, 0x2

    #@289
    aput-object v14, v7, v15

    #@28b
    const-string/jumbo v14, "1723"

    #@28e
    const/4 v15, 0x3

    #@28f
    aput-object v14, v7, v15

    #@291
    .line 1372
    const-string/jumbo v14, "name"

    #@294
    const/4 v15, 0x4

    #@295
    aput-object v14, v7, v15

    #@297
    move-object/from16 v0, p1

    #@299
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@29b
    const/4 v15, 0x5

    #@29c
    aput-object v14, v7, v15

    #@29e
    const-string/jumbo v14, "password"

    #@2a1
    const/4 v15, 0x6

    #@2a2
    aput-object v14, v7, v15

    #@2a4
    move-object/from16 v0, p1

    #@2a6
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@2a8
    const/4 v15, 0x7

    #@2a9
    aput-object v14, v7, v15

    #@2ab
    .line 1373
    const-string/jumbo v14, "linkname"

    #@2ae
    const/16 v15, 0x8

    #@2b0
    aput-object v14, v7, v15

    #@2b2
    const-string/jumbo v14, "vpn"

    #@2b5
    const/16 v15, 0x9

    #@2b7
    aput-object v14, v7, v15

    #@2b9
    const-string/jumbo v14, "refuse-eap"

    #@2bc
    const/16 v15, 0xa

    #@2be
    aput-object v14, v7, v15

    #@2c0
    const-string/jumbo v14, "nodefaultroute"

    #@2c3
    const/16 v15, 0xb

    #@2c5
    aput-object v14, v7, v15

    #@2c7
    .line 1374
    const-string/jumbo v14, "usepeerdns"

    #@2ca
    const/16 v15, 0xc

    #@2cc
    aput-object v14, v7, v15

    #@2ce
    const-string/jumbo v14, "idle"

    #@2d1
    const/16 v15, 0xd

    #@2d3
    aput-object v14, v7, v15

    #@2d5
    const-string/jumbo v14, "1800"

    #@2d8
    const/16 v15, 0xe

    #@2da
    aput-object v14, v7, v15

    #@2dc
    const-string/jumbo v14, "mtu"

    #@2df
    const/16 v15, 0xf

    #@2e1
    aput-object v14, v7, v15

    #@2e3
    const-string/jumbo v14, "1400"

    #@2e6
    const/16 v15, 0x10

    #@2e8
    aput-object v14, v7, v15

    #@2ea
    const-string/jumbo v14, "mru"

    #@2ed
    const/16 v15, 0x11

    #@2ef
    aput-object v14, v7, v15

    #@2f1
    const-string/jumbo v14, "1400"

    #@2f4
    const/16 v15, 0x12

    #@2f6
    aput-object v14, v7, v15

    #@2f8
    .line 1375
    move-object/from16 v0, p1

    #@2fa
    iget-boolean v14, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@2fc
    if-eqz v14, :cond_c

    #@2fe
    const-string/jumbo v14, "+mppe"

    #@301
    :goto_5
    const/16 v15, 0x13

    #@303
    aput-object v14, v7, v15

    #@305
    .line 1377
    .local v7, "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    #@307
    .line 1375
    .end local v7    # "mtpd":[Ljava/lang/String;
    :cond_c
    const-string/jumbo v14, "nomppe"

    #@30a
    goto :goto_5

    #@30b
    .line 1380
    .local v7, "mtpd":[Ljava/lang/String;
    :pswitch_6
    const/16 v14, 0x14

    #@30d
    new-array v7, v14, [Ljava/lang/String;

    #@30f
    .line 1381
    .end local v7    # "mtpd":[Ljava/lang/String;
    const/4 v14, 0x0

    #@310
    aput-object v4, v7, v14

    #@312
    const-string/jumbo v14, "l2tp"

    #@315
    const/4 v15, 0x1

    #@316
    aput-object v14, v7, v15

    #@318
    move-object/from16 v0, p1

    #@31a
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@31c
    const/4 v15, 0x2

    #@31d
    aput-object v14, v7, v15

    #@31f
    const-string/jumbo v14, "1701"

    #@322
    const/4 v15, 0x3

    #@323
    aput-object v14, v7, v15

    #@325
    move-object/from16 v0, p1

    #@327
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@329
    const/4 v15, 0x4

    #@32a
    aput-object v14, v7, v15

    #@32c
    .line 1382
    const-string/jumbo v14, "name"

    #@32f
    const/4 v15, 0x5

    #@330
    aput-object v14, v7, v15

    #@332
    move-object/from16 v0, p1

    #@334
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@336
    const/4 v15, 0x6

    #@337
    aput-object v14, v7, v15

    #@339
    const-string/jumbo v14, "password"

    #@33c
    const/4 v15, 0x7

    #@33d
    aput-object v14, v7, v15

    #@33f
    move-object/from16 v0, p1

    #@341
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@343
    const/16 v15, 0x8

    #@345
    aput-object v14, v7, v15

    #@347
    .line 1383
    const-string/jumbo v14, "linkname"

    #@34a
    const/16 v15, 0x9

    #@34c
    aput-object v14, v7, v15

    #@34e
    const-string/jumbo v14, "vpn"

    #@351
    const/16 v15, 0xa

    #@353
    aput-object v14, v7, v15

    #@355
    const-string/jumbo v14, "refuse-eap"

    #@358
    const/16 v15, 0xb

    #@35a
    aput-object v14, v7, v15

    #@35c
    const-string/jumbo v14, "nodefaultroute"

    #@35f
    const/16 v15, 0xc

    #@361
    aput-object v14, v7, v15

    #@363
    .line 1384
    const-string/jumbo v14, "usepeerdns"

    #@366
    const/16 v15, 0xd

    #@368
    aput-object v14, v7, v15

    #@36a
    const-string/jumbo v14, "idle"

    #@36d
    const/16 v15, 0xe

    #@36f
    aput-object v14, v7, v15

    #@371
    const-string/jumbo v14, "1800"

    #@374
    const/16 v15, 0xf

    #@376
    aput-object v14, v7, v15

    #@378
    const-string/jumbo v14, "mtu"

    #@37b
    const/16 v15, 0x10

    #@37d
    aput-object v14, v7, v15

    #@37f
    const-string/jumbo v14, "1400"

    #@382
    const/16 v15, 0x11

    #@384
    aput-object v14, v7, v15

    #@386
    const-string/jumbo v14, "mru"

    #@389
    const/16 v15, 0x12

    #@38b
    aput-object v14, v7, v15

    #@38d
    const-string/jumbo v14, "1400"

    #@390
    const/16 v15, 0x13

    #@392
    aput-object v14, v7, v15

    #@394
    .line 1386
    .local v7, "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    #@396
    .line 1333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@3a4
    .line 1368
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1420
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@7
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@a
    .line 1421
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@d
    .line 1423
    const-string/jumbo v0, "LegacyVpnRunner"

    #@10
    monitor-enter v0

    #@11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 1418
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method
