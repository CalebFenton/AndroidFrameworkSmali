.class public Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x1

.field private static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x3

.field private static final EVENT_NETWORK_RELEASE:I = 0x5

.field private static final EVENT_NETWORK_REQUEST:I = 0x4

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x2

.field private static final RELEASE:Z = false

.field private static final REQUEST:Z = true

.field private static final REQUEST_LOG_SIZE:I = 0x28

.field private static final TELEPHONY_NETWORK_SCORE:I = 0x32


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private final mDefaultRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsDefault:Z

.field private mPhoneId:I

.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private final mSpecificRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionId:I

.field private final mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onActivePhoneSwitch()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onDefaultChange()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onNeedNetworkFor(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onReleaseNetworkFor(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onSubIdChange()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 6
    .param p1, "phoneSwitcher"    # Lcom/android/internal/telephony/PhoneSwitcher;
    .param p2, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p3, "subscriptionMonitor"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "phoneId"    # I
    .param p7, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "TelephonyNetworkFactory["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, p4, p5, v0, v4}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@20
    .line 52
    new-instance v0, Ljava/util/HashMap;

    #@22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@25
    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@27
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2c
    .line 53
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    #@2e
    .line 74
    new-instance v0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;

    #@30
    invoke-direct {v0, p0, p4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;-><init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V

    #@33
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    #@35
    .line 76
    invoke-direct {p0, p2, p6}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    #@3c
    .line 77
    const/16 v0, 0x32

    #@3e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setScoreFilter(I)V

    #@41
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@43
    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@45
    .line 81
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@47
    .line 82
    iput p6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    #@49
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v1, "TelephonyNetworkFactory["

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    const-string/jumbo v1, "]"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@66
    .line 84
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@68
    .line 86
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@6a
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@6c
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    #@6e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    #@70
    .line 88
    const/4 v3, 0x1

    #@71
    .line 87
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@74
    .line 90
    const/4 v0, -0x1

    #@75
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@77
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@79
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    #@7b
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    #@7d
    .line 92
    const/4 v3, 0x2

    #@7e
    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@81
    .line 94
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@83
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@85
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    #@87
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    #@89
    .line 96
    const/4 v3, 0x3

    #@8a
    .line 95
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@8d
    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->register()V

    #@90
    .line 72
    return-void
.end method

.method private applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 4
    .param p2, "action"    # Z
    .param p3, "logStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p1, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/util/LocalLog;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "networkRequest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/net/NetworkRequest;

    #@14
    .line 165
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/util/LocalLog;

    #@1a
    .line 166
    .local v0, "localLog":Landroid/util/LocalLog;
    invoke-virtual {v0, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@1d
    .line 167
    if-eqz p2, :cond_0

    #@1f
    .line 168
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@21
    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@24
    goto :goto_0

    #@25
    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@27
    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@2a
    goto :goto_0

    #@2b
    .line 163
    .end local v0    # "localLog":Landroid/util/LocalLog;
    .end local v1    # "networkRequest":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method private makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "subscriptionId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@6
    .line 109
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@9
    .line 110
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@c
    .line 111
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@10
    .line 112
    const/4 v1, 0x2

    #@11
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@14
    .line 113
    const/4 v1, 0x3

    #@15
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@18
    .line 114
    const/4 v1, 0x4

    #@19
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1c
    .line 115
    const/4 v1, 0x5

    #@1d
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@20
    .line 116
    const/4 v1, 0x7

    #@21
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@24
    .line 117
    const/16 v1, 0x8

    #@26
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@29
    .line 118
    const/16 v1, 0x9

    #@2b
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2e
    .line 119
    const/16 v1, 0xa

    #@30
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@33
    .line 120
    const/16 v1, 0xd

    #@35
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@38
    .line 121
    const/16 v1, 0xc

    #@3a
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@3d
    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@44
    .line 123
    return-object v0
.end method

.method private makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    .line 103
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 104
    .local v0, "subscriptionId":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private onActivePhoneSwitch()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@4
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    #@6
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->isPhoneActive(I)Z

    #@9
    move-result v1

    #@a
    .line 178
    .local v1, "newIsActive":Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@c
    if-eq v2, v1, :cond_1

    #@e
    .line 179
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@10
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "onActivePhoneSwitch("

    #@18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@1e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v5, ", "

    #@25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@2b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v5, ")"

    #@32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 181
    .local v0, "logString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@3d
    .line 182
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@3f
    if-eqz v2, :cond_0

    #@41
    .line 183
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@43
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@45
    if-eqz v2, :cond_2

    #@47
    move v2, v3

    #@48
    :goto_0
    invoke-direct {p0, v5, v2, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    #@4b
    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    #@4d
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@4f
    if-eqz v5, :cond_3

    #@51
    :goto_1
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    #@54
    .line 176
    .end local v0    # "logString":Ljava/lang/String;
    :cond_1
    return-void

    #@55
    .restart local v0    # "logString":Ljava/lang/String;
    :cond_2
    move v2, v4

    #@56
    .line 183
    goto :goto_0

    #@57
    :cond_3
    move v3, v4

    #@58
    .line 185
    goto :goto_1
.end method

.method private onDefaultChange()V
    .locals 5

    #@0
    .prologue
    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@5
    move-result v1

    #@6
    .line 205
    .local v1, "newDefaultSubscriptionId":I
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@8
    if-ne v1, v3, :cond_0

    #@a
    const/4 v2, 0x1

    #@b
    .line 206
    .local v2, "newIsDefault":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@d
    if-eq v2, v3, :cond_2

    #@f
    .line 207
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@11
    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "onDefaultChange("

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, ","

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, ")"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 209
    .local v0, "logString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@3e
    .line 210
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@40
    if-nez v3, :cond_1

    #@42
    return-void

    #@43
    .line 205
    .end local v0    # "logString":Ljava/lang/String;
    .end local v2    # "newIsDefault":Z
    :cond_0
    const/4 v2, 0x0

    #@44
    .restart local v2    # "newIsDefault":Z
    goto :goto_0

    #@45
    .line 211
    .restart local v0    # "logString":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@47
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@49
    if-eqz v3, :cond_3

    #@4b
    const/4 v3, 0x1

    #@4c
    :goto_1
    invoke-direct {p0, v4, v3, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    #@4f
    .line 203
    .end local v0    # "logString":Ljava/lang/String;
    :cond_2
    return-void

    #@50
    .line 211
    .restart local v0    # "logString":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    #@51
    goto :goto_1
.end method

.method private onNeedNetworkFor(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/16 v5, 0x28

    #@2
    .line 223
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v2, Landroid/net/NetworkRequest;

    #@6
    .line 224
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    const/4 v0, 0x0

    #@7
    .line 225
    .local v0, "isApplicable":Z
    const/4 v1, 0x0

    #@8
    .line 226
    .local v1, "localLog":Landroid/util/LocalLog;
    iget-object v4, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 228
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@16
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    #@1c
    .line 229
    .local v1, "localLog":Landroid/util/LocalLog;
    if-nez v1, :cond_0

    #@1e
    .line 230
    new-instance v1, Landroid/util/LocalLog;

    #@20
    .end local v1    # "localLog":Landroid/util/LocalLog;
    invoke-direct {v1, v5}, Landroid/util/LocalLog;-><init>(I)V

    #@23
    .line 231
    .restart local v1    # "localLog":Landroid/util/LocalLog;
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "created for "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v1, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@3a
    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@41
    .line 243
    .end local v0    # "isApplicable":Z
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@43
    if-eqz v4, :cond_2

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 244
    const-string/jumbo v3, "onNeedNetworkFor"

    #@4a
    .line 245
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@4d
    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    const-string/jumbo v5, " "

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@68
    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@6a
    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@6d
    .line 222
    :goto_1
    return-void

    #@6e
    .line 236
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "isApplicable":Z
    .local v1, "localLog":Landroid/util/LocalLog;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    #@70
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    move-result-object v1

    #@74
    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    #@76
    .line 237
    .local v1, "localLog":Landroid/util/LocalLog;
    if-nez v1, :cond_0

    #@78
    .line 238
    new-instance v1, Landroid/util/LocalLog;

    #@7a
    .end local v1    # "localLog":Landroid/util/LocalLog;
    invoke-direct {v1, v5}, Landroid/util/LocalLog;-><init>(I)V

    #@7d
    .line 239
    .restart local v1    # "localLog":Landroid/util/LocalLog;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    #@7f
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 240
    const/4 v0, 0x1

    #@83
    goto :goto_0

    #@84
    .line 249
    .end local v0    # "isApplicable":Z
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v5, "not acting - isApp="

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    const-string/jumbo v5, ", isAct="

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    .line 250
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@a8
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    const-string/jumbo v5, " "

    #@b4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v4

    #@c0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@c3
    goto :goto_1
.end method

.method private onReleaseNetworkFor(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 263
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v2, Landroid/net/NetworkRequest;

    #@4
    .line 264
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    #@5
    .line 265
    .local v1, "localLog":Landroid/util/LocalLog;
    const/4 v0, 0x0

    #@6
    .line 266
    .local v0, "isApplicable":Z
    iget-object v4, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 268
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@14
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    #@1a
    .line 269
    .local v1, "localLog":Landroid/util/LocalLog;
    if-eqz v1, :cond_0

    #@1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@1e
    .line 274
    .end local v0    # "isApplicable":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@20
    if-eqz v4, :cond_3

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 275
    const-string/jumbo v3, "onReleaseNetworkFor"

    #@27
    .line 276
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@2a
    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    const-string/jumbo v5, " "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@45
    .line 278
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@47
    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@4a
    .line 262
    :goto_1
    return-void

    #@4b
    .line 269
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "isApplicable":Z
    :cond_0
    const/4 v0, 0x0

    #@4c
    goto :goto_0

    #@4d
    .line 271
    .local v1, "localLog":Landroid/util/LocalLog;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    #@4f
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    .end local v1    # "localLog":Landroid/util/LocalLog;
    check-cast v1, Landroid/util/LocalLog;

    #@55
    .line 272
    .local v1, "localLog":Landroid/util/LocalLog;
    if-eqz v1, :cond_2

    #@57
    const/4 v0, 0x1

    #@58
    goto :goto_0

    #@59
    :cond_2
    const/4 v0, 0x0

    #@5a
    goto :goto_0

    #@5b
    .line 280
    .end local v0    # "isApplicable":Z
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "not releasing - isApp="

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    const-string/jumbo v5, ", isAct="

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    .line 281
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@7f
    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    const-string/jumbo v5, " "

    #@8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@9a
    goto :goto_1
.end method

.method private onSubIdChange()V
    .locals 3

    #@0
    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    #@4
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@7
    move-result v0

    #@8
    .line 193
    .local v0, "newSubscriptionId":I
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@a
    if-eq v1, v0, :cond_0

    #@c
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "onSubIdChange "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "->"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@30
    .line 195
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@32
    .line 196
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@34
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    #@3b
    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 291
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v3, "  "

    #@5
    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 292
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, " mSubId="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " mIsActive="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 293
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    #@29
    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 293
    const-string/jumbo v4, " mIsDefault="

    #@30
    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 293
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    #@36
    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 294
    const-string/jumbo v3, "Default Requests:"

    #@44
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 295
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@4a
    .line 296
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@4c
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@4f
    move-result-object v3

    #@50
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v1

    #@54
    .local v1, "nr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_0

    #@5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/net/NetworkRequest;

    #@60
    .line 297
    .local v0, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@63
    .line 298
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@66
    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    #@68
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Landroid/util/LocalLog;

    #@6e
    invoke-virtual {v3, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@71
    .line 300
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@74
    goto :goto_0

    #@75
    .line 302
    .end local v0    # "nr":Landroid/net/NetworkRequest;
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@78
    .line 290
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 286
    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x4

    #@3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 218
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 216
    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x5

    #@3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 258
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 259
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 256
    return-void
.end method
