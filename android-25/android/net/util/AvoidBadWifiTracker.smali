.class public Landroid/net/util/AvoidBadWifiTracker;
.super Ljava/lang/Object;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;,
        Landroid/net/util/AvoidBadWifiTracker$SettingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile mAvoidBadWifi:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReevaluateRunnable:Ljava/lang/Runnable;

.field private final mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/util/AvoidBadWifiTracker;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const-class v0, Landroid/net/util/AvoidBadWifiTracker;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    #@8
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    #@4
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    #@7
    .line 68
    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    #@9
    .line 69
    iput-object p2, p0, Landroid/net/util/AvoidBadWifiTracker;->mHandler:Landroid/os/Handler;

    #@b
    .line 70
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;

    #@d
    invoke-direct {v0, p0, p3}, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;-><init>(Landroid/net/util/AvoidBadWifiTracker;Ljava/lang/Runnable;)V

    #@10
    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    #@12
    .line 71
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    #@14
    invoke-direct {v0, p0}, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;-><init>(Landroid/net/util/AvoidBadWifiTracker;)V

    #@17
    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    #@19
    .line 73
    new-instance v3, Landroid/content/IntentFilter;

    #@1b
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@1e
    .line 74
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    #@21
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@24
    .line 75
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    #@26
    new-instance v1, Landroid/net/util/AvoidBadWifiTracker$1;

    #@28
    invoke-direct {v1, p0}, Landroid/net/util/AvoidBadWifiTracker$1;-><init>(Landroid/net/util/AvoidBadWifiTracker;)V

    #@2b
    .line 79
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2d
    move-object v5, v4

    #@2e
    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@31
    .line 81
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->update()Z

    #@34
    .line 67
    return-void
.end method


# virtual methods
.method synthetic -android_net_util_AvoidBadWifiTracker_lambda$1(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "cb"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->update()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@b
    .line 0
    :cond_0
    return-void
.end method

.method public configRestrictsAvoidBadWifi()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    const v2, 0x10e0011

    #@a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method public currentValue()Z
    .locals 1

    #@0
    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    #@2
    return v0
.end method

.method public getSettingsValue()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 104
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_avoid_bad_wifi"

    #@9
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public reevaluate()V
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 108
    return-void
.end method

.method public shouldNotifyWifiUnvalidated()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public update()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 113
    const-string/jumbo v2, "1"

    #@5
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    .line 114
    .local v1, "settingAvoidBadWifi":Z
    iget-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    #@f
    .line 115
    .local v0, "prev":Z
    if-nez v1, :cond_0

    #@11
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    move v2, v4

    #@18
    :goto_0
    iput-boolean v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    #@1a
    .line 116
    iget-boolean v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    #@1c
    if-eq v2, v0, :cond_1

    #@1e
    :goto_1
    return v3

    #@1f
    :cond_0
    move v2, v3

    #@20
    .line 115
    goto :goto_0

    #@21
    :cond_1
    move v3, v4

    #@22
    .line 116
    goto :goto_1
.end method
