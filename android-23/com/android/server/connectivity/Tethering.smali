.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationId:I

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPreferredUpstreamMobileApn:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherRequested:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v3, 0x4

    #@2
    const/4 v2, 0x0

    #@3
    .line 94
    new-instance v0, Ljava/lang/Integer;

    #@5
    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    #@8
    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@a
    .line 95
    new-instance v0, Ljava/lang/Integer;

    #@c
    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    #@f
    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@11
    .line 96
    new-instance v0, Ljava/lang/Integer;

    #@13
    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    #@16
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@18
    .line 120
    const/16 v0, 0x10

    #@1a
    new-array v0, v0, [Ljava/lang/String;

    #@1c
    .line 121
    const-string/jumbo v1, "192.168.42.2"

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "192.168.42.254"

    #@24
    const/4 v2, 0x1

    #@25
    aput-object v1, v0, v2

    #@27
    const-string/jumbo v1, "192.168.43.2"

    #@2a
    const/4 v2, 0x2

    #@2b
    aput-object v1, v0, v2

    #@2d
    const-string/jumbo v1, "192.168.43.254"

    #@30
    const/4 v2, 0x3

    #@31
    aput-object v1, v0, v2

    #@33
    .line 122
    const-string/jumbo v1, "192.168.44.2"

    #@36
    aput-object v1, v0, v3

    #@38
    const-string/jumbo v1, "192.168.44.254"

    #@3b
    aput-object v1, v0, v4

    #@3d
    const-string/jumbo v1, "192.168.45.2"

    #@40
    const/4 v2, 0x6

    #@41
    aput-object v1, v0, v2

    #@43
    const-string/jumbo v1, "192.168.45.254"

    #@46
    const/4 v2, 0x7

    #@47
    aput-object v1, v0, v2

    #@49
    .line 123
    const-string/jumbo v1, "192.168.46.2"

    #@4c
    const/16 v2, 0x8

    #@4e
    aput-object v1, v0, v2

    #@50
    const-string/jumbo v1, "192.168.46.254"

    #@53
    const/16 v2, 0x9

    #@55
    aput-object v1, v0, v2

    #@57
    const-string/jumbo v1, "192.168.47.2"

    #@5a
    const/16 v2, 0xa

    #@5c
    aput-object v1, v0, v2

    #@5e
    const-string/jumbo v1, "192.168.47.254"

    #@61
    const/16 v2, 0xb

    #@63
    aput-object v1, v0, v2

    #@65
    .line 124
    const-string/jumbo v1, "192.168.48.2"

    #@68
    const/16 v2, 0xc

    #@6a
    aput-object v1, v0, v2

    #@6c
    const-string/jumbo v1, "192.168.48.254"

    #@6f
    const/16 v2, 0xd

    #@71
    aput-object v1, v0, v2

    #@73
    const-string/jumbo v1, "192.168.49.2"

    #@76
    const/16 v2, 0xe

    #@78
    aput-object v1, v0, v2

    #@7a
    const-string/jumbo v1, "192.168.49.254"

    #@7d
    const/16 v2, 0xf

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 120
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    #@83
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 140
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    .line 100
    const/4 v1, -0x1

    #@6
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    #@8
    .line 142
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@a
    .line 143
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@c
    .line 144
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    #@e
    .line 145
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@10
    .line 147
    new-instance v1, Ljava/lang/Object;

    #@12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@17
    .line 149
    new-instance v1, Ljava/util/HashMap;

    #@19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    .line 152
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@28
    .line 153
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2a
    const-string/jumbo v2, "TetherMaster"

    #@2d
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@2f
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    #@32
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@34
    .line 154
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    #@39
    .line 156
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    #@3b
    const/4 v2, 0x0

    #@3c
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    #@3f
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@41
    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    #@43
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@46
    .line 158
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    #@49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4c
    .line 159
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@4f
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@52
    .line 160
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@58
    .line 161
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@5a
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@5c
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@5f
    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    #@61
    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@64
    .line 164
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    #@67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6a
    .line 165
    const-string/jumbo v1, "android.intent.action.MEDIA_UNSHARED"

    #@6d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@70
    .line 166
    const-string/jumbo v1, "file"

    #@73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@76
    .line 167
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@78
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@7a
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@7d
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@80
    move-result-object v1

    #@81
    .line 170
    const v2, 0x1070014

    #@84
    .line 169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@8a
    .line 171
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@8c
    array-length v1, v1

    #@8d
    if-eqz v1, :cond_0

    #@8f
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@91
    array-length v1, v1

    #@92
    rem-int/lit8 v1, v1, 0x2

    #@94
    if-ne v1, v5, :cond_1

    #@96
    .line 172
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    #@98
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@9a
    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@9d
    .line 179
    const/4 v1, 0x2

    #@9e
    new-array v1, v1, [Ljava/lang/String;

    #@a0
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@a2
    .line 180
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@a4
    const-string/jumbo v2, "8.8.8.8"

    #@a7
    aput-object v2, v1, v4

    #@a9
    .line 181
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@ab
    const-string/jumbo v2, "8.8.4.4"

    #@ae
    aput-object v2, v1, v5

    #@b0
    .line 141
    return-void
.end method

.method private clearTetheredNotification()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 496
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v2, "notification"

    #@7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/NotificationManager;

    #@d
    .line 497
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    #@f
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 498
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@15
    .line 499
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    .line 498
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@1a
    .line 500
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@1c
    .line 494
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 10
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 559
    new-array v3, v6, [Ljava/lang/String;

    #@3
    .line 561
    .local v3, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 566
    array-length v7, v3

    #@a
    move v5, v6

    #@b
    :goto_0
    if-ge v5, v7, :cond_2

    #@d
    aget-object v2, v3, v5

    #@f
    .line 567
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_0

    #@15
    .line 568
    const/4 v4, 0x0

    #@16
    .line 570
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@18
    invoke-interface {v8, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@1b
    move-result-object v4

    #@1c
    .line 571
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v4, :cond_0

    #@1e
    .line 572
    const-string/jumbo v8, "192.168.42.129"

    #@21
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@24
    move-result-object v0

    #@25
    .line 573
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v8, Landroid/net/LinkAddress;

    #@27
    const/16 v9, 0x18

    #@29
    invoke-direct {v8, v0, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@2c
    invoke-virtual {v4, v8}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@2f
    .line 574
    if-eqz p1, :cond_1

    #@31
    .line 575
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@34
    .line 579
    :goto_1
    const-string/jumbo v8, "running"

    #@37
    invoke-virtual {v4, v8}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    #@3a
    .line 580
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@3c
    invoke-interface {v8, v2, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3f
    .line 566
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 562
    .end local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@43
    .line 563
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    #@46
    const-string/jumbo v7, "Error listing Interfaces"

    #@49
    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 564
    return v6

    #@4d
    .line 577
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "iface":Ljava/lang/String;
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@50
    goto :goto_1

    #@51
    .line 582
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_1
    move-exception v1

    #@52
    .line 583
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    #@55
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v8, "Error configuring interface "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 584
    return v6

    #@6d
    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    #@6e
    return v5
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "connectivity"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/ConnectivityManager;

    #@b
    return-object v0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 257
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 258
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 259
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 261
    return v2

    #@1a
    .line 257
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 16

    #@0
    .prologue
    const v15, 0x1080680

    #@3
    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@6
    move-result-object v12

    #@7
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    #@a
    move-result v12

    #@b
    if-nez v12, :cond_0

    #@d
    return-void

    #@e
    .line 383
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 384
    .local v2, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 385
    .local v1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 387
    .local v5, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@1e
    .line 388
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    #@1f
    .line 389
    .local v10, "usbTethered":Z
    const/4 v3, 0x0

    #@20
    .line 391
    .local v3, "bluetoothTethered":Z
    move-object/from16 v0, p0

    #@22
    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@24
    monitor-enter v13

    #@25
    .line 392
    :try_start_0
    move-object/from16 v0, p0

    #@27
    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@29
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@2c
    move-result-object v8

    #@2d
    .line 393
    .local v8, "ifaces":Ljava/util/Set;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v7

    #@31
    .local v7, "iface$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v12

    #@35
    if-eqz v12, :cond_7

    #@37
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    .line 394
    .local v6, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@3d
    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v9

    #@43
    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@45
    .line 395
    .local v9, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v9, :cond_1

    #@47
    .line 396
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@4a
    move-result v12

    #@4b
    if-eqz v12, :cond_2

    #@4d
    .line 397
    check-cast v6, Ljava/lang/String;

    #@4f
    .end local v6    # "iface":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 391
    .end local v7    # "iface$iterator":Ljava/util/Iterator;
    .end local v8    # "ifaces":Ljava/util/Set;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v12

    #@54
    monitor-exit v13

    #@55
    throw v12

    #@56
    .line 398
    .restart local v6    # "iface":Ljava/lang/Object;
    .restart local v7    # "iface$iterator":Ljava/util/Iterator;
    .restart local v8    # "ifaces":Ljava/util/Set;
    .restart local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    #@59
    move-result v12

    #@5a
    if-eqz v12, :cond_3

    #@5c
    .line 399
    check-cast v6, Ljava/lang/String;

    #@5e
    .end local v6    # "iface":Ljava/lang/Object;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@61
    goto :goto_0

    #@62
    .line 400
    .restart local v6    # "iface":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    #@65
    move-result v12

    #@66
    if-eqz v12, :cond_1

    #@68
    .line 401
    move-object v0, v6

    #@69
    check-cast v0, Ljava/lang/String;

    #@6b
    move-object v12, v0

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@71
    move-result v12

    #@72
    if-eqz v12, :cond_5

    #@74
    .line 402
    const/4 v10, 0x1

    #@75
    .line 408
    :cond_4
    :goto_1
    check-cast v6, Ljava/lang/String;

    #@77
    .end local v6    # "iface":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    goto :goto_0

    #@7b
    .line 403
    .restart local v6    # "iface":Ljava/lang/Object;
    :cond_5
    move-object v0, v6

    #@7c
    check-cast v0, Ljava/lang/String;

    #@7e
    move-object v12, v0

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@84
    move-result v12

    #@85
    if-eqz v12, :cond_6

    #@87
    .line 404
    const/4 v11, 0x1

    #@88
    goto :goto_1

    #@89
    .line 405
    :cond_6
    move-object v0, v6

    #@8a
    check-cast v0, Ljava/lang/String;

    #@8c
    move-object v12, v0

    #@8d
    move-object/from16 v0, p0

    #@8f
    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@92
    move-result v12

    #@93
    if-eqz v12, :cond_4

    #@95
    .line 406
    const/4 v3, 0x1

    #@96
    goto :goto_1

    #@97
    .end local v6    # "iface":Ljava/lang/Object;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v13

    #@98
    .line 413
    new-instance v4, Landroid/content/Intent;

    #@9a
    const-string/jumbo v12, "android.net.conn.TETHER_STATE_CHANGED"

    #@9d
    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a0
    .line 414
    .local v4, "broadcast":Landroid/content/Intent;
    const/high16 v12, 0x24000000

    #@a2
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a5
    .line 416
    const-string/jumbo v12, "availableArray"

    #@a8
    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@ab
    .line 418
    const-string/jumbo v12, "activeArray"

    #@ae
    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@b1
    .line 419
    const-string/jumbo v12, "erroredArray"

    #@b4
    invoke-virtual {v4, v12, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@b7
    .line 421
    move-object/from16 v0, p0

    #@b9
    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@bb
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@bd
    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@c0
    .line 423
    const-string/jumbo v12, "Tethering"

    #@c3
    new-instance v13, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v14, "sendTetherStateChangedBroadcast "

    #@cb
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v13

    #@cf
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d2
    move-result v14

    #@d3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v13

    #@d7
    const-string/jumbo v14, ", "

    #@da
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v13

    #@de
    .line 424
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e1
    move-result v14

    #@e2
    .line 423
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v13

    #@e6
    .line 424
    const-string/jumbo v14, ", "

    #@e9
    .line 423
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v13

    #@ed
    .line 424
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@f0
    move-result v14

    #@f1
    .line 423
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v13

    #@f5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v13

    #@f9
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 427
    if-eqz v10, :cond_a

    #@fe
    .line 428
    if-nez v11, :cond_8

    #@100
    if-eqz v3, :cond_9

    #@102
    .line 429
    :cond_8
    move-object/from16 v0, p0

    #@104
    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@107
    .line 380
    :goto_2
    return-void

    #@108
    .line 431
    :cond_9
    const v12, 0x1080681

    #@10b
    move-object/from16 v0, p0

    #@10d
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@110
    goto :goto_2

    #@111
    .line 433
    :cond_a
    if-eqz v11, :cond_c

    #@113
    .line 434
    if-eqz v3, :cond_b

    #@115
    .line 435
    move-object/from16 v0, p0

    #@117
    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@11a
    goto :goto_2

    #@11b
    .line 438
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    #@11e
    goto :goto_2

    #@11f
    .line 440
    :cond_c
    if-eqz v3, :cond_d

    #@121
    .line 441
    const v12, 0x108067f

    #@124
    move-object/from16 v0, p0

    #@126
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@129
    goto :goto_2

    #@12a
    .line 443
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    #@12d
    goto :goto_2
.end method

.method private showTetheredNotification(I)V
    .locals 14
    .param p1, "icon"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 449
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v3, "notification"

    #@8
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v7

    #@c
    check-cast v7, Landroid/app/NotificationManager;

    #@e
    .line 450
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_0

    #@10
    .line 451
    return-void

    #@11
    .line 454
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 455
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@17
    if-ne v0, p1, :cond_1

    #@19
    .line 456
    return-void

    #@1a
    .line 458
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@1c
    .line 459
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    .line 458
    invoke-virtual {v7, v4, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@21
    .line 460
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@23
    .line 463
    :cond_2
    new-instance v2, Landroid/content/Intent;

    #@25
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@28
    .line 464
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    #@2b
    const-string/jumbo v3, "com.android.settings.TetherSettings"

    #@2e
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 465
    const/high16 v0, 0x40000000    # 2.0f

    #@33
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@36
    .line 467
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@38
    .line 468
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@3a
    move v3, v1

    #@3b
    .line 467
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@3e
    move-result-object v8

    #@3f
    .line 470
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@42
    move-result-object v9

    #@43
    .line 471
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x104043f

    #@46
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v10

    #@4a
    .line 472
    .local v10, "title":Ljava/lang/CharSequence;
    const v0, 0x1040440

    #@4d
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v6

    #@51
    .line 475
    .local v6, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@53
    if-nez v0, :cond_3

    #@55
    .line 476
    new-instance v0, Landroid/app/Notification$Builder;

    #@57
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@59
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@5c
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@5e
    .line 477
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@60
    const-wide/16 v12, 0x0

    #@62
    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@69
    move-result-object v0

    #@6a
    .line 479
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@6c
    .line 480
    const v3, 0x1060059

    #@6f
    .line 479
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@72
    move-result v1

    #@73
    .line 477
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v0

    #@7b
    .line 482
    const-string/jumbo v1, "status"

    #@7e
    .line 477
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@81
    .line 484
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@83
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@92
    .line 488
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@94
    .line 490
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@96
    .line 491
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@98
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9b
    move-result-object v1

    #@9c
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9e
    .line 490
    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@a1
    .line 447
    return-void
.end method

.method private tetherUsb(Z)V
    .locals 7
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 536
    new-array v2, v4, [Ljava/lang/String;

    #@3
    .line 538
    .local v2, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    .line 543
    array-length v5, v2

    #@a
    :goto_0
    if-ge v4, v5, :cond_2

    #@c
    aget-object v1, v2, v4

    #@e
    .line 544
    .local v1, "iface":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 545
    if-eqz p1, :cond_0

    #@16
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    #@19
    move-result v3

    #@1a
    .line 546
    .local v3, "result":I
    :goto_1
    if-nez v3, :cond_1

    #@1c
    .line 547
    return-void

    #@1d
    .line 539
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    #@1e
    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Tethering"

    #@21
    const-string/jumbo v5, "Error listing Interfaces"

    #@24
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 541
    return-void

    #@28
    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "iface":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@2b
    move-result v3

    #@2c
    .restart local v3    # "result":I
    goto :goto_1

    #@2d
    .line 543
    .end local v3    # "result":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 551
    .end local v1    # "iface":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Tethering"

    #@33
    const-string/jumbo v5, "unable start or stop USB tethering"

    #@36
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 533
    return-void
.end method


# virtual methods
.method public checkDunRequired()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 642
    const/4 v1, 0x2

    #@2
    .line 643
    .local v1, "secureSetting":I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "phone"

    #@7
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@d
    .line 644
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    #@f
    .line 645
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    #@12
    move-result v1

    #@13
    .line 647
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@15
    monitor-enter v4

    #@16
    .line 649
    const/4 v3, 0x2

    #@17
    if-eq v1, v3, :cond_4

    #@19
    .line 650
    const/4 v3, 0x1

    #@1a
    if-ne v1, v3, :cond_1

    #@1c
    .line 651
    const/4 v0, 0x4

    #@1d
    .line 653
    .local v0, "requiredApn":I
    :goto_0
    if-ne v0, v5, :cond_5

    #@1f
    .line 654
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@21
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@23
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 655
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@2b
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@2d
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    goto :goto_1

    #@31
    .line 647
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3

    #@34
    .line 652
    :cond_1
    const/4 v0, 0x5

    #@35
    .restart local v0    # "requiredApn":I
    goto :goto_0

    #@36
    .line 657
    :cond_2
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@38
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@3a
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 658
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@42
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@44
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@47
    goto :goto_2

    #@48
    .line 660
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@4a
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@4c
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_4

    #@52
    .line 661
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@54
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@56
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@59
    .line 675
    .end local v0    # "requiredApn":I
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@5b
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@5d
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_8

    #@63
    .line 676
    const/4 v3, 0x4

    #@64
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    :goto_4
    monitor-exit v4

    #@67
    .line 641
    return-void

    #@68
    .line 664
    .restart local v0    # "requiredApn":I
    :cond_5
    :goto_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@6a
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@6c
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_6

    #@72
    .line 665
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@74
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@76
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@79
    goto :goto_5

    #@7a
    .line 667
    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@7c
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@7e
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@81
    move-result v3

    #@82
    if-nez v3, :cond_7

    #@84
    .line 668
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@86
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@88
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@8b
    .line 670
    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@8d
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@8f
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@92
    move-result v3

    #@93
    if-nez v3, :cond_4

    #@95
    .line 671
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@97
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@99
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@9c
    goto :goto_3

    #@9d
    .line 678
    .end local v0    # "requiredApn":I
    :cond_8
    const/4 v3, 0x5

    #@9e
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1692
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v5, "  "

    #@5
    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 1694
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@a
    .line 1695
    const-string/jumbo v6, "android.permission.DUMP"

    #@d
    .line 1694
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 1696
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    .line 1697
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v6

    #@23
    .line 1696
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 1697
    const-string/jumbo v6, ", uid="

    #@2a
    .line 1696
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 1698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v6

    #@32
    .line 1696
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 1699
    return-void

    #@3e
    .line 1702
    :cond_0
    const-string/jumbo v5, "Tethering:"

    #@41
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 1703
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@47
    .line 1704
    const-string/jumbo v5, "mUpstreamIfaceTypes:"

    #@4a
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 1705
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4f
    monitor-enter v6

    #@50
    .line 1706
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@52
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v1

    #@56
    .local v1, "netType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_1

    #@5c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Ljava/lang/Integer;

    #@62
    .line 1707
    .local v0, "netType":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, " "

    #@6a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@71
    move-result v7

    #@72
    invoke-static {v7}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 1705
    .end local v0    # "netType":Ljava/lang/Integer;
    .end local v1    # "netType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@83
    monitor-exit v6

    #@84
    throw v5

    #@85
    .line 1709
    .restart local v1    # "netType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@88
    .line 1711
    const-string/jumbo v5, "Tether state:"

    #@8b
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 1712
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@91
    .line 1713
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@93
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@96
    move-result-object v5

    #@97
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9a
    move-result-object v3

    #@9b
    .local v3, "o$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9e
    move-result v5

    #@9f
    if-eqz v5, :cond_2

    #@a1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a4
    move-result-object v2

    #@a5
    .line 1714
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@a8
    goto :goto_1

    #@a9
    .line 1716
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ac
    monitor-exit v6

    #@ad
    .line 1718
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@b0
    .line 1719
    return-void
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 725
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 726
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 727
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 728
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 729
    .local v1, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@24
    .line 730
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 731
    check-cast v1, Ljava/lang/String;

    #@2c
    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 726
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7

    #@33
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    monitor-exit v8

    #@34
    .line 735
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v7

    #@38
    new-array v5, v7, [Ljava/lang/String;

    #@3a
    .line 736
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v7

    #@3f
    if-ge v0, v7, :cond_2

    #@41
    .line 737
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/String;

    #@47
    aput-object v7, v5, v0

    #@49
    .line 736
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 739
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    const/4 v1, 0x0

    #@1
    .line 367
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    move-object v0, v2

    #@b
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@d
    move-object v1, v0

    #@e
    .line 369
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v1, :cond_0

    #@10
    .line 370
    const-string/jumbo v2, "Tethering"

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Tried to getLastTetherError on an unknown iface :"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 371
    const-string/jumbo v5, ", ignoring"

    #@26
    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 372
    const/4 v2, 0x1

    #@32
    monitor-exit v3

    #@33
    return v2

    #@34
    .line 374
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v2

    #@38
    monitor-exit v3

    #@39
    return v2

    #@3a
    .line 367
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 703
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 704
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 705
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 706
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 707
    .local v1, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@24
    .line 708
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 709
    check-cast v1, Ljava/lang/String;

    #@2c
    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 704
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7

    #@33
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    monitor-exit v8

    #@34
    .line 713
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v7

    #@38
    new-array v5, v7, [Ljava/lang/String;

    #@3a
    .line 714
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v7

    #@3f
    if-ge v0, v7, :cond_2

    #@41
    .line 715
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/String;

    #@47
    aput-object v7, v5, v0

    #@49
    .line 714
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 717
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 685
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 686
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 687
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 688
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 689
    .local v1, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@24
    .line 690
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 691
    check-cast v1, Ljava/lang/String;

    #@2c
    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 686
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7

    #@33
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    monitor-exit v8

    #@34
    .line 695
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v7

    #@38
    new-array v5, v7, [Ljava/lang/String;

    #@3a
    .line 696
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v7

    #@3f
    if-ge v0, v7, :cond_2

    #@41
    .line 697
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/String;

    #@47
    aput-object v7, v5, v0

    #@49
    .line 696
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 699
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    #@0
    .prologue
    .line 630
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 631
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@6
    .line 632
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@8
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@b
    move-result v3

    #@c
    new-array v2, v3, [I

    #@e
    .line 633
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@10
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .line 634
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@17
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@1a
    move-result v3

    #@1b
    if-ge v0, v3, :cond_0

    #@1d
    .line 635
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/Integer;

    #@23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v3

    #@27
    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 634
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    monitor-exit v4

    #@2d
    .line 638
    return-object v2

    #@2e
    .line 630
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    const/4 v0, 0x0

    #@1
    .line 286
    .local v0, "found":Z
    const/4 v2, 0x0

    #@2
    .line 287
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 288
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 289
    const/4 v0, 0x1

    #@c
    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 292
    const/4 v0, 0x1

    #@13
    .line 293
    const/4 v2, 0x1

    #@14
    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 296
    const/4 v0, 0x1

    #@1b
    .line 298
    :cond_2
    if-nez v0, :cond_3

    #@1d
    monitor-exit v4

    #@1e
    .line 300
    return-void

    #@1f
    .line 303
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@21
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 304
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_4

    #@29
    monitor-exit v4

    #@2a
    .line 306
    return-void

    #@2b
    .line 308
    :cond_4
    :try_start_2
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@2d
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@2f
    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    #@32
    .line 309
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@34
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 310
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    monitor-exit v4

    #@3b
    .line 283
    return-void

    #@3c
    .line 287
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    #@3
    .line 251
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 318
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 322
    return-void

    #@f
    .line 324
    :cond_0
    const/4 v1, 0x4

    #@10
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@13
    .line 325
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 314
    return-void

    #@1a
    .line 316
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 218
    const/4 v0, 0x0

    #@1
    .line 219
    .local v0, "found":Z
    const/4 v2, 0x0

    #@2
    .line 220
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 222
    const/4 v0, 0x1

    #@c
    .line 229
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@e
    monitor-exit v4

    #@f
    return-void

    #@10
    .line 223
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 224
    const/4 v0, 0x1

    #@17
    .line 225
    const/4 v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 226
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 227
    const/4 v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 231
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@23
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@29
    .line 232
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_5

    #@2b
    .line 233
    if-nez v1, :cond_4

    #@2d
    .line 234
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@2f
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@31
    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    #@34
    .line 235
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@36
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 236
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    :cond_4
    :goto_1
    monitor-exit v4

    #@3d
    .line 216
    return-void

    #@3e
    .line 239
    :cond_5
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_4

    #@44
    .line 243
    if-eqz v1, :cond_4

    #@46
    .line 244
    const/4 v3, 0x4

    #@47
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@4a
    .line 245
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@4c
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_1

    #@50
    .line 220
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    #@51
    monitor-exit v4

    #@52
    throw v3
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 275
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 276
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 277
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 279
    return v2

    #@1a
    .line 275
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 266
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 268
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 270
    return v2

    #@1a
    .line 266
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method public setUsbTethering(Z)I
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 607
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "usb"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/hardware/usb/UsbManager;

    #@c
    .line 609
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 610
    if-eqz p1, :cond_1

    #@11
    .line 611
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 612
    const/4 v1, 0x1

    #@16
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :goto_0
    monitor-exit v2

    #@1a
    .line 625
    return v3

    #@1b
    .line 614
    :cond_0
    const/4 v1, 0x1

    #@1c
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@1e
    .line 615
    const-string/jumbo v1, "rndis"

    #@21
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 609
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1

    #@28
    .line 618
    :cond_1
    const/4 v1, 0x0

    #@29
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    #@2c
    .line 619
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 620
    const/4 v1, 0x0

    #@31
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    #@34
    .line 622
    :cond_2
    const/4 v1, 0x0

    #@35
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    const-string/jumbo v1, "Tethering"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Tethering "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 331
    const/4 v0, 0x0

    #@1b
    .line 332
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@1d
    monitor-enter v2

    #@1e
    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@20
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    monitor-exit v2

    #@27
    .line 335
    if-nez v0, :cond_0

    #@29
    .line 336
    const-string/jumbo v1, "Tethering"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Tried to Tether an unknown iface :"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, ", ignoring"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 337
    const/4 v1, 0x1

    #@4b
    return v1

    #@4c
    .line 332
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 339
    .restart local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    #@52
    move-result v1

    #@53
    if-nez v1, :cond_1

    #@55
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_2

    #@5b
    .line 343
    :cond_1
    const/4 v1, 0x2

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@5f
    .line 344
    const/4 v1, 0x0

    #@60
    return v1

    #@61
    .line 340
    :cond_2
    const-string/jumbo v1, "Tethering"

    #@64
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "Tried to Tether an unavailable iface :"

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    const-string/jumbo v3, ", ignoring"

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 341
    const/4 v1, 0x4

    #@83
    return v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    const-string/jumbo v1, "Tethering"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Untethering "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 349
    const/4 v0, 0x0

    #@1b
    .line 350
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@1d
    monitor-enter v2

    #@1e
    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@20
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    monitor-exit v2

    #@27
    .line 353
    if-nez v0, :cond_0

    #@29
    .line 354
    const-string/jumbo v1, "Tethering"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Tried to Untether an unknown iface :"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, ", ignoring"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 355
    const/4 v1, 0x1

    #@4b
    return v1

    #@4c
    .line 350
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 357
    .restart local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_1

    #@55
    .line 358
    const-string/jumbo v1, "Tethering"

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "Tried to Untethered an errored iface :"

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    const-string/jumbo v3, ", ignoring"

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 359
    const/4 v1, 0x4

    #@77
    return v1

    #@78
    .line 361
    :cond_1
    const/4 v1, 0x3

    #@79
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@7c
    .line 362
    const/4 v1, 0x0

    #@7d
    return v1
.end method

.method updateConfiguration()V
    .locals 9

    #@0
    .prologue
    .line 191
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v6

    #@6
    .line 192
    const v7, 0x1070010

    #@9
    .line 191
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 193
    .local v3, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v6

    #@13
    .line 194
    const v7, 0x1070011

    #@16
    .line 193
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 195
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v6

    #@20
    .line 196
    const v7, 0x1070013

    #@23
    .line 195
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 198
    .local v2, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c
    move-result-object v6

    #@2d
    .line 199
    const v7, 0x1070016

    #@30
    .line 198
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@33
    move-result-object v1

    #@34
    .line 200
    .local v1, "ifaceTypes":[I
    new-instance v5, Ljava/util/ArrayList;

    #@36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 201
    .local v5, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    #@3a
    array-length v7, v1

    #@3b
    :goto_0
    if-ge v6, v7, :cond_0

    #@3d
    aget v0, v1, v6

    #@3f
    .line 202
    .local v0, "i":I
    new-instance v8, Ljava/lang/Integer;

    #@41
    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    #@44
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@47
    .line 201
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 205
    .end local v0    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4c
    monitor-enter v7

    #@4d
    .line 206
    :try_start_0
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@4f
    .line 207
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@51
    .line 208
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@53
    .line 209
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v7

    #@56
    .line 213
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    #@59
    .line 190
    return-void

    #@5a
    .line 205
    :catchall_0
    move-exception v6

    #@5b
    monitor-exit v7

    #@5c
    throw v6
.end method
