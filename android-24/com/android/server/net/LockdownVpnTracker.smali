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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 78
    new-instance v2, Ljava/lang/Object;

    #@6
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@b
    .line 109
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    #@d
    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    #@10
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    #@12
    .line 95
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/content/Context;

    #@18
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@1a
    .line 96
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/os/INetworkManagementService;

    #@20
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@22
    .line 97
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lcom/android/server/ConnectivityService;

    #@28
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@2a
    .line 98
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    #@30
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@32
    .line 99
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Lcom/android/internal/net/VpnProfile;

    #@38
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@3a
    .line 101
    new-instance v0, Landroid/content/Intent;

    #@3c
    const-string/jumbo v2, "android.settings.VPN_SETTINGS"

    #@3f
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    .line 102
    .local v0, "configIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@44
    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    #@4a
    .line 104
    new-instance v1, Landroid/content/Intent;

    #@4c
    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    #@4f
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@52
    .line 105
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    #@54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@57
    .line 106
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@59
    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    #@5f
    .line 94
    return-void
.end method

.method private clearSourceRulesLocked()V
    .locals 7

    #@0
    .prologue
    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 284
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@6
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@8
    const/4 v5, 0x0

    #@9
    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@c
    .line 285
    const/4 v3, 0x0

    #@d
    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@f
    .line 287
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 288
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
    .line 289
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    #@26
    invoke-direct {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 297
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@2b
    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v4, "Problem setting firewall rules"

    #@30
    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3

    #@34
    .line 292
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
    .line 293
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
    .line 295
    const/4 v3, 0x0

    #@48
    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    .line 281
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private handleStateChangedLocked()V
    .locals 24

    #@0
    .prologue
    .line 122
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@4
    move-object/from16 v20, v0

    #@6
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    #@9
    move-result-object v12

    #@a
    .line 123
    .local v12, "egressInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@e
    move-object/from16 v20, v0

    #@10
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@13
    move-result-object v13

    #@14
    .line 125
    .local v13, "egressProp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@18
    move-object/from16 v20, v0

    #@1a
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    #@1d
    move-result-object v19

    #@1e
    .line 126
    .local v19, "vpnInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@22
    move-object/from16 v20, v0

    #@24
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    #@27
    move-result-object v18

    #@28
    .line 129
    .local v18, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v12, :cond_2

    #@2a
    .line 130
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@2c
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@2f
    move-result-object v21

    #@30
    invoke-virtual/range {v20 .. v21}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v10

    #@34
    .line 131
    :goto_0
    if-eqz v13, :cond_3

    #@36
    .line 132
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@3a
    move-object/from16 v20, v0

    #@3c
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3f
    move-result-object v21

    #@40
    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@43
    move-result v20

    #@44
    if-eqz v20, :cond_4

    #@46
    const/4 v9, 0x0

    #@47
    .line 134
    .local v9, "egressChanged":Z
    :goto_1
    if-nez v12, :cond_5

    #@49
    .line 135
    const/4 v15, 0x0

    #@4a
    .line 136
    :goto_2
    if-nez v13, :cond_6

    #@4c
    .line 137
    const/4 v11, 0x0

    #@4d
    .line 138
    :goto_3
    const-string/jumbo v20, "LockdownVpnTracker"

    #@50
    new-instance v21, Ljava/lang/StringBuilder;

    #@52
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v22, "handleStateChanged: egress="

    #@58
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v21

    #@5c
    move-object/from16 v0, v21

    #@5e
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v21

    #@62
    .line 139
    const-string/jumbo v22, " "

    #@65
    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v21

    #@69
    .line 139
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@6d
    move-object/from16 v22, v0

    #@6f
    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v21

    #@73
    .line 139
    const-string/jumbo v22, "->"

    #@76
    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v21

    #@7a
    move-object/from16 v0, v21

    #@7c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v21

    #@80
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v21

    #@84
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 141
    if-nez v10, :cond_0

    #@89
    if-eqz v9, :cond_1

    #@8b
    .line 142
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    #@8e
    .line 143
    const/16 v20, 0x0

    #@90
    move-object/from16 v0, v20

    #@92
    move-object/from16 v1, p0

    #@94
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@96
    .line 144
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@9a
    move-object/from16 v20, v0

    #@9c
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    #@9f
    .line 146
    :cond_1
    if-eqz v10, :cond_7

    #@a1
    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    #@a4
    .line 148
    return-void

    #@a5
    .line 129
    .end local v9    # "egressChanged":Z
    :cond_2
    const/4 v10, 0x1

    #@a6
    .local v10, "egressDisconnected":Z
    goto :goto_0

    #@a7
    .line 131
    .end local v10    # "egressDisconnected":Z
    :cond_3
    const/4 v9, 0x1

    #@a8
    .restart local v9    # "egressChanged":Z
    goto :goto_1

    #@a9
    .line 132
    .end local v9    # "egressChanged":Z
    :cond_4
    const/4 v9, 0x1

    #@aa
    .restart local v9    # "egressChanged":Z
    goto :goto_1

    #@ab
    .line 135
    :cond_5
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    #@ae
    move-result v20

    #@af
    invoke-static/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@b2
    move-result-object v15

    #@b3
    .local v15, "egressTypeName":Ljava/lang/String;
    goto :goto_2

    #@b4
    .line 137
    .end local v15    # "egressTypeName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@b7
    move-result-object v11

    #@b8
    .local v11, "egressIface":Ljava/lang/String;
    goto :goto_3

    #@b9
    .line 151
    .end local v11    # "egressIface":Ljava/lang/String;
    :cond_7
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    #@bc
    move-result v14

    #@bd
    .line 152
    .local v14, "egressType":I
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@c0
    move-result-object v20

    #@c1
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@c3
    move-object/from16 v0, v20

    #@c5
    move-object/from16 v1, v21

    #@c7
    if-ne v0, v1, :cond_8

    #@c9
    .line 153
    invoke-static {v14}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    #@cc
    .line 156
    :cond_8
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@d0
    move/from16 v20, v0

    #@d2
    const/16 v21, 0x4

    #@d4
    move/from16 v0, v20

    #@d6
    move/from16 v1, v21

    #@d8
    if-le v0, v1, :cond_a

    #@da
    .line 157
    const v20, 0x1040472

    #@dd
    const v21, 0x10807b6

    #@e0
    move-object/from16 v0, p0

    #@e2
    move/from16 v1, v20

    #@e4
    move/from16 v2, v21

    #@e6
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@e9
    .line 120
    :cond_9
    :goto_4
    return-void

    #@ea
    .line 159
    :cond_a
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    #@ed
    move-result v20

    #@ee
    if-eqz v20, :cond_b

    #@f0
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    #@f3
    move-result v20

    #@f4
    if-eqz v20, :cond_c

    #@f6
    .line 180
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnected()Z

    #@f9
    move-result v20

    #@fa
    if-eqz v20, :cond_9

    #@fc
    if-eqz v18, :cond_9

    #@fe
    .line 181
    move-object/from16 v0, v18

    #@100
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@102
    move-object/from16 v16, v0

    #@104
    .line 182
    .local v16, "iface":Ljava/lang/String;
    move-object/from16 v0, v18

    #@106
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@108
    move-object/from16 v17, v0

    #@10a
    .line 184
    .local v17, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@10e
    move-object/from16 v20, v0

    #@110
    move-object/from16 v0, v16

    #@112
    move-object/from16 v1, v20

    #@114
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@117
    move-result v20

    #@118
    if-eqz v20, :cond_e

    #@11a
    .line 185
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    #@11e
    move-object/from16 v20, v0

    #@120
    move-object/from16 v0, v17

    #@122
    move-object/from16 v1, v20

    #@124
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@127
    move-result v20

    #@128
    .line 184
    if-eqz v20, :cond_e

    #@12a
    .line 186
    return-void

    #@12b
    .line 160
    .end local v16    # "iface":Ljava/lang/String;
    .end local v17    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_c
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@12f
    move-object/from16 v20, v0

    #@131
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    #@134
    move-result v20

    #@135
    if-eqz v20, :cond_d

    #@137
    .line 161
    const-string/jumbo v20, "LockdownVpnTracker"

    #@13a
    const-string/jumbo v21, "Active network connected; starting VPN"

    #@13d
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@140
    .line 162
    invoke-static {v14}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    #@143
    .line 163
    const v20, 0x1040470

    #@146
    const v21, 0x10807b6

    #@149
    move-object/from16 v0, p0

    #@14b
    move/from16 v1, v20

    #@14d
    move/from16 v2, v21

    #@14f
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@152
    .line 165
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@155
    move-result-object v20

    #@156
    move-object/from16 v0, v20

    #@158
    move-object/from16 v1, p0

    #@15a
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@15c
    .line 169
    :try_start_0
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@160
    move-object/from16 v20, v0

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    #@166
    move-object/from16 v21, v0

    #@168
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@16b
    move-result-object v22

    #@16c
    move-object/from16 v0, v20

    #@16e
    move-object/from16 v1, v21

    #@170
    move-object/from16 v2, v22

    #@172
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@175
    goto/16 :goto_4

    #@177
    .line 170
    :catch_0
    move-exception v8

    #@178
    .line 171
    .local v8, "e":Ljava/lang/IllegalStateException;
    const/16 v20, 0x0

    #@17a
    move-object/from16 v0, v20

    #@17c
    move-object/from16 v1, p0

    #@17e
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@180
    .line 172
    const-string/jumbo v20, "LockdownVpnTracker"

    #@183
    const-string/jumbo v21, "Failed to start VPN"

    #@186
    move-object/from16 v0, v20

    #@188
    move-object/from16 v1, v21

    #@18a
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18d
    .line 173
    const v20, 0x1040472

    #@190
    const v21, 0x10807b6

    #@193
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v20

    #@197
    move/from16 v2, v21

    #@199
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@19c
    goto/16 :goto_4

    #@19e
    .line 176
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_d
    const-string/jumbo v20, "LockdownVpnTracker"

    #@1a1
    const-string/jumbo v21, "Invalid VPN profile; requires IP-based server and DNS"

    #@1a4
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a7
    .line 177
    const v20, 0x1040472

    #@1aa
    const v21, 0x10807b6

    #@1ad
    move-object/from16 v0, p0

    #@1af
    move/from16 v1, v20

    #@1b1
    move/from16 v2, v21

    #@1b3
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@1b6
    goto/16 :goto_4

    #@1b8
    .line 189
    .restart local v16    # "iface":Ljava/lang/String;
    .restart local v17    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_e
    const-string/jumbo v20, "LockdownVpnTracker"

    #@1bb
    new-instance v21, Ljava/lang/StringBuilder;

    #@1bd
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1c0
    const-string/jumbo v22, "VPN connected using iface="

    #@1c3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v21

    #@1c7
    move-object/from16 v0, v21

    #@1c9
    move-object/from16 v1, v16

    #@1cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v21

    #@1cf
    .line 190
    const-string/jumbo v22, ", sourceAddr="

    #@1d2
    .line 189
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v21

    #@1d6
    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v22

    #@1da
    .line 189
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v21

    #@1de
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v21

    #@1e2
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e5
    .line 191
    invoke-static {v14}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    #@1e8
    .line 192
    const v20, 0x1040471

    #@1eb
    const v21, 0x10807b5

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    move/from16 v1, v20

    #@1f2
    move/from16 v2, v21

    #@1f4
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    #@1f7
    .line 195
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    #@1fa
    .line 197
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@1fe
    move-object/from16 v20, v0

    #@200
    const/16 v21, 0x1

    #@202
    move-object/from16 v0, v20

    #@204
    move-object/from16 v1, v16

    #@206
    move/from16 v2, v21

    #@208
    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@20b
    .line 198
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20e
    move-result-object v5

    #@20f
    .local v5, "addr$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@212
    move-result v20

    #@213
    if-eqz v20, :cond_f

    #@215
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@218
    move-result-object v4

    #@219
    check-cast v4, Landroid/net/LinkAddress;

    #@21b
    .line 199
    .local v4, "addr":Landroid/net/LinkAddress;
    const/16 v20, 0x1

    #@21d
    move-object/from16 v0, p0

    #@21f
    move/from16 v1, v20

    #@221
    invoke-direct {v0, v4, v1}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@224
    goto :goto_5

    #@225
    .line 208
    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "addr$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v7

    #@226
    .line 209
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v20, Ljava/lang/RuntimeException;

    #@228
    const-string/jumbo v21, "Problem setting firewall rules"

    #@22b
    move-object/from16 v0, v20

    #@22d
    move-object/from16 v1, v21

    #@22f
    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@232
    throw v20

    #@233
    .line 202
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v5    # "addr$iterator":Ljava/util/Iterator;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    #@235
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@237
    move-object/from16 v20, v0

    #@239
    const/16 v21, 0x0

    #@23b
    const/16 v22, 0x0

    #@23d
    const/16 v23, 0x1

    #@23f
    invoke-interface/range {v20 .. v23}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    #@242
    .line 203
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@246
    move-object/from16 v20, v0

    #@248
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@24b
    move-result v21

    #@24c
    const/16 v22, 0x0

    #@24e
    const/16 v23, 0x1

    #@250
    move-object/from16 v0, v20

    #@252
    move/from16 v1, v22

    #@254
    move/from16 v2, v21

    #@256
    move/from16 v3, v23

    #@258
    invoke-interface {v0, v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    #@25b
    .line 205
    const/16 v20, 0x0

    #@25d
    move/from16 v0, v20

    #@25f
    move-object/from16 v1, p0

    #@261
    iput v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@263
    .line 206
    move-object/from16 v0, v16

    #@265
    move-object/from16 v1, p0

    #@267
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    #@269
    .line 207
    move-object/from16 v0, v17

    #@26b
    move-object/from16 v1, p0

    #@26d
    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@26f
    .line 212
    new-instance v6, Landroid/net/NetworkInfo;

    #@271
    invoke-direct {v6, v12}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@274
    .line 213
    .local v6, "clone":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@276
    invoke-virtual {v0, v6}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    #@279
    .line 214
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    #@27d
    move-object/from16 v20, v0

    #@27f
    move-object/from16 v0, v20

    #@281
    invoke-virtual {v0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@284
    goto/16 :goto_4
.end method

.method private hideNotification()V
    .locals 3

    #@0
    .prologue
    .line 350
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
    .line 349
    return-void
.end method

.method private initLocked()V
    .locals 6

    #@0
    .prologue
    .line 225
    const-string/jumbo v2, "LockdownVpnTracker"

    #@3
    const-string/jumbo v3, "initLocked()"

    #@6
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 227
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    #@f
    .line 229
    new-instance v1, Landroid/content/IntentFilter;

    #@11
    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    #@14
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@17
    .line 230
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
    .line 234
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
    .line 235
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
    .line 236
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
    .line 241
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    #@49
    .line 224
    return-void

    #@4a
    .line 237
    :catch_0
    move-exception v0

    #@4b
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@4d
    const-string/jumbo v3, "Problem setting firewall rules"

    #@50
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v2
.end method

.method public static isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 90
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
    .line 306
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 307
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    #@a
    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    #@d
    .line 303
    return-void
.end method

.method private showNotification(II)V
    .locals 5
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    #@0
    .prologue
    .line 333
    new-instance v1, Landroid/app/Notification$Builder;

    #@2
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@7
    .line 334
    const-wide/16 v2, 0x0

    #@9
    .line 333
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@10
    move-result-object v1

    #@11
    .line 336
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@1a
    move-result-object v1

    #@1b
    .line 337
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@1d
    const v3, 0x1040473

    #@20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@27
    move-result-object v1

    #@28
    .line 338
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    #@2a
    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@2d
    move-result-object v1

    #@2e
    .line 339
    const/4 v2, -0x1

    #@2f
    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@32
    move-result-object v1

    #@33
    .line 340
    const/4 v2, 0x1

    #@34
    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@37
    move-result-object v1

    #@38
    .line 341
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@3a
    const v3, 0x1040476

    #@3d
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 342
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    #@43
    .line 341
    const v4, 0x10803e1

    #@46
    .line 333
    invoke-virtual {v1, v4, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@49
    move-result-object v1

    #@4a
    .line 343
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@4c
    .line 344
    const v3, 0x1060059

    #@4f
    .line 343
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@52
    move-result v2

    #@53
    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@56
    move-result-object v0

    #@57
    .line 346
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
    .line 332
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 251
    const-string/jumbo v1, "LockdownVpnTracker"

    #@4
    const-string/jumbo v2, "shutdownLocked()"

    #@7
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 253
    const/4 v1, 0x0

    #@b
    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    #@d
    .line 254
    iput v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@f
    .line 256
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@11
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    #@14
    .line 258
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
    .line 259
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
    .line 260
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
    .line 264
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    #@3b
    .line 265
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    #@3e
    .line 267
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    #@40
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    #@42
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@45
    .line 268
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@47
    const/4 v2, 0x1

    #@48
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    #@4b
    .line 250
    return-void

    #@4c
    .line 261
    :catch_0
    move-exception v0

    #@4d
    .line 262
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
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 327
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    #@8
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    #@b
    move-result-object v0

    #@c
    .line 328
    .local v0, "vpnInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 325
    .end local v0    # "vpnInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 218
    return-void

    #@8
    .line 219
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
    .line 311
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 310
    return-void

    #@8
    .line 311
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
    .line 317
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 318
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    #@e
    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v0

    #@11
    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v0

    #@15
    .line 316
    return-void

    #@16
    .line 320
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
    .line 272
    const-string/jumbo v0, "LockdownVpnTracker"

    #@3
    const-string/jumbo v1, "reset()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 273
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    #@f
    .line 276
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    #@12
    .line 277
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 271
    return-void

    #@17
    .line 273
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
    .line 245
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 244
    return-void

    #@8
    .line 245
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
