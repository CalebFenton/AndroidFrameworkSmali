.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/LockdownVpnTracker$1;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 80
    new-instance v2, Ljava/lang/Object;

    #@6
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@b
    .line 112
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    #@d
    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    #@10
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    #@12
    .line 97
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/content/Context;

    #@18
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@1a
    .line 98
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/os/INetworkManagementService;

    #@20
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@22
    .line 99
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lcom/android/server/ConnectivityService;

    #@28
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@2a
    .line 100
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    #@30
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@32
    .line 101
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Lcom/android/internal/net/VpnProfile;

    #@38
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@3a
    .line 103
    new-instance v0, Landroid/content/Intent;

    #@3c
    const-string/jumbo v2, "android.net.vpn.SETTINGS"

    #@3f
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    .line 104
    .local v0, "configIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.net.vpn.PICK_LOCKDOWN"

    #@45
    const/4 v3, 0x1

    #@46
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@49
    .line 105
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@4b
    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4e
    move-result-object v2

    #@4f
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    #@51
    .line 107
    new-instance v1, Landroid/content/Intent;

    #@53
    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    #@56
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@59
    .line 108
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    #@5b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5e
    .line 109
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@60
    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@63
    move-result-object v2

    #@64
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    #@66
    .line 96
    return-void
.end method

.method private clearSourceRulesLocked()V
    .locals 7

    #@0
    .prologue
    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 287
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@6
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@8
    const/4 v5, 0x0

    #@9
    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@c
    .line 288
    const/4 v3, 0x0

    #@d
    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@f
    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 291
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/net/LinkAddress;

    #@25
    .line 292
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    #@26
    invoke-direct {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 300
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@2b
    .line 301
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v4, "Problem setting firewall rules"

    #@30
    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3

    #@34
    .line 295
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@36
    const/4 v4, 0x0

    #@37
    const/4 v5, 0x0

    #@38
    const/4 v6, 0x0

    #@39
    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    #@3c
    .line 296
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@3e
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@41
    move-result v4

    #@42
    const/4 v5, 0x0

    #@43
    const/4 v6, 0x0

    #@44
    invoke-interface {v3, v5, v4, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    #@47
    .line 298
    const/4 v3, 0x0

    #@48
    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    .line 284
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private handleStateChangedLocked()V
    .locals 23

    #@0
    .prologue
    .line 125
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@4
    move-object/from16 v19, v0

    #@6
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    #@9
    move-result-object v11

    #@a
    .line 126
    .local v11, "egressInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@e
    move-object/from16 v19, v0

    #@10
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@13
    move-result-object v12

    #@14
    .line 128
    .local v12, "egressProp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@18
    move-object/from16 v19, v0

    #@1a
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    #@1d
    move-result-object v18

    #@1e
    .line 129
    .local v18, "vpnInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@22
    move-object/from16 v19, v0

    #@24
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    #@27
    move-result-object v17

    #@28
    .line 132
    .local v17, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v11, :cond_2

    #@2a
    .line 133
    sget-object v19, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@2c
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@2f
    move-result-object v20

    #@30
    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v9

    #@34
    .line 134
    :goto_0
    if-eqz v12, :cond_3

    #@36
    .line 135
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@3a
    move-object/from16 v19, v0

    #@3c
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3f
    move-result-object v20

    #@40
    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@43
    move-result v19

    #@44
    if-eqz v19, :cond_4

    #@46
    const/4 v8, 0x0

    #@47
    .line 137
    .local v8, "egressChanged":Z
    :goto_1
    if-nez v11, :cond_5

    #@49
    .line 138
    const/4 v14, 0x0

    #@4a
    .line 139
    :goto_2
    if-nez v12, :cond_6

    #@4c
    .line 140
    const/4 v10, 0x0

    #@4d
    .line 141
    :goto_3
    const-string/jumbo v19, "LockdownVpnTracker"

    #@50
    new-instance v20, Ljava/lang/StringBuilder;

    #@52
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v21, "handleStateChanged: egress="

    #@58
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v20

    #@5c
    move-object/from16 v0, v20

    #@5e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v20

    #@62
    .line 142
    const-string/jumbo v21, " "

    #@65
    .line 141
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v20

    #@69
    .line 142
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@6d
    move-object/from16 v21, v0

    #@6f
    .line 141
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v20

    #@73
    .line 142
    const-string/jumbo v21, "->"

    #@76
    .line 141
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v20

    #@7a
    move-object/from16 v0, v20

    #@7c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v20

    #@80
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v20

    #@84
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 144
    if-nez v9, :cond_0

    #@89
    if-eqz v8, :cond_1

    #@8b
    .line 145
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    #@8e
    .line 146
    const/16 v19, 0x0

    #@90
    move-object/from16 v0, v19

    #@92
    move-object/from16 v1, p0

    #@94
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@96
    .line 147
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@9a
    move-object/from16 v19, v0

    #@9c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    #@9f
    .line 149
    :cond_1
    if-eqz v9, :cond_7

    #@a1
    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    #@a4
    .line 151
    return-void

    #@a5
    .line 132
    .end local v8    # "egressChanged":Z
    :cond_2
    const/4 v9, 0x1

    #@a6
    .local v9, "egressDisconnected":Z
    goto :goto_0

    #@a7
    .line 134
    .end local v9    # "egressDisconnected":Z
    :cond_3
    const/4 v8, 0x1

    #@a8
    .restart local v8    # "egressChanged":Z
    goto :goto_1

    #@a9
    .line 135
    .end local v8    # "egressChanged":Z
    :cond_4
    const/4 v8, 0x1

    #@aa
    .restart local v8    # "egressChanged":Z
    goto :goto_1

    #@ab
    .line 138
    :cond_5
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    #@ae
    move-result v19

    #@af
    invoke-static/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@b2
    move-result-object v14

    #@b3
    .local v14, "egressTypeName":Ljava/lang/String;
    goto :goto_2

    #@b4
    .line 140
    .end local v14    # "egressTypeName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@b7
    move-result-object v10

    #@b8
    .local v10, "egressIface":Ljava/lang/String;
    goto :goto_3

    #@b9
    .line 154
    .end local v10    # "egressIface":Ljava/lang/String;
    :cond_7
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    #@bc
    move-result v13

    #@bd
    .line 155
    .local v13, "egressType":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@c0
    move-result-object v19

    #@c1
    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@c3
    move-object/from16 v0, v19

    #@c5
    move-object/from16 v1, v20

    #@c7
    if-ne v0, v1, :cond_8

    #@c9
    .line 156
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    #@cc
    .line 159
    :cond_8
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@d0
    move/from16 v19, v0

    #@d2
    const/16 v20, 0x4

    #@d4
    move/from16 v0, v19

    #@d6
    move/from16 v1, v20

    #@d8
    if-le v0, v1, :cond_a

    #@da
    .line 160
    const v19, 0x1040437

    #@dd
    const v20, 0x108073d

    #@e0
    move-object/from16 v0, p0

    #@e2
    move/from16 v1, v19

    #@e4
    move/from16 v2, v20

    #@e6
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@e9
    .line 123
    :cond_9
    :goto_4
    return-void

    #@ea
    .line 162
    :cond_a
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    #@ed
    move-result v19

    #@ee
    if-eqz v19, :cond_b

    #@f0
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    #@f3
    move-result v19

    #@f4
    if-eqz v19, :cond_c

    #@f6
    .line 183
    :cond_b
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    #@f9
    move-result v19

    #@fa
    if-eqz v19, :cond_9

    #@fc
    if-eqz v17, :cond_9

    #@fe
    .line 184
    move-object/from16 v0, v17

    #@100
    iget-object v15, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@102
    .line 185
    .local v15, "iface":Ljava/lang/String;
    move-object/from16 v0, v17

    #@104
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@106
    move-object/from16 v16, v0

    #@108
    .line 187
    .local v16, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@10c
    move-object/from16 v19, v0

    #@10e
    move-object/from16 v0, v19

    #@110
    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@113
    move-result v19

    #@114
    if-eqz v19, :cond_e

    #@116
    .line 188
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    #@11a
    move-object/from16 v19, v0

    #@11c
    move-object/from16 v0, v16

    #@11e
    move-object/from16 v1, v19

    #@120
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@123
    move-result v19

    #@124
    .line 187
    if-eqz v19, :cond_e

    #@126
    .line 189
    return-void

    #@127
    .line 163
    .end local v15    # "iface":Ljava/lang/String;
    .end local v16    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_c
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@12b
    move-object/from16 v19, v0

    #@12d
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    #@130
    move-result v19

    #@131
    if-eqz v19, :cond_d

    #@133
    .line 164
    const-string/jumbo v19, "LockdownVpnTracker"

    #@136
    const-string/jumbo v20, "Active network connected; starting VPN"

    #@139
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13c
    .line 165
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    #@13f
    .line 166
    const v19, 0x1040435

    #@142
    const v20, 0x108073d

    #@145
    move-object/from16 v0, p0

    #@147
    move/from16 v1, v19

    #@149
    move/from16 v2, v20

    #@14b
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@14e
    .line 168
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@151
    move-result-object v19

    #@152
    move-object/from16 v0, v19

    #@154
    move-object/from16 v1, p0

    #@156
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@158
    .line 172
    :try_start_0
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@15c
    move-object/from16 v19, v0

    #@15e
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@162
    move-object/from16 v20, v0

    #@164
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@167
    move-result-object v21

    #@168
    move-object/from16 v0, v19

    #@16a
    move-object/from16 v1, v20

    #@16c
    move-object/from16 v2, v21

    #@16e
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@171
    goto/16 :goto_4

    #@173
    .line 173
    :catch_0
    move-exception v7

    #@174
    .line 174
    .local v7, "e":Ljava/lang/IllegalStateException;
    const/16 v19, 0x0

    #@176
    move-object/from16 v0, v19

    #@178
    move-object/from16 v1, p0

    #@17a
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@17c
    .line 175
    const-string/jumbo v19, "LockdownVpnTracker"

    #@17f
    const-string/jumbo v20, "Failed to start VPN"

    #@182
    move-object/from16 v0, v19

    #@184
    move-object/from16 v1, v20

    #@186
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@189
    .line 176
    const v19, 0x1040437

    #@18c
    const v20, 0x108073d

    #@18f
    move-object/from16 v0, p0

    #@191
    move/from16 v1, v19

    #@193
    move/from16 v2, v20

    #@195
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@198
    goto/16 :goto_4

    #@19a
    .line 179
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_d
    const-string/jumbo v19, "LockdownVpnTracker"

    #@19d
    const-string/jumbo v20, "Invalid VPN profile; requires IP-based server and DNS"

    #@1a0
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a3
    .line 180
    const v19, 0x1040437

    #@1a6
    const v20, 0x108073d

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    move/from16 v1, v19

    #@1ad
    move/from16 v2, v20

    #@1af
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@1b2
    goto/16 :goto_4

    #@1b4
    .line 192
    .restart local v15    # "iface":Ljava/lang/String;
    .restart local v16    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_e
    const-string/jumbo v19, "LockdownVpnTracker"

    #@1b7
    new-instance v20, Ljava/lang/StringBuilder;

    #@1b9
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1bc
    const-string/jumbo v21, "VPN connected using iface="

    #@1bf
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v20

    #@1c3
    move-object/from16 v0, v20

    #@1c5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v20

    #@1c9
    .line 193
    const-string/jumbo v21, ", sourceAddr="

    #@1cc
    .line 192
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v20

    #@1d0
    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v21

    #@1d4
    .line 192
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v20

    #@1d8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1db
    move-result-object v20

    #@1dc
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1df
    .line 194
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    #@1e2
    .line 195
    const v19, 0x1040436

    #@1e5
    const v20, 0x108073c

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    move/from16 v1, v19

    #@1ec
    move/from16 v2, v20

    #@1ee
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@1f1
    .line 198
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    #@1f4
    .line 200
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@1f8
    move-object/from16 v19, v0

    #@1fa
    const/16 v20, 0x1

    #@1fc
    move-object/from16 v0, v19

    #@1fe
    move/from16 v1, v20

    #@200
    invoke-interface {v0, v15, v1}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@203
    .line 201
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@206
    move-result-object v5

    #@207
    .local v5, "addr$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@20a
    move-result v19

    #@20b
    if-eqz v19, :cond_f

    #@20d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@210
    move-result-object v4

    #@211
    check-cast v4, Landroid/net/LinkAddress;

    #@213
    .line 202
    .local v4, "addr":Landroid/net/LinkAddress;
    const/16 v19, 0x1

    #@215
    move-object/from16 v0, p0

    #@217
    move/from16 v1, v19

    #@219
    invoke-direct {v0, v4, v1}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@21c
    goto :goto_5

    #@21d
    .line 211
    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "addr$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v6

    #@21e
    .line 212
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    #@220
    const-string/jumbo v20, "Problem setting firewall rules"

    #@223
    move-object/from16 v0, v19

    #@225
    move-object/from16 v1, v20

    #@227
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22a
    throw v19

    #@22b
    .line 205
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v5    # "addr$iterator":Ljava/util/Iterator;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@22f
    move-object/from16 v19, v0

    #@231
    const/16 v20, 0x0

    #@233
    const/16 v21, 0x0

    #@235
    const/16 v22, 0x1

    #@237
    invoke-interface/range {v19 .. v22}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    #@23a
    .line 206
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@23e
    move-object/from16 v19, v0

    #@240
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@243
    move-result v20

    #@244
    const/16 v21, 0x0

    #@246
    const/16 v22, 0x1

    #@248
    move-object/from16 v0, v19

    #@24a
    move/from16 v1, v21

    #@24c
    move/from16 v2, v20

    #@24e
    move/from16 v3, v22

    #@250
    invoke-interface {v0, v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    #@253
    .line 208
    const/16 v19, 0x0

    #@255
    move/from16 v0, v19

    #@257
    move-object/from16 v1, p0

    #@259
    iput v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@25b
    .line 209
    move-object/from16 v0, p0

    #@25d
    iput-object v15, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@25f
    .line 210
    move-object/from16 v0, v16

    #@261
    move-object/from16 v1, p0

    #@263
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@265
    .line 215
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@269
    move-object/from16 v19, v0

    #@26b
    move-object/from16 v0, p0

    #@26d
    invoke-virtual {v0, v11}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@270
    move-result-object v20

    #@271
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@274
    goto/16 :goto_4
.end method

.method private hideNotification()V
    .locals 3

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "LockdownVpnTracker"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@d
    .line 354
    return-void
.end method

.method private initLocked()V
    .locals 6

    #@0
    .prologue
    .line 226
    const-string/jumbo v2, "LockdownVpnTracker"

    #@3
    const-string/jumbo v3, "initLocked()"

    #@6
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 228
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    #@f
    .line 230
    new-instance v1, Landroid/content/IntentFilter;

    #@11
    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    #@14
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@17
    .line 231
    .local v1, "resetFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@19
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    #@1b
    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@22
    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@24
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@26
    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@28
    const/16 v4, 0x1f4

    #@2a
    const/4 v5, 0x1

    #@2b
    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@2e
    .line 236
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@30
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@32
    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@34
    const/16 v4, 0x1194

    #@36
    const/4 v5, 0x1

    #@37
    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@3a
    .line 237
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@3c
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@3e
    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@40
    const/16 v4, 0x6a5

    #@42
    const/4 v5, 0x1

    #@43
    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 242
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@48
    monitor-enter v2

    #@49
    .line 243
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v2

    #@4d
    .line 225
    return-void

    #@4e
    .line 238
    :catch_0
    move-exception v0

    #@4f
    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@51
    const-string/jumbo v3, "Problem setting firewall rules"

    #@54
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    throw v2

    #@58
    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@59
    monitor-exit v2

    #@5a
    throw v3
.end method

.method public static isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "LOCKDOWN_VPN"

    #@7
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 310
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@a
    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    #@d
    .line 306
    return-void
.end method

.method private showNotification(II)V
    .locals 5
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    #@0
    .prologue
    .line 338
    new-instance v1, Landroid/app/Notification$Builder;

    #@2
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@7
    .line 339
    const-wide/16 v2, 0x0

    #@9
    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@10
    move-result-object v1

    #@11
    .line 341
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@1a
    move-result-object v1

    #@1b
    .line 342
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@1d
    const v3, 0x1040438

    #@20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@27
    move-result-object v1

    #@28
    .line 343
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    #@2a
    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@2d
    move-result-object v1

    #@2e
    .line 344
    const/4 v2, -0x1

    #@2f
    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@32
    move-result-object v1

    #@33
    .line 345
    const/4 v2, 0x1

    #@34
    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@37
    move-result-object v1

    #@38
    .line 346
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@3a
    const v3, 0x104043b

    #@3d
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 347
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    #@43
    .line 346
    const v4, 0x10803e1

    #@46
    .line 338
    invoke-virtual {v1, v4, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@49
    move-result-object v1

    #@4a
    .line 348
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@4c
    .line 349
    const v3, 0x1060059

    #@4f
    .line 348
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@52
    move-result v2

    #@53
    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@56
    move-result-object v0

    #@57
    .line 351
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@59
    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    #@5c
    move-result-object v1

    #@5d
    const-string/jumbo v2, "LockdownVpnTracker"

    #@60
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@63
    move-result-object v3

    #@64
    const/4 v4, 0x0

    #@65
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@68
    .line 337
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 254
    const-string/jumbo v1, "LockdownVpnTracker"

    #@4
    const-string/jumbo v2, "shutdownLocked()"

    #@7
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 256
    const/4 v1, 0x0

    #@b
    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@d
    .line 257
    iput v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@f
    .line 259
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@11
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    #@14
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@16
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@18
    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@1a
    const/16 v3, 0x1f4

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@20
    .line 262
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@22
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@24
    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@26
    const/16 v3, 0x1194

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    #@2c
    .line 263
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@2e
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@30
    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@32
    const/16 v3, 0x6a5

    #@34
    const/4 v4, 0x0

    #@35
    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 267
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    #@3b
    .line 268
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    #@3e
    .line 270
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@40
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    #@42
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@45
    .line 271
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@47
    const/4 v2, 0x1

    #@48
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    #@4b
    .line 253
    return-void

    #@4c
    .line 264
    :catch_0
    move-exception v0

    #@4d
    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@4f
    const-string/jumbo v2, "Problem setting firewall rules"

    #@52
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@55
    throw v1
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 330
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@8
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    #@b
    move-result-object v1

    #@c
    .line 331
    .local v1, "vpnInfo":Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkInfo;

    #@e
    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@11
    .line 332
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    move-object p1, v0

    #@1e
    .line 334
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "vpnInfo":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-object p1
.end method

.method public init()V
    .locals 2

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 219
    return-void

    #@8
    .line 220
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public onNetworkInfoChanged()V
    .locals 2

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 313
    return-void

    #@8
    .line 314
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 321
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@e
    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v0

    #@11
    .line 324
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v0

    #@15
    .line 319
    return-void

    #@16
    .line 323
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v0

    #@18
    throw v1
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 275
    const-string/jumbo v0, "LockdownVpnTracker"

    #@3
    const-string/jumbo v1, "reset()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 276
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    #@f
    .line 279
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    #@12
    .line 280
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 274
    return-void

    #@17
    .line 276
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 247
    return-void

    #@8
    .line 248
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
