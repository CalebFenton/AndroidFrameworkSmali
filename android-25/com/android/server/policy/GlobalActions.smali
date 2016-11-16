.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RestartAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/internal/policy/EmergencyAffordanceManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 121
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    #@7
    .line 122
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    #@9
    .line 123
    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@b
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@d
    .line 124
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    #@f
    .line 1094
    new-instance v4, Lcom/android/server/policy/GlobalActions$1;

    #@11
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@14
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@16
    .line 1115
    new-instance v4, Lcom/android/server/policy/GlobalActions$2;

    #@18
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@1b
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@1d
    .line 1126
    new-instance v4, Lcom/android/server/policy/GlobalActions$3;

    #@1f
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@22
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    #@24
    .line 1135
    new-instance v4, Lcom/android/server/policy/GlobalActions$4;

    #@26
    new-instance v7, Landroid/os/Handler;

    #@28
    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    #@2b
    invoke-direct {v4, p0, v7}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    #@2e
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    #@30
    .line 1147
    new-instance v4, Lcom/android/server/policy/GlobalActions$5;

    #@32
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@35
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@37
    .line 134
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@39
    .line 135
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@3b
    .line 136
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@3d
    const-string/jumbo v7, "audio"

    #@40
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/media/AudioManager;

    #@46
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    #@48
    .line 138
    const-string/jumbo v4, "dreams"

    #@4b
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4e
    move-result-object v4

    #@4f
    .line 137
    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    #@52
    move-result-object v4

    #@53
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@55
    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    #@57
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@5a
    .line 142
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@5d
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@60
    .line 143
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    #@63
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@66
    .line 144
    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@69
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6c
    .line 145
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@6e
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@71
    .line 148
    const-string/jumbo v4, "connectivity"

    #@74
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    .line 147
    check-cast v0, Landroid/net/ConnectivityManager;

    #@7a
    .line 149
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    #@7d
    move-result v4

    #@7e
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@80
    .line 153
    const-string/jumbo v4, "phone"

    #@83
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@89
    .line 154
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@8b
    invoke-virtual {v2, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@8e
    .line 155
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@90
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@93
    move-result-object v4

    #@94
    .line 156
    const-string/jumbo v7, "airplane_mode_on"

    #@97
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@9a
    move-result-object v7

    #@9b
    .line 157
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    #@9d
    .line 155
    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@a0
    .line 158
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@a2
    const-string/jumbo v7, "vibrator"

    #@a5
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a8
    move-result-object v3

    #@a9
    check-cast v3, Landroid/os/Vibrator;

    #@ab
    .line 159
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_0

    #@ad
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    #@b0
    move-result v4

    #@b1
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    #@b3
    .line 161
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@b5
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b8
    move-result-object v4

    #@b9
    .line 162
    const v7, 0x1120081

    #@bc
    .line 161
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@bf
    move-result v4

    #@c0
    if-eqz v4, :cond_1

    #@c2
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@c4
    .line 164
    new-instance v4, Lcom/android/internal/policy/EmergencyAffordanceManager;

    #@c6
    invoke-direct {v4, p1}, Lcom/android/internal/policy/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    #@c9
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    #@cb
    .line 133
    return-void

    #@cc
    :cond_0
    move v4, v5

    #@cd
    .line 159
    goto :goto_0

    #@ce
    :cond_1
    move v5, v6

    #@cf
    .line 161
    goto :goto_1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 607
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "user"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v8

    #@9
    check-cast v8, Landroid/os/UserManager;

    #@b
    .line 608
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_6

    #@11
    .line 609
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@14
    move-result-object v10

    #@15
    .line 610
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@18
    move-result-object v6

    #@19
    .line 611
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v9

    #@1d
    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_6

    #@23
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    check-cast v5, Landroid/content/pm/UserInfo;

    #@29
    .line 612
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 613
    if-nez v6, :cond_2

    #@31
    .line 614
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    #@33
    if-nez v1, :cond_1

    #@35
    :goto_1
    const/4 v7, 0x1

    #@36
    .line 615
    .local v7, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@38
    if-eqz v1, :cond_3

    #@3a
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@3c
    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v3

    #@40
    .line 617
    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$13;

    #@42
    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@49
    if-eqz v1, :cond_4

    #@4b
    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@4d
    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 620
    if-eqz v7, :cond_5

    #@53
    const-string/jumbo v1, " \u2714"

    #@56
    .line 619
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 618
    const v2, 0x10803ca

    #@61
    move-object v1, p0

    #@62
    .line 617
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    #@65
    .line 637
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_0

    #@69
    .line 614
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v7    # "isCurrentUser":Z
    :cond_1
    const/4 v7, 0x0

    #@6a
    .restart local v7    # "isCurrentUser":Z
    goto :goto_2

    #@6b
    .end local v7    # "isCurrentUser":Z
    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    #@6d
    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    #@6f
    if-ne v1, v2, :cond_1

    #@71
    goto :goto_1

    #@72
    .line 616
    .restart local v7    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    #@73
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@74
    .line 619
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v1, "Primary"

    #@77
    goto :goto_4

    #@78
    .line 620
    :cond_5
    const-string/jumbo v1, ""

    #@7b
    goto :goto_5

    #@7c
    .line 606
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "isCurrentUser":Z
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@6
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 188
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@e
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 184
    :cond_0
    :goto_0
    return-void

    #@12
    .line 190
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1184
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 1185
    const-string/jumbo v3, "airplane_mode_on"

    #@9
    .line 1186
    if-eqz p1, :cond_1

    #@b
    const/4 v1, 0x1

    #@c
    .line 1183
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@f
    .line 1187
    new-instance v0, Landroid/content/Intent;

    #@11
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    #@14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 1188
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c
    .line 1189
    const-string/jumbo v1, "state"

    #@1f
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@22
    .line 1190
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@24
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@26
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@29
    .line 1191
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 1192
    if-eqz p1, :cond_2

    #@2f
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@31
    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@33
    .line 1182
    :cond_0
    return-void

    #@34
    .line 1186
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    #@35
    goto :goto_0

    #@36
    .line 1192
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@38
    goto :goto_1
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 13

    #@0
    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 222
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@9
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@b
    .line 226
    :goto_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$6;

    #@d
    .line 227
    const v2, 0x108036e

    #@10
    .line 228
    const v3, 0x1080370

    #@13
    .line 229
    const v4, 0x104013a

    #@16
    .line 230
    const v5, 0x104013b

    #@19
    .line 231
    const v6, 0x104013c

    #@1c
    move-object v1, p0

    #@1d
    .line 226
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    #@20
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@22
    .line 267
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    #@25
    .line 269
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@2c
    .line 270
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v0

    #@32
    .line 271
    const v1, 0x107003d

    #@35
    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    .line 273
    .local v9, "defaultActions":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    #@3b
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@3e
    .line 274
    .local v8, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@3f
    .local v11, "i":I
    :goto_1
    array-length v0, v9

    #@40
    if-ge v11, v0, :cond_d

    #@42
    .line 275
    aget-object v7, v9, v11

    #@44
    .line 276
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_1

    #@4a
    .line 274
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 224
    .end local v7    # "actionKey":Ljava/lang/String;
    .end local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "defaultActions":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    #@4f
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@51
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    #@53
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@55
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    #@58
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@5a
    goto :goto_0

    #@5b
    .line 280
    .restart local v7    # "actionKey":Ljava/lang/String;
    .restart local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "defaultActions":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_1
    const-string/jumbo v0, "power"

    #@5e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_3

    #@64
    .line 281
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@66
    new-instance v1, Lcom/android/server/policy/GlobalActions$PowerAction;

    #@68
    const/4 v2, 0x0

    #@69
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    #@6c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6f
    .line 311
    :cond_2
    :goto_3
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_2

    #@73
    .line 282
    :cond_3
    const-string/jumbo v0, "airplane"

    #@76
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_4

    #@7c
    .line 283
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@7e
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_3

    #@84
    .line 284
    :cond_4
    const-string/jumbo v0, "bugreport"

    #@87
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_5

    #@8d
    .line 285
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@8f
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@92
    move-result-object v0

    #@93
    .line 286
    const-string/jumbo v1, "bugreport_in_power_menu"

    #@96
    const/4 v2, 0x0

    #@97
    .line 285
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9a
    move-result v0

    #@9b
    if-eqz v0, :cond_2

    #@9d
    .line 286
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    #@a0
    move-result v0

    #@a1
    .line 285
    if-eqz v0, :cond_2

    #@a3
    .line 287
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@a5
    new-instance v1, Lcom/android/server/policy/GlobalActions$BugReportAction;

    #@a7
    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@aa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ad
    goto :goto_3

    #@ae
    .line 289
    :cond_5
    const-string/jumbo v0, "silent"

    #@b1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v0

    #@b5
    if-eqz v0, :cond_6

    #@b7
    .line 290
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@b9
    if-eqz v0, :cond_2

    #@bb
    .line 291
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@bd
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@bf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c2
    goto :goto_3

    #@c3
    .line 293
    :cond_6
    const-string/jumbo v0, "users"

    #@c6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_7

    #@cc
    .line 294
    const-string/jumbo v0, "fw.power_user_switcher"

    #@cf
    const/4 v1, 0x0

    #@d0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@d3
    move-result v0

    #@d4
    if-eqz v0, :cond_2

    #@d6
    .line 295
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@d8
    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    #@db
    goto :goto_3

    #@dc
    .line 297
    :cond_7
    const-string/jumbo v0, "settings"

    #@df
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result v0

    #@e3
    if-eqz v0, :cond_8

    #@e5
    .line 298
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@e7
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ee
    goto :goto_3

    #@ef
    .line 299
    :cond_8
    const-string/jumbo v0, "lockdown"

    #@f2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v0

    #@f6
    if-eqz v0, :cond_9

    #@f8
    .line 300
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@fa
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@101
    goto/16 :goto_3

    #@103
    .line 301
    :cond_9
    const-string/jumbo v0, "voiceassist"

    #@106
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v0

    #@10a
    if-eqz v0, :cond_a

    #@10c
    .line 302
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@10e
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    #@111
    move-result-object v1

    #@112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@115
    goto/16 :goto_3

    #@117
    .line 303
    :cond_a
    const-string/jumbo v0, "assist"

    #@11a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v0

    #@11e
    if-eqz v0, :cond_b

    #@120
    .line 304
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@122
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    #@125
    move-result-object v1

    #@126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@129
    goto/16 :goto_3

    #@12b
    .line 305
    :cond_b
    const-string/jumbo v0, "restart"

    #@12e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@131
    move-result v0

    #@132
    if-eqz v0, :cond_c

    #@134
    .line 306
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@136
    new-instance v1, Lcom/android/server/policy/GlobalActions$RestartAction;

    #@138
    const/4 v2, 0x0

    #@139
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$RestartAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RestartAction;)V

    #@13c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13f
    goto/16 :goto_3

    #@141
    .line 308
    :cond_c
    const-string/jumbo v0, "GlobalActions"

    #@144
    new-instance v1, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v2, "Invalid global action key "

    #@14c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v1

    #@150
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v1

    #@158
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    goto/16 :goto_3

    #@15d
    .line 314
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    #@15f
    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    #@162
    move-result v0

    #@163
    if-eqz v0, :cond_e

    #@165
    .line 315
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@167
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;

    #@16a
    move-result-object v1

    #@16b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16e
    .line 318
    :cond_e
    new-instance v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@170
    const/4 v1, 0x0

    #@171
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    #@174
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@176
    .line 320
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    #@178
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@17a
    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    #@17d
    .line 321
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@17f
    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@181
    .line 322
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@183
    .line 323
    const/4 v0, 0x1

    #@184
    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    #@186
    .line 325
    new-instance v10, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@188
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@18a
    invoke-direct {v10, v0, v12}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    #@18d
    .line 326
    .local v10, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v0, 0x0

    #@18e
    invoke-virtual {v10, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    #@191
    .line 328
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    #@194
    move-result-object v0

    #@195
    const/4 v1, 0x1

    #@196
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@199
    .line 329
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    #@19c
    move-result-object v0

    #@19d
    const/4 v1, 0x1

    #@19e
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    #@1a1
    .line 330
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    #@1a4
    move-result-object v0

    #@1a5
    .line 331
    new-instance v1, Lcom/android/server/policy/GlobalActions$7;

    #@1a7
    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@1aa
    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    #@1ad
    .line 342
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@1b0
    move-result-object v0

    #@1b1
    const/16 v1, 0x7d9

    #@1b3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@1b6
    .line 344
    invoke-virtual {v10, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@1b9
    .line 346
    return-object v10
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 524
    new-instance v0, Lcom/android/server/policy/GlobalActions$10;

    #@2
    const v1, 0x10802e7

    #@5
    .line 525
    const v2, 0x104013e

    #@8
    .line 524
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    #@0
    .prologue
    .line 595
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 596
    :catch_0
    move-exception v0

    #@a
    .line 597
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 504
    new-instance v0, Lcom/android/server/policy/GlobalActions$9;

    #@2
    const v1, 0x1080299

    #@5
    .line 505
    const v2, 0x104012e

    #@8
    .line 504
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 568
    new-instance v0, Lcom/android/server/policy/GlobalActions$12;

    #@2
    const v1, 0x108002f

    #@5
    .line 569
    const v2, 0x1040140

    #@8
    .line 568
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 481
    new-instance v0, Lcom/android/server/policy/GlobalActions$8;

    #@2
    const v1, 0x1080436

    #@5
    .line 482
    const v2, 0x104013d

    #@8
    .line 481
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 546
    new-instance v0, Lcom/android/server/policy/GlobalActions$11;

    #@2
    const v1, 0x108044b

    #@5
    .line 547
    const v2, 0x104013f

    #@8
    .line 546
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private handleShow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 197
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    #@4
    .line 198
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@a
    .line 199
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    #@d
    .line 202
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@f
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_0

    #@16
    .line 203
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@18
    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@1b
    move-result-object v1

    #@1c
    instance-of v1, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    #@1e
    .line 202
    if-eqz v1, :cond_0

    #@20
    .line 204
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@22
    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@25
    move-result-object v1

    #@26
    instance-of v1, v1, Lcom/android/server/policy/GlobalActions$LongPressAction;

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@2c
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@33
    move-result-object v0

    #@34
    .line 208
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "GlobalActions"

    #@37
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3a
    .line 209
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@3c
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@43
    .line 210
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@45
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    #@48
    .line 211
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@4a
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@51
    move-result-object v1

    #@52
    const/high16 v2, 0x10000

    #@54
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@57
    .line 196
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    #@58
    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@5a
    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    #@60
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    #@63
    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    .line 603
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x1

    #@c
    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1169
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    return-void

    #@7
    .line 1172
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v2

    #@d
    .line 1173
    const-string/jumbo v3, "airplane_mode_on"

    #@10
    .line 1171
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@13
    move-result v2

    #@14
    if-ne v2, v0, :cond_1

    #@16
    .line 1175
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    #@18
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1a
    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1c
    .line 1176
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@1e
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@20
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@23
    .line 1167
    return-void

    #@24
    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    #@25
    .line 1171
    goto :goto_0

    #@26
    .line 1175
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@28
    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    #@0
    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    #@3
    .line 645
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@5
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@a
    .line 646
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@c
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    #@f
    .line 647
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@11
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@14
    move-result-object v1

    #@15
    const/16 v2, 0x7d9

    #@17
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    #@1a
    .line 648
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 649
    new-instance v0, Landroid/content/IntentFilter;

    #@20
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    #@23
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@26
    .line 650
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@28
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    #@2a
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2d
    .line 643
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    #@0
    .prologue
    .line 655
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 657
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    #@6
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x2

    #@b
    if-eq v1, v2, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 658
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@10
    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@12
    .line 659
    if-eqz v0, :cond_2

    #@14
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@16
    .line 658
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@19
    .line 654
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    #@1a
    .line 657
    :cond_1
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "silentModeOn":Z
    goto :goto_0

    #@1c
    .line 659
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1e
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@2
    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@5
    move-result-object v0

    #@6
    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 678
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@d
    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@f
    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    #@16
    .line 676
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 665
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@6
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    #@8
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 664
    :cond_0
    :goto_0
    return-void

    #@c
    .line 668
    :catch_0
    move-exception v0

    #@d
    .line 670
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    #@10
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    #@3
    .line 173
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    #@5
    .line 174
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 175
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@b
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    #@e
    .line 176
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@10
    .line 178
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@12
    const/4 v1, 0x2

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 171
    :goto_0
    return-void

    #@17
    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    #@1a
    goto :goto_0
.end method
