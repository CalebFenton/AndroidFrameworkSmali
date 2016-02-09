.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$1;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnUsers:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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

.method static synthetic -set5(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
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

.method static synthetic -wrap1(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

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
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 119
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    #@8
    .line 128
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@a
    .line 129
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@c
    .line 734
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    #@11
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    #@13
    .line 136
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@15
    .line 137
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    #@17
    .line 138
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@19
    .line 139
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    #@1b
    .line 141
    const-string/jumbo v0, "[Legacy VPN]"

    #@1e
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@20
    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@22
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@24
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@27
    move-result v0

    #@28
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@2a
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    #@2c
    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 149
    :goto_0
    if-nez p4, :cond_0

    #@31
    .line 151
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    #@33
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    #@36
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@38
    .line 167
    new-instance v3, Landroid/content/IntentFilter;

    #@3a
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@3d
    .line 168
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@40
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43
    .line 169
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@46
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@49
    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@4b
    .line 171
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@4d
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4f
    move-object v5, v4

    #@50
    .line 170
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@53
    .line 174
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/net/NetworkInfo;

    #@55
    const-string/jumbo v1, "VPN"

    #@58
    const-string/jumbo v2, ""

    #@5b
    const/16 v4, 0x11

    #@5d
    invoke-direct {v0, v4, v7, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@60
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@62
    .line 176
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@64
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@67
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@69
    .line 177
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@6b
    const/4 v1, 0x4

    #@6c
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@6f
    .line 178
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@71
    const/16 v1, 0xf

    #@73
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@76
    .line 135
    return-void

    #@77
    .line 146
    :catch_0
    move-exception v6

    #@78
    .line 147
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "Vpn"

    #@7b
    const-string/jumbo v1, "Problem registering observer"

    #@7e
    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@81
    goto :goto_0
.end method

.method private addVpnUserLocked(I)V
    .locals 8
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 620
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 621
    new-instance v5, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v6, "VPN is not active"

    #@a
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 624
    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@10
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@12
    if-eqz v5, :cond_5

    #@14
    .line 626
    const/4 v0, -0x1

    #@15
    .local v0, "start":I
    const/4 v1, -0x1

    #@16
    .line 627
    .local v1, "stop":I
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@18
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@1a
    invoke-direct {p0, v5, p1}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    .local v3, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_3

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Ljava/lang/Integer;

    #@2e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v2

    #@32
    .line 628
    .local v2, "uid":I
    if-ne v0, v7, :cond_2

    #@34
    .line 629
    move v0, v2

    #@35
    .line 634
    :cond_1
    :goto_1
    move v1, v2

    #@36
    goto :goto_0

    #@37
    .line 630
    :cond_2
    add-int/lit8 v5, v1, 0x1

    #@39
    if-eq v2, v5, :cond_1

    #@3b
    .line 631
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@3d
    new-instance v6, Landroid/net/UidRange;

    #@3f
    invoke-direct {v6, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    #@42
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 632
    move v0, v2

    #@46
    goto :goto_1

    #@47
    .line 636
    .end local v2    # "uid":I
    :cond_3
    if-eq v0, v7, :cond_4

    #@49
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@4b
    new-instance v6, Landroid/net/UidRange;

    #@4d
    invoke-direct {v6, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    #@50
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 655
    .end local v0    # "start":I
    .end local v1    # "stop":I
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    #@56
    .line 619
    return-void

    #@57
    .line 637
    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@59
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@5b
    if-eqz v5, :cond_8

    #@5d
    .line 639
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    #@60
    move-result-object v4

    #@61
    .line 640
    .local v4, "userRange":Landroid/net/UidRange;
    iget v0, v4, Landroid/net/UidRange;->start:I

    #@63
    .line 641
    .restart local v0    # "start":I
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@65
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@67
    invoke-direct {p0, v5, p1}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    #@6a
    move-result-object v5

    #@6b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v3

    #@6f
    .restart local v3    # "uid$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v5

    #@73
    if-eqz v5, :cond_7

    #@75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v5

    #@79
    check-cast v5, Ljava/lang/Integer;

    #@7b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@7e
    move-result v2

    #@7f
    .line 642
    .restart local v2    # "uid":I
    if-ne v2, v0, :cond_6

    #@81
    .line 643
    add-int/lit8 v0, v0, 0x1

    #@83
    goto :goto_3

    #@84
    .line 645
    :cond_6
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@86
    new-instance v6, Landroid/net/UidRange;

    #@88
    add-int/lit8 v7, v2, -0x1

    #@8a
    invoke-direct {v6, v0, v7}, Landroid/net/UidRange;-><init>(II)V

    #@8d
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    .line 646
    add-int/lit8 v0, v2, 0x1

    #@92
    goto :goto_3

    #@93
    .line 649
    .end local v2    # "uid":I
    :cond_7
    iget v5, v4, Landroid/net/UidRange;->stop:I

    #@95
    if-gt v0, v5, :cond_4

    #@97
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@99
    new-instance v6, Landroid/net/UidRange;

    #@9b
    iget v7, v4, Landroid/net/UidRange;->stop:I

    #@9d
    invoke-direct {v6, v0, v7}, Landroid/net/UidRange;-><init>(II)V

    #@a0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a3
    goto :goto_2

    #@a4
    .line 652
    .end local v0    # "start":I
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    .end local v4    # "userRange":Landroid/net/UidRange;
    :cond_8
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@a6
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    #@a9
    move-result-object v6

    #@aa
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ad
    goto :goto_2
.end method

.method private agentConnect()V
    .locals 15

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0xc

    #@3
    .line 413
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    #@6
    move-result-object v7

    #@7
    .line 415
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@15
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@18
    .line 421
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@1e
    .line 422
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@20
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@22
    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 424
    new-instance v9, Landroid/net/NetworkMisc;

    #@27
    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    #@2a
    .line 425
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2c
    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    #@2e
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    #@30
    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v10

    #@34
    .line 429
    .local v10, "token":J
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    #@36
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    #@38
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@3a
    const-string/jumbo v4, "VPN"

    #@3d
    .line 430
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@3f
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@41
    const/4 v8, 0x0

    #@42
    move-object v1, p0

    #@43
    .line 429
    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@46
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 437
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 440
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@4d
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    #@50
    .line 442
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@52
    if-nez v0, :cond_3

    #@54
    .line 443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@57
    move-result-wide v10

    #@58
    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@5a
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@61
    move-result-object v14

    #@62
    .line 448
    .local v14, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 450
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v13

    #@69
    .local v13, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_3

    #@6f
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v12

    #@73
    check-cast v12, Landroid/content/pm/UserInfo;

    #@75
    .line 451
    .local v12, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_1

    #@7b
    .line 452
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    #@7d
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    #@80
    goto :goto_1

    #@81
    .line 418
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "token":J
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    .end local v13    # "user$iterator":Ljava/util/Iterator;
    .end local v14    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@83
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@86
    goto :goto_0

    #@87
    .line 436
    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    #@88
    .line 437
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8b
    .line 436
    throw v0

    #@8c
    .line 447
    :catchall_1
    move-exception v0

    #@8d
    .line 448
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@90
    .line 447
    throw v0

    #@91
    .line 456
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@93
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@95
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@97
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@9a
    move-result v2

    #@9b
    new-array v2, v2, [Landroid/net/UidRange;

    #@9d
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a0
    move-result-object v0

    #@a1
    check-cast v0, [Landroid/net/UidRange;

    #@a3
    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    #@a6
    .line 412
    return-void
.end method

.method private agentDisconnect()V
    .locals 2

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 474
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    #@f
    .line 475
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@12
    .line 472
    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    #@0
    .prologue
    .line 468
    new-instance v0, Landroid/net/NetworkInfo;

    #@2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@7
    .line 469
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    #@a
    .line 467
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
    .line 460
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@5
    .line 461
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@7
    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 462
    if-eqz p2, :cond_0

    #@c
    .line 463
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@f
    .line 459
    :cond_0
    return-void
.end method

.method private enforceControlPermission()V
    .locals 3

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    #@5
    const-string/jumbo v2, "Unauthorized Caller"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 765
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 872
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
    .line 874
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
    .line 875
    return-object v0

    #@23
    .line 879
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
    .line 336
    const-string/jumbo v3, "[Legacy VPN]"

    #@3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 337
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@c
    move-result v3

    #@d
    return v3

    #@e
    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@13
    move-result-object v1

    #@14
    .line 342
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 346
    .local v2, "result":I
    :goto_0
    return v2

    #@19
    .line 343
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    #@1a
    .line 344
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
    .line 610
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    #@2
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@5
    .line 611
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
    .line 612
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@18
    move-result v2

    #@19
    .line 613
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
    .line 615
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
    .line 605
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

.method private isRunningLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 599
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
    .line 328
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
    .line 331
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
    .line 358
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@4
    iget-boolean v4, v14, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    #@6
    .line 359
    .local v4, "allowIPv4":Z
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@a
    iget-boolean v5, v14, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    #@c
    .line 361
    .local v5, "allowIPv6":Z
    new-instance v11, Landroid/net/LinkProperties;

    #@e
    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    #@11
    .line 363
    .local v11, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    #@13
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@15
    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@18
    .line 365
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1c
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@1e
    if-eqz v14, :cond_0

    #@20
    .line 366
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
    .line 367
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v11, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@39
    .line 368
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@3c
    move-result-object v14

    #@3d
    instance-of v14, v14, Ljava/net/Inet4Address;

    #@3f
    or-int/2addr v4, v14

    #@40
    .line 369
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
    .line 373
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
    .line 374
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
    .line 375
    .local v12, "route":Landroid/net/RouteInfo;
    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@69
    .line 376
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@6c
    move-result-object v14

    #@6d
    invoke-virtual {v14}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@70
    move-result-object v2

    #@71
    .line 377
    .local v2, "address":Ljava/net/InetAddress;
    instance-of v14, v2, Ljava/net/Inet4Address;

    #@73
    or-int/2addr v4, v14

    #@74
    .line 378
    instance-of v14, v2, Ljava/net/Inet6Address;

    #@76
    or-int/2addr v5, v14

    #@77
    goto :goto_1

    #@78
    .line 382
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
    .line 383
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
    .line 384
    .local v7, "dnsServer":Ljava/lang/String;
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@99
    move-result-object v2

    #@9a
    .line 385
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-virtual {v11, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@9d
    .line 386
    instance-of v14, v2, Ljava/net/Inet4Address;

    #@9f
    or-int/2addr v4, v14

    #@a0
    .line 387
    instance-of v14, v2, Ljava/net/Inet6Address;

    #@a2
    or-int/2addr v5, v14

    #@a3
    goto :goto_2

    #@a4
    .line 391
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v7    # "dnsServer":Ljava/lang/String;
    .end local v8    # "dnsServer$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_3

    #@a6
    .line 392
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
    .line 394
    :cond_3
    if-nez v5, :cond_4

    #@bb
    .line 395
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
    .line 399
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    .line 400
    .local v6, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@d5
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@d7
    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@d9
    if-eqz v14, :cond_5

    #@db
    .line 401
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
    .line 402
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
    .line 405
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
    .line 409
    return-object v11
.end method

.method private onUserAdded(I)V
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 685
    monitor-enter p0

    #@1
    .line 686
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@6
    move-result-object v1

    #@7
    .line 687
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@a
    move-result-object v3

    #@b
    .line 688
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 690
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    #@14
    .line 691
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 692
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    .line 693
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@21
    move-result v4

    #@22
    new-array v4, v4, [Landroid/net/UidRange;

    #@24
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, [Landroid/net/UidRange;

    #@2a
    invoke-virtual {v5, v4}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    #@2e
    .line 683
    return-void

    #@2f
    .line 695
    :catch_0
    move-exception v0

    #@30
    .line 696
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Vpn"

    #@33
    const-string/jumbo v5, "Failed to add restricted user to owner"

    #@36
    invoke-static {v4, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 685
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@3b
    monitor-exit p0

    #@3c
    throw v4
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 704
    monitor-enter p0

    #@1
    .line 705
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@6
    move-result-object v1

    #@7
    .line 706
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@a
    move-result-object v2

    #@b
    .line 707
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 709
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :cond_0
    :goto_0
    monitor-exit p0

    #@15
    .line 702
    return-void

    #@16
    .line 710
    :catch_0
    move-exception v0

    #@17
    .line 711
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "Vpn"

    #@1a
    const-string/jumbo v4, "Failed to remove restricted user to owner"

    #@1d
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 704
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@22
    monitor-exit p0

    #@23
    throw v3
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 8
    .param p1, "newPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 255
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 256
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    #@b
    .line 257
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    #@e
    .line 258
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    #@13
    .line 259
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@16
    .line 260
    const/4 v1, 0x0

    #@17
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@19
    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 266
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@1f
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$Connection;->-get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    #@22
    move-result-object v1

    #@23
    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@26
    move-result-object v4

    #@27
    .line 266
    const v5, 0xffffff

    #@2a
    .line 267
    const/4 v6, 0x0

    #@2b
    const/4 v7, 0x1

    #@2c
    .line 266
    invoke-interface {v1, v5, v4, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 271
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@31
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@33
    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@36
    .line 272
    const/4 v1, 0x0

    #@37
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    .line 279
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
    .line 284
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
    .line 285
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@69
    .line 286
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
    .line 288
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
    .line 292
    :goto_3
    const/4 v1, 0x0

    #@79
    :try_start_6
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@7b
    .line 294
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@7d
    const-string/jumbo v4, "prepare"

    #@80
    invoke-direct {p0, v1, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@83
    .line 296
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 251
    return-void

    #@87
    .line 273
    :cond_2
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@89
    if-eqz v1, :cond_1

    #@8b
    .line 274
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@8d
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@90
    .line 275
    const/4 v1, 0x0

    #@91
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@93
    goto :goto_1

    #@94
    .line 295
    :catchall_0
    move-exception v1

    #@95
    .line 296
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@98
    .line 295
    throw v1

    #@99
    .line 280
    :catch_0
    move-exception v0

    #@9a
    .line 281
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
    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@c4
    .line 290
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
    .line 268
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
    .line 784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 786
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
    .line 788
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 783
    return-void

    #@10
    .line 787
    :catchall_0
    move-exception v2

    #@11
    .line 788
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 787
    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 672
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 673
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "VPN is not active"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 675
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    .line 676
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 677
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@18
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1b
    move-result v1

    #@1c
    new-array v1, v1, [Landroid/net/UidRange;

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, [Landroid/net/UidRange;

    #@24
    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    #@27
    .line 679
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@29
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    #@2c
    .line 680
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    #@2e
    .line 671
    return-void
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
    .line 1019
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    #@4
    .line 1022
    const-string/jumbo v0, "[Legacy VPN]"

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    #@a
    .line 1023
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@c
    const-string/jumbo v1, "startLegacyVpn"

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@12
    .line 1026
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@14
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@19
    .line 1027
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 1018
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
    .locals 6
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
    .line 661
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    #@3
    move-result-object v3

    #@4
    .line 662
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 663
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

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
    .line 664
    .local v0, "range":Landroid/net/UidRange;
    iget v4, v0, Landroid/net/UidRange;->start:I

    #@1d
    iget v5, v3, Landroid/net/UidRange;->start:I

    #@1f
    if-lt v4, v5, :cond_0

    #@21
    iget v4, v0, Landroid/net/UidRange;->stop:I

    #@23
    iget v5, v3, Landroid/net/UidRange;->stop:I

    #@25
    if-gt v4, v5, :cond_0

    #@27
    .line 665
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 668
    .end local v0    # "range":Landroid/net/UidRange;
    :cond_1
    return-object v2
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 4
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 194
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
    .line 195
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@28
    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 196
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 197
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@31
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@33
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@36
    .line 193
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
    .line 793
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 794
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return v1

    #@a
    .line 796
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@c
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    .line 797
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
    .line 798
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

.method public declared-synchronized appliesToUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 852
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
    .line 853
    return v3

    #@a
    .line 855
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

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
    .line 856
    .local v0, "uidRange":Landroid/net/UidRange;
    iget v2, v0, Landroid/net/UidRange;->start:I

    #@1e
    if-gt v2, p1, :cond_1

    #@20
    iget v2, v0, Landroid/net/UidRange;->stop:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    if-gt p1, v2, :cond_1

    #@24
    .line 857
    const/4 v2, 0x1

    #@25
    monitor-exit p0

    #@26
    return v2

    #@27
    .end local v0    # "uidRange":Landroid/net/UidRange;
    :cond_2
    monitor-exit p0

    #@28
    .line 860
    return v3

    #@29
    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 28
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 489
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
    .line 490
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
    .line 491
    const/16 v24, 0x0

    #@1d
    monitor-exit p0

    #@1e
    return-object v24

    #@1f
    .line 494
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
    .line 495
    const/16 v24, 0x0

    #@31
    monitor-exit p0

    #@32
    return-object v24

    #@33
    .line 498
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
    .line 499
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
    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    move-result-wide v20

    #@54
    .line 503
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
    .line 504
    .local v23, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@63
    move-result v24

    #@64
    if-nez v24, :cond_2

    #@66
    const-string/jumbo v24, "no_config_vpn"

    #@69
    .line 505
    new-instance v25, Landroid/os/UserHandle;

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@6f
    move/from16 v26, v0

    #@71
    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    #@74
    .line 504
    move-object/from16 v0, v24

    #@76
    move-object/from16 v1, v25

    #@78
    invoke-virtual {v14, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@7b
    move-result v24

    #@7c
    if-eqz v24, :cond_3

    #@7e
    .line 506
    :cond_2
    new-instance v24, Ljava/lang/SecurityException;

    #@80
    const-string/jumbo v25, "Restricted users cannot establish VPNs"

    #@83
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@86
    throw v24
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@87
    .line 517
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v8

    #@88
    .line 518
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v24, Ljava/lang/SecurityException;

    #@8a
    new-instance v25, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v26, "Cannot find "

    #@92
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v25

    #@96
    move-object/from16 v0, p1

    #@98
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@9a
    move-object/from16 v26, v0

    #@9c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v25

    #@a0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v25

    #@a4
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a8
    .line 519
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v24

    #@a9
    .line 520
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ac
    .line 519
    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ad
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "mgr":Landroid/os/UserManager;
    .end local v20    # "token":J
    :catchall_1
    move-exception v24

    #@ae
    monitor-exit p0

    #@af
    throw v24

    #@b0
    .line 509
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "token":J
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@b3
    move-result-object v24

    #@b4
    .line 510
    move-object/from16 v0, p0

    #@b6
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@b8
    move/from16 v25, v0

    #@ba
    const/16 v26, 0x0

    #@bc
    const/16 v27, 0x0

    #@be
    .line 509
    move-object/from16 v0, v24

    #@c0
    move-object/from16 v1, v26

    #@c2
    move/from16 v2, v27

    #@c4
    move/from16 v3, v25

    #@c6
    invoke-interface {v0, v12, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@c9
    move-result-object v11

    #@ca
    .line 511
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_4

    #@cc
    .line 512
    new-instance v24, Ljava/lang/SecurityException;

    #@ce
    new-instance v25, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v26, "Cannot find "

    #@d6
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v25

    #@da
    move-object/from16 v0, p1

    #@dc
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@de
    move-object/from16 v26, v0

    #@e0
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v25

    #@e4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v25

    #@e8
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v24

    #@ec
    .line 514
    :cond_4
    const-string/jumbo v24, "android.permission.BIND_VPN_SERVICE"

    #@ef
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@f1
    move-object/from16 v25, v0

    #@f3
    move-object/from16 v0, v25

    #@f5
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@f7
    move-object/from16 v25, v0

    #@f9
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fc
    move-result v24

    #@fd
    if-nez v24, :cond_5

    #@ff
    .line 515
    new-instance v24, Ljava/lang/SecurityException;

    #@101
    new-instance v25, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    move-object/from16 v0, p1

    #@108
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@10a
    move-object/from16 v26, v0

    #@10c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v25

    #@110
    const-string/jumbo v26, " does not require "

    #@113
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v25

    #@117
    const-string/jumbo v26, "android.permission.BIND_VPN_SERVICE"

    #@11a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v25

    #@11e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v25

    #@122
    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@125
    throw v24
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@126
    .line 520
    :cond_5
    :try_start_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@129
    .line 524
    move-object/from16 v0, p0

    #@12b
    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@12d
    .line 525
    .local v15, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@131
    move-object/from16 v17, v0

    #@133
    .line 526
    .local v17, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@137
    move-object/from16 v16, v0

    #@139
    .line 527
    .local v16, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@13d
    move-object/from16 v18, v0

    #@13f
    .line 528
    .local v18, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v24, 0x0

    #@141
    move-object/from16 v0, v24

    #@143
    move-object/from16 v1, p0

    #@145
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@147
    .line 529
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@14b
    move-object/from16 v19, v0

    #@14d
    .line 532
    .local v19, "oldUsers":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    move-object/from16 v0, p1

    #@14f
    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    #@151
    move/from16 v24, v0

    #@153
    move-object/from16 v0, p0

    #@155
    move/from16 v1, v24

    #@157
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    #@15a
    move-result v24

    #@15b
    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@15e
    move-result-object v22

    #@15f
    .line 534
    .local v22, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@161
    const-string/jumbo v25, "establish"

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, v24

    #@168
    move-object/from16 v2, v25

    #@16a
    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@16d
    .line 535
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@170
    move-result v24

    #@171
    move-object/from16 v0, p0

    #@173
    move/from16 v1, v24

    #@175
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    #@178
    move-result-object v13

    #@179
    .line 538
    .local v13, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    .line 539
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    #@180
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@182
    move-object/from16 v24, v0

    #@184
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@187
    move-result-object v5

    #@188
    .local v5, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@18b
    move-result v24

    #@18c
    if-eqz v24, :cond_6

    #@18e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@191
    move-result-object v4

    #@192
    check-cast v4, Landroid/net/LinkAddress;

    #@194
    .line 540
    .local v4, "address":Landroid/net/LinkAddress;
    const-string/jumbo v24, " "

    #@197
    move-object/from16 v0, v24

    #@199
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v24

    #@19d
    move-object/from16 v0, v24

    #@19f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1a2
    goto :goto_0

    #@1a3
    .line 583
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "address$iterator":Ljava/util/Iterator;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v13    # "interfaze":Ljava/lang/String;
    :catch_1
    move-exception v10

    #@1a4
    .line 584
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_9
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1a7
    .line 585
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    #@1aa
    .line 587
    move-object/from16 v0, p0

    #@1ac
    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1ae
    .line 588
    move-object/from16 v0, v16

    #@1b0
    move-object/from16 v1, p0

    #@1b2
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@1b4
    .line 589
    move-object/from16 v0, v19

    #@1b6
    move-object/from16 v1, p0

    #@1b8
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@1ba
    .line 590
    move-object/from16 v0, v18

    #@1bc
    move-object/from16 v1, p0

    #@1be
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@1c0
    .line 591
    move-object/from16 v0, v17

    #@1c2
    move-object/from16 v1, p0

    #@1c4
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@1c6
    .line 592
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1c7
    .line 542
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "address$iterator":Ljava/util/Iterator;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "interfaze":Ljava/lang/String;
    :cond_6
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v24

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    move-object/from16 v1, v24

    #@1cf
    invoke-direct {v0, v13, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    #@1d2
    move-result v24

    #@1d3
    const/16 v25, 0x1

    #@1d5
    move/from16 v0, v24

    #@1d7
    move/from16 v1, v25

    #@1d9
    if-ge v0, v1, :cond_7

    #@1db
    .line 543
    new-instance v24, Ljava/lang/IllegalArgumentException;

    #@1dd
    const-string/jumbo v25, "At least one address must be specified"

    #@1e0
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e3
    throw v24

    #@1e4
    .line 545
    :cond_7
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    #@1e6
    const/16 v24, 0x0

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    move-object/from16 v1, v24

    #@1ec
    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V

    #@1ef
    .line 546
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@1f3
    move-object/from16 v24, v0

    #@1f5
    .line 548
    new-instance v25, Landroid/os/UserHandle;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@1fb
    move/from16 v26, v0

    #@1fd
    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    #@200
    .line 547
    const v26, 0x4000001

    #@203
    .line 546
    move-object/from16 v0, v24

    #@205
    move/from16 v1, v26

    #@207
    move-object/from16 v2, v25

    #@209
    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@20c
    move-result v24

    #@20d
    if-nez v24, :cond_8

    #@20f
    .line 549
    new-instance v24, Ljava/lang/IllegalStateException;

    #@211
    new-instance v25, Ljava/lang/StringBuilder;

    #@213
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@216
    const-string/jumbo v26, "Cannot bind "

    #@219
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v25

    #@21d
    move-object/from16 v0, p1

    #@21f
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@221
    move-object/from16 v26, v0

    #@223
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v25

    #@227
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22a
    move-result-object v25

    #@22b
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22e
    throw v24

    #@22f
    .line 552
    :cond_8
    move-object/from16 v0, p0

    #@231
    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #@233
    .line 553
    move-object/from16 v0, p0

    #@235
    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@237
    .line 556
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    #@23b
    move-object/from16 v24, v0

    #@23d
    move-object/from16 v0, v24

    #@23f
    move-object/from16 v1, p1

    #@241
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@243
    .line 557
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@247
    move-object/from16 v24, v0

    #@249
    move-object/from16 v0, v24

    #@24b
    move-object/from16 v1, p1

    #@24d
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@24f
    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@252
    move-result-wide v24

    #@253
    move-wide/from16 v0, v24

    #@255
    move-object/from16 v2, p1

    #@257
    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@259
    .line 559
    move-object/from16 v0, p1

    #@25b
    move-object/from16 v1, p0

    #@25d
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@25f
    .line 562
    new-instance v24, Ljava/util/ArrayList;

    #@261
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@264
    move-object/from16 v0, v24

    #@266
    move-object/from16 v1, p0

    #@268
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    #@26a
    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    #@26d
    .line 566
    if-eqz v16, :cond_9

    #@26f
    .line 567
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@273
    move-object/from16 v24, v0

    #@275
    move-object/from16 v0, v24

    #@277
    move-object/from16 v1, v16

    #@279
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@27c
    .line 572
    :cond_9
    move-object/from16 v0, p0

    #@27e
    move-object/from16 v1, v18

    #@280
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    #@283
    .line 573
    if-eqz v17, :cond_a

    #@285
    move-object/from16 v0, v17

    #@287
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@28a
    move-result v24

    #@28b
    if-eqz v24, :cond_b

    #@28d
    .line 578
    :cond_a
    :goto_1
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@290
    move-result-object v24

    #@291
    move-object/from16 v0, p1

    #@293
    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@295
    move/from16 v25, v0

    #@297
    invoke-static/range {v24 .. v25}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@29a
    .line 594
    :try_start_c
    const-string/jumbo v24, "Vpn"

    #@29d
    new-instance v25, Ljava/lang/StringBuilder;

    #@29f
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2a2
    const-string/jumbo v26, "Established by "

    #@2a5
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v25

    #@2a9
    move-object/from16 v0, p1

    #@2ab
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@2ad
    move-object/from16 v26, v0

    #@2af
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v25

    #@2b3
    const-string/jumbo v26, " on "

    #@2b6
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v25

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@2be
    move-object/from16 v26, v0

    #@2c0
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v25

    #@2c4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c7
    move-result-object v25

    #@2c8
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@2cb
    monitor-exit p0

    #@2cc
    .line 595
    return-object v22

    #@2cd
    .line 574
    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    #@2cf
    move-object/from16 v1, v17

    #@2d1
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    #@2d4
    goto :goto_1

    #@2d5
    .line 579
    :catch_2
    move-exception v9

    #@2d6
    .line 580
    .local v9, "e":Ljava/io/IOException;
    new-instance v24, Ljava/lang/IllegalStateException;

    #@2d8
    .line 581
    new-instance v25, Ljava/lang/StringBuilder;

    #@2da
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2dd
    const-string/jumbo v26, "Cannot set tunnel\'s fd as blocking="

    #@2e0
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v25

    #@2e4
    move-object/from16 v0, p1

    #@2e6
    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@2e8
    move/from16 v26, v0

    #@2ea
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v25

    #@2ee
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f1
    move-result-object v25

    #@2f2
    .line 580
    move-object/from16 v0, v24

    #@2f4
    move-object/from16 v1, v25

    #@2f6
    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2f9
    throw v24
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1069
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1070
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@7
    return-object v0

    #@8
    .line 1072
    :cond_0
    return-object v1
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1048
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@4
    .line 1049
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
    .line 1057
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
    .line 1059
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    #@a
    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    #@d
    .line 1060
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@f
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@11
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    #@13
    .line 1061
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@15
    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    #@18
    move-result v1

    #@19
    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    #@1b
    .line 1062
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@1d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 1063
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    #@25
    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 1065
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
    .line 354
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
    .line 350
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
    .line 830
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 831
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 833
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
    .line 721
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@3
    .line 722
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
    .line 841
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 842
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v1

    #@a
    .line 845
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    #@c
    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    #@f
    .line 846
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@11
    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    #@13
    .line 847
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@15
    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 848
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
    .line 728
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
    .line 726
    return-void

    #@8
    :catchall_0
    move-exception v1

    #@9
    monitor-exit p0

    #@a
    throw v1

    #@b
    .line 729
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    monitor-enter p0

    #@3
    .line 220
    if-eqz p1, :cond_2

    #@5
    .line 221
    :try_start_0
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@7
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 224
    const-string/jumbo v0, "[Legacy VPN]"

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 226
    return v2

    #@23
    :cond_0
    monitor-exit p0

    #@24
    .line 228
    return v3

    #@25
    .line 229
    :cond_1
    :try_start_1
    const-string/jumbo v0, "[Legacy VPN]"

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_2

    #@2e
    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 238
    :cond_2
    if-eqz p2, :cond_3

    #@36
    const-string/jumbo v0, "[Legacy VPN]"

    #@39
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_5

    #@3f
    .line 239
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@41
    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@44
    move-result v0

    #@45
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    if-ne v0, v1, :cond_5

    #@49
    :cond_3
    monitor-exit p0

    #@4a
    .line 240
    return v2

    #@4b
    .line 232
    :cond_4
    :try_start_2
    const-string/jumbo v0, "[Legacy VPN]"

    #@4e
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    monitor-exit p0

    #@52
    .line 233
    return v3

    #@53
    .line 244
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@56
    .line 246
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 247
    return v2

    #@5b
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit p0

    #@5d
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
    .line 802
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 803
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return v1

    #@a
    .line 805
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    #@c
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    .line 806
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
    .line 807
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

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    #@0
    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    #@2
    .line 186
    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    #@0
    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@3
    .line 307
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@5
    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    #@8
    move-result v4

    #@9
    .line 308
    .local v4, "uid":I
    const/4 v5, -0x1

    #@a
    if-eq v4, v5, :cond_0

    #@c
    const-string/jumbo v5, "[Legacy VPN]"

    #@f
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 310
    :cond_0
    return-void

    #@16
    .line 313
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v2

    #@1a
    .line 316
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v6, "appops"

    #@1f
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/app/AppOpsManager;

    #@25
    .line 318
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz p2, :cond_2

    #@27
    const/4 v5, 0x0

    #@28
    .line 317
    :goto_0
    const/16 v6, 0x2f

    #@2a
    invoke-virtual {v0, v6, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 303
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :goto_1
    return-void

    #@31
    .line 318
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    :cond_2
    const/4 v5, 0x1

    #@32
    goto :goto_0

    #@33
    .line 319
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v1

    #@34
    .line 320
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "Vpn"

    #@37
    new-instance v6, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v7, "Failed to set app ops for package "

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    const-string/jumbo v7, ", uid "

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    goto :goto_1

    #@5d
    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@5e
    .line 322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 321
    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 811
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 812
    const/4 v1, 0x0

    #@8
    monitor-exit p0

    #@9
    return v1

    #@a
    .line 814
    :cond_0
    if-nez p1, :cond_2

    #@c
    .line 815
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@e
    const/4 v2, 0x0

    #@f
    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 826
    :cond_1
    const/4 v1, 0x1

    #@12
    monitor-exit p0

    #@13
    return v1

    #@14
    .line 817
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
    .line 818
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@1d
    if-ge v0, v1, :cond_1

    #@1f
    .line 819
    aget-object v1, p1, v0

    #@21
    if-nez v1, :cond_3

    #@23
    .line 820
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@25
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v2, v1, v0

    #@2a
    .line 818
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 822
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

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    #@3
    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 894
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 890
    return-void

    #@e
    .line 895
    :catchall_0
    move-exception v2

    #@f
    .line 896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 895
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 17
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    #@3
    move-result v14

    #@4
    if-nez v14, :cond_0

    #@6
    .line 909
    new-instance v14, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v15, "KeyStore isn\'t unlocked"

    #@b
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v14

    #@f
    .line 911
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    #@13
    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@16
    move-result-object v6

    #@17
    .line 912
    .local v6, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    #@19
    iget v14, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@1b
    invoke-virtual {v6, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1e
    move-result-object v11

    #@1f
    .line 913
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@22
    move-result v14

    #@23
    if-nez v14, :cond_1

    #@25
    const-string/jumbo v14, "no_config_vpn"

    #@28
    .line 914
    new-instance v15, Landroid/os/UserHandle;

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    #@2e
    move/from16 v16, v0

    #@30
    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    #@33
    .line 913
    invoke-virtual {v6, v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@36
    move-result v14

    #@37
    if-eqz v14, :cond_2

    #@39
    .line 915
    :cond_1
    new-instance v14, Ljava/lang/SecurityException;

    #@3b
    const-string/jumbo v15, "Restricted users cannot establish VPNs"

    #@3e
    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@41
    throw v14

    #@42
    .line 918
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    #@45
    move-result-object v5

    #@46
    .line 919
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@49
    move-result-object v14

    #@4a
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 920
    .local v3, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 923
    .local v4, "iface":Ljava/lang/String;
    const-string/jumbo v8, ""

    #@55
    .line 924
    .local v8, "privateKey":Ljava/lang/String;
    const-string/jumbo v12, ""

    #@58
    .line 925
    .local v12, "userCert":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@5b
    .line 926
    .local v1, "caCert":Ljava/lang/String;
    const-string/jumbo v10, ""

    #@5e
    .line 927
    .local v10, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    #@60
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@62
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@65
    move-result v14

    #@66
    if-nez v14, :cond_3

    #@68
    .line 928
    new-instance v14, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v15, "USRPKEY_"

    #@70
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v14

    #@74
    move-object/from16 v0, p1

    #@76
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@78
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v14

    #@7c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v8

    #@80
    .line 929
    new-instance v14, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v15, "USRCERT_"

    #@88
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v14

    #@8c
    move-object/from16 v0, p1

    #@8e
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@90
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v14

    #@94
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v14

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@9d
    move-result-object v13

    #@9e
    .line 930
    .local v13, "value":[B
    if-nez v13, :cond_7

    #@a0
    const/4 v12, 0x0

    #@a1
    .line 932
    .end local v12    # "userCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    #@a3
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@a5
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@a8
    move-result v14

    #@a9
    if-nez v14, :cond_4

    #@ab
    .line 933
    new-instance v14, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v15, "CACERT_"

    #@b3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v14

    #@b7
    move-object/from16 v0, p1

    #@b9
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@bb
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v14

    #@bf
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v14

    #@c3
    move-object/from16 v0, p2

    #@c5
    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@c8
    move-result-object v13

    #@c9
    .line 934
    .restart local v13    # "value":[B
    if-nez v13, :cond_8

    #@cb
    const/4 v1, 0x0

    #@cc
    .line 936
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    #@ce
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@d0
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@d3
    move-result v14

    #@d4
    if-nez v14, :cond_5

    #@d6
    .line 937
    new-instance v14, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v15, "USRCERT_"

    #@de
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v14

    #@e2
    move-object/from16 v0, p1

    #@e4
    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@e6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v14

    #@ea
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v14

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@f3
    move-result-object v13

    #@f4
    .line 938
    .restart local v13    # "value":[B
    if-nez v13, :cond_9

    #@f6
    const/4 v10, 0x0

    #@f7
    .line 940
    .end local v10    # "serverCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    #@f9
    if-nez v12, :cond_a

    #@fb
    .line 941
    :cond_6
    new-instance v14, Ljava/lang/IllegalStateException;

    #@fd
    const-string/jumbo v15, "Cannot load credentials"

    #@100
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@103
    throw v14

    #@104
    .line 930
    .restart local v1    # "caCert":Ljava/lang/String;
    .restart local v10    # "serverCert":Ljava/lang/String;
    .restart local v12    # "userCert":Ljava/lang/String;
    .restart local v13    # "value":[B
    :cond_7
    new-instance v12, Ljava/lang/String;

    #@106
    .end local v12    # "userCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@108
    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@10b
    .restart local v12    # "userCert":Ljava/lang/String;
    goto :goto_0

    #@10c
    .line 934
    .end local v12    # "userCert":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/String;

    #@10e
    .end local v1    # "caCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@110
    invoke-direct {v1, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@113
    .restart local v1    # "caCert":Ljava/lang/String;
    goto :goto_1

    #@114
    .line 938
    .end local v1    # "caCert":Ljava/lang/String;
    :cond_9
    new-instance v10, Ljava/lang/String;

    #@116
    .end local v10    # "serverCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@118
    invoke-direct {v10, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@11b
    .restart local v10    # "serverCert":Ljava/lang/String;
    goto :goto_2

    #@11c
    .line 940
    .end local v10    # "serverCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_a
    if-eqz v1, :cond_6

    #@11e
    if-eqz v10, :cond_6

    #@120
    .line 945
    const/4 v9, 0x0

    #@121
    .line 946
    .local v9, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@123
    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    #@125
    packed-switch v14, :pswitch_data_0

    #@128
    .line 980
    .end local v9    # "racoon":[Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    #@129
    .line 981
    .local v7, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@12b
    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    #@12d
    packed-switch v14, :pswitch_data_1

    #@130
    .line 1002
    .end local v7    # "mtpd":[Ljava/lang/String;
    :goto_4
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    #@132
    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    #@135
    .line 1003
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v14, 0x1

    #@136
    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@138
    .line 1004
    move-object/from16 v0, p1

    #@13a
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    #@13c
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@13e
    .line 1005
    iput-object v4, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@140
    .line 1006
    move-object/from16 v0, p1

    #@142
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@144
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    #@146
    .line 1008
    move-object/from16 v0, p1

    #@148
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@14a
    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    #@14d
    .line 1009
    move-object/from16 v0, p1

    #@14f
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@151
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@154
    move-result v14

    #@155
    if-nez v14, :cond_b

    #@157
    .line 1010
    move-object/from16 v0, p1

    #@159
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@15b
    const-string/jumbo v15, " +"

    #@15e
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@161
    move-result-object v14

    #@162
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@165
    move-result-object v14

    #@166
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@168
    .line 1012
    :cond_b
    move-object/from16 v0, p1

    #@16a
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@16c
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@16f
    move-result v14

    #@170
    if-nez v14, :cond_c

    #@172
    .line 1013
    move-object/from16 v0, p1

    #@174
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@176
    const-string/jumbo v15, " +"

    #@179
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@17c
    move-result-object v14

    #@17d
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@180
    move-result-object v14

    #@181
    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@183
    .line 1015
    :cond_c
    move-object/from16 v0, p0

    #@185
    invoke-direct {v0, v2, v9, v7}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    #@188
    .line 907
    return-void

    #@189
    .line 948
    .end local v2    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "racoon":[Ljava/lang/String;
    :pswitch_0
    const/4 v14, 0x6

    #@18a
    new-array v9, v14, [Ljava/lang/String;

    #@18c
    .line 949
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@18d
    aput-object v4, v9, v14

    #@18f
    move-object/from16 v0, p1

    #@191
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@193
    const/4 v15, 0x1

    #@194
    aput-object v14, v9, v15

    #@196
    const-string/jumbo v14, "udppsk"

    #@199
    const/4 v15, 0x2

    #@19a
    aput-object v14, v9, v15

    #@19c
    move-object/from16 v0, p1

    #@19e
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@1a0
    const/4 v15, 0x3

    #@1a1
    aput-object v14, v9, v15

    #@1a3
    .line 950
    move-object/from16 v0, p1

    #@1a5
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@1a7
    const/4 v15, 0x4

    #@1a8
    aput-object v14, v9, v15

    #@1aa
    const-string/jumbo v14, "1701"

    #@1ad
    const/4 v15, 0x5

    #@1ae
    aput-object v14, v9, v15

    #@1b0
    .line 952
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@1b2
    .line 954
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_1
    const/16 v14, 0x8

    #@1b4
    new-array v9, v14, [Ljava/lang/String;

    #@1b6
    .line 955
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@1b7
    aput-object v4, v9, v14

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@1bd
    const/4 v15, 0x1

    #@1be
    aput-object v14, v9, v15

    #@1c0
    const-string/jumbo v14, "udprsa"

    #@1c3
    const/4 v15, 0x2

    #@1c4
    aput-object v14, v9, v15

    #@1c6
    const/4 v14, 0x3

    #@1c7
    aput-object v8, v9, v14

    #@1c9
    const/4 v14, 0x4

    #@1ca
    aput-object v12, v9, v14

    #@1cc
    .line 956
    const/4 v14, 0x5

    #@1cd
    aput-object v1, v9, v14

    #@1cf
    const/4 v14, 0x6

    #@1d0
    aput-object v10, v9, v14

    #@1d2
    const-string/jumbo v14, "1701"

    #@1d5
    const/4 v15, 0x7

    #@1d6
    aput-object v14, v9, v15

    #@1d8
    .line 958
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@1da
    .line 960
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_2
    const/16 v14, 0x9

    #@1dc
    new-array v9, v14, [Ljava/lang/String;

    #@1de
    .line 961
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@1df
    aput-object v4, v9, v14

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@1e5
    const/4 v15, 0x1

    #@1e6
    aput-object v14, v9, v15

    #@1e8
    const-string/jumbo v14, "xauthpsk"

    #@1eb
    const/4 v15, 0x2

    #@1ec
    aput-object v14, v9, v15

    #@1ee
    move-object/from16 v0, p1

    #@1f0
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@1f2
    const/4 v15, 0x3

    #@1f3
    aput-object v14, v9, v15

    #@1f5
    .line 962
    move-object/from16 v0, p1

    #@1f7
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@1f9
    const/4 v15, 0x4

    #@1fa
    aput-object v14, v9, v15

    #@1fc
    move-object/from16 v0, p1

    #@1fe
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@200
    const/4 v15, 0x5

    #@201
    aput-object v14, v9, v15

    #@203
    move-object/from16 v0, p1

    #@205
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@207
    const/4 v15, 0x6

    #@208
    aput-object v14, v9, v15

    #@20a
    const-string/jumbo v14, ""

    #@20d
    const/4 v15, 0x7

    #@20e
    aput-object v14, v9, v15

    #@210
    const/16 v14, 0x8

    #@212
    aput-object v3, v9, v14

    #@214
    .line 964
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@216
    .line 966
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_3
    const/16 v14, 0xb

    #@218
    new-array v9, v14, [Ljava/lang/String;

    #@21a
    .line 967
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@21b
    aput-object v4, v9, v14

    #@21d
    move-object/from16 v0, p1

    #@21f
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@221
    const/4 v15, 0x1

    #@222
    aput-object v14, v9, v15

    #@224
    const-string/jumbo v14, "xauthrsa"

    #@227
    const/4 v15, 0x2

    #@228
    aput-object v14, v9, v15

    #@22a
    const/4 v14, 0x3

    #@22b
    aput-object v8, v9, v14

    #@22d
    const/4 v14, 0x4

    #@22e
    aput-object v12, v9, v14

    #@230
    .line 968
    const/4 v14, 0x5

    #@231
    aput-object v1, v9, v14

    #@233
    const/4 v14, 0x6

    #@234
    aput-object v10, v9, v14

    #@236
    move-object/from16 v0, p1

    #@238
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@23a
    const/4 v15, 0x7

    #@23b
    aput-object v14, v9, v15

    #@23d
    move-object/from16 v0, p1

    #@23f
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@241
    const/16 v15, 0x8

    #@243
    aput-object v14, v9, v15

    #@245
    const-string/jumbo v14, ""

    #@248
    const/16 v15, 0x9

    #@24a
    aput-object v14, v9, v15

    #@24c
    const/16 v14, 0xa

    #@24e
    aput-object v3, v9, v14

    #@250
    .line 970
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@252
    .line 972
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_4
    const/16 v14, 0x9

    #@254
    new-array v9, v14, [Ljava/lang/String;

    #@256
    .line 973
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    #@257
    aput-object v4, v9, v14

    #@259
    move-object/from16 v0, p1

    #@25b
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@25d
    const/4 v15, 0x1

    #@25e
    aput-object v14, v9, v15

    #@260
    const-string/jumbo v14, "hybridrsa"

    #@263
    const/4 v15, 0x2

    #@264
    aput-object v14, v9, v15

    #@266
    .line 974
    const/4 v14, 0x3

    #@267
    aput-object v1, v9, v14

    #@269
    const/4 v14, 0x4

    #@26a
    aput-object v10, v9, v14

    #@26c
    move-object/from16 v0, p1

    #@26e
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@270
    const/4 v15, 0x5

    #@271
    aput-object v14, v9, v15

    #@273
    move-object/from16 v0, p1

    #@275
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@277
    const/4 v15, 0x6

    #@278
    aput-object v14, v9, v15

    #@27a
    const-string/jumbo v14, ""

    #@27d
    const/4 v15, 0x7

    #@27e
    aput-object v14, v9, v15

    #@280
    const/16 v14, 0x8

    #@282
    aput-object v3, v9, v14

    #@284
    .line 976
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    #@286
    .line 983
    .end local v9    # "racoon":[Ljava/lang/String;
    .restart local v7    # "mtpd":[Ljava/lang/String;
    :pswitch_5
    const/16 v14, 0x14

    #@288
    new-array v7, v14, [Ljava/lang/String;

    #@28a
    .line 984
    .end local v7    # "mtpd":[Ljava/lang/String;
    const/4 v14, 0x0

    #@28b
    aput-object v4, v7, v14

    #@28d
    const-string/jumbo v14, "pptp"

    #@290
    const/4 v15, 0x1

    #@291
    aput-object v14, v7, v15

    #@293
    move-object/from16 v0, p1

    #@295
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@297
    const/4 v15, 0x2

    #@298
    aput-object v14, v7, v15

    #@29a
    const-string/jumbo v14, "1723"

    #@29d
    const/4 v15, 0x3

    #@29e
    aput-object v14, v7, v15

    #@2a0
    .line 985
    const-string/jumbo v14, "name"

    #@2a3
    const/4 v15, 0x4

    #@2a4
    aput-object v14, v7, v15

    #@2a6
    move-object/from16 v0, p1

    #@2a8
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@2aa
    const/4 v15, 0x5

    #@2ab
    aput-object v14, v7, v15

    #@2ad
    const-string/jumbo v14, "password"

    #@2b0
    const/4 v15, 0x6

    #@2b1
    aput-object v14, v7, v15

    #@2b3
    move-object/from16 v0, p1

    #@2b5
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@2b7
    const/4 v15, 0x7

    #@2b8
    aput-object v14, v7, v15

    #@2ba
    .line 986
    const-string/jumbo v14, "linkname"

    #@2bd
    const/16 v15, 0x8

    #@2bf
    aput-object v14, v7, v15

    #@2c1
    const-string/jumbo v14, "vpn"

    #@2c4
    const/16 v15, 0x9

    #@2c6
    aput-object v14, v7, v15

    #@2c8
    const-string/jumbo v14, "refuse-eap"

    #@2cb
    const/16 v15, 0xa

    #@2cd
    aput-object v14, v7, v15

    #@2cf
    const-string/jumbo v14, "nodefaultroute"

    #@2d2
    const/16 v15, 0xb

    #@2d4
    aput-object v14, v7, v15

    #@2d6
    .line 987
    const-string/jumbo v14, "usepeerdns"

    #@2d9
    const/16 v15, 0xc

    #@2db
    aput-object v14, v7, v15

    #@2dd
    const-string/jumbo v14, "idle"

    #@2e0
    const/16 v15, 0xd

    #@2e2
    aput-object v14, v7, v15

    #@2e4
    const-string/jumbo v14, "1800"

    #@2e7
    const/16 v15, 0xe

    #@2e9
    aput-object v14, v7, v15

    #@2eb
    const-string/jumbo v14, "mtu"

    #@2ee
    const/16 v15, 0xf

    #@2f0
    aput-object v14, v7, v15

    #@2f2
    const-string/jumbo v14, "1400"

    #@2f5
    const/16 v15, 0x10

    #@2f7
    aput-object v14, v7, v15

    #@2f9
    const-string/jumbo v14, "mru"

    #@2fc
    const/16 v15, 0x11

    #@2fe
    aput-object v14, v7, v15

    #@300
    const-string/jumbo v14, "1400"

    #@303
    const/16 v15, 0x12

    #@305
    aput-object v14, v7, v15

    #@307
    .line 988
    move-object/from16 v0, p1

    #@309
    iget-boolean v14, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@30b
    if-eqz v14, :cond_d

    #@30d
    const-string/jumbo v14, "+mppe"

    #@310
    :goto_5
    const/16 v15, 0x13

    #@312
    aput-object v14, v7, v15

    #@314
    .line 990
    .local v7, "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    #@316
    .line 988
    .end local v7    # "mtpd":[Ljava/lang/String;
    :cond_d
    const-string/jumbo v14, "nomppe"

    #@319
    goto :goto_5

    #@31a
    .line 993
    .local v7, "mtpd":[Ljava/lang/String;
    :pswitch_6
    const/16 v14, 0x14

    #@31c
    new-array v7, v14, [Ljava/lang/String;

    #@31e
    .line 994
    .end local v7    # "mtpd":[Ljava/lang/String;
    const/4 v14, 0x0

    #@31f
    aput-object v4, v7, v14

    #@321
    const-string/jumbo v14, "l2tp"

    #@324
    const/4 v15, 0x1

    #@325
    aput-object v14, v7, v15

    #@327
    move-object/from16 v0, p1

    #@329
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@32b
    const/4 v15, 0x2

    #@32c
    aput-object v14, v7, v15

    #@32e
    const-string/jumbo v14, "1701"

    #@331
    const/4 v15, 0x3

    #@332
    aput-object v14, v7, v15

    #@334
    move-object/from16 v0, p1

    #@336
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@338
    const/4 v15, 0x4

    #@339
    aput-object v14, v7, v15

    #@33b
    .line 995
    const-string/jumbo v14, "name"

    #@33e
    const/4 v15, 0x5

    #@33f
    aput-object v14, v7, v15

    #@341
    move-object/from16 v0, p1

    #@343
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@345
    const/4 v15, 0x6

    #@346
    aput-object v14, v7, v15

    #@348
    const-string/jumbo v14, "password"

    #@34b
    const/4 v15, 0x7

    #@34c
    aput-object v14, v7, v15

    #@34e
    move-object/from16 v0, p1

    #@350
    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@352
    const/16 v15, 0x8

    #@354
    aput-object v14, v7, v15

    #@356
    .line 996
    const-string/jumbo v14, "linkname"

    #@359
    const/16 v15, 0x9

    #@35b
    aput-object v14, v7, v15

    #@35d
    const-string/jumbo v14, "vpn"

    #@360
    const/16 v15, 0xa

    #@362
    aput-object v14, v7, v15

    #@364
    const-string/jumbo v14, "refuse-eap"

    #@367
    const/16 v15, 0xb

    #@369
    aput-object v14, v7, v15

    #@36b
    const-string/jumbo v14, "nodefaultroute"

    #@36e
    const/16 v15, 0xc

    #@370
    aput-object v14, v7, v15

    #@372
    .line 997
    const-string/jumbo v14, "usepeerdns"

    #@375
    const/16 v15, 0xd

    #@377
    aput-object v14, v7, v15

    #@379
    const-string/jumbo v14, "idle"

    #@37c
    const/16 v15, 0xe

    #@37e
    aput-object v14, v7, v15

    #@380
    const-string/jumbo v14, "1800"

    #@383
    const/16 v15, 0xf

    #@385
    aput-object v14, v7, v15

    #@387
    const-string/jumbo v14, "mtu"

    #@38a
    const/16 v15, 0x10

    #@38c
    aput-object v14, v7, v15

    #@38e
    const-string/jumbo v14, "1400"

    #@391
    const/16 v15, 0x11

    #@393
    aput-object v14, v7, v15

    #@395
    const-string/jumbo v14, "mru"

    #@398
    const/16 v15, 0x12

    #@39a
    aput-object v14, v7, v15

    #@39c
    const-string/jumbo v14, "1400"

    #@39f
    const/16 v15, 0x13

    #@3a1
    aput-object v14, v7, v15

    #@3a3
    .line 999
    .local v7, "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    #@3a5
    .line 946
    nop

    #@3a6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@3b4
    .line 981
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
    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1033
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@7
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@a
    .line 1034
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@d
    .line 1036
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
    .line 1031
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method
