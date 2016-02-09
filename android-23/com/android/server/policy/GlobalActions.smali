.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

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

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
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

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 118
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    #@7
    .line 119
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    #@9
    .line 120
    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@b
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@d
    .line 121
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    #@f
    .line 1026
    new-instance v4, Lcom/android/server/policy/GlobalActions$1;

    #@11
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@14
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@16
    .line 1047
    new-instance v4, Lcom/android/server/policy/GlobalActions$2;

    #@18
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@1b
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@1d
    .line 1058
    new-instance v4, Lcom/android/server/policy/GlobalActions$3;

    #@1f
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@22
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    #@24
    .line 1067
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
    .line 1079
    new-instance v4, Lcom/android/server/policy/GlobalActions$5;

    #@32
    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@35
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@37
    .line 130
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@39
    .line 131
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@3b
    .line 132
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
    .line 134
    const-string/jumbo v4, "dreams"

    #@4b
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4e
    move-result-object v4

    #@4f
    .line 133
    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    #@52
    move-result-object v4

    #@53
    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@55
    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    #@57
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@5a
    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@5d
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@60
    .line 139
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    #@63
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@66
    .line 140
    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@69
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6c
    .line 141
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@6e
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@71
    .line 144
    const-string/jumbo v4, "connectivity"

    #@74
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    .line 143
    check-cast v0, Landroid/net/ConnectivityManager;

    #@7a
    .line 145
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    #@7d
    move-result v4

    #@7e
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@80
    .line 149
    const-string/jumbo v4, "phone"

    #@83
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@89
    .line 150
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@8b
    invoke-virtual {v2, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@8e
    .line 151
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@90
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@93
    move-result-object v4

    #@94
    .line 152
    const-string/jumbo v7, "airplane_mode_on"

    #@97
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@9a
    move-result-object v7

    #@9b
    .line 153
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    #@9d
    .line 151
    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@a0
    .line 154
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
    .line 155
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
    .line 157
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@b5
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b8
    move-result-object v4

    #@b9
    .line 158
    const v7, 0x1120079

    #@bc
    .line 157
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@bf
    move-result v4

    #@c0
    if-eqz v4, :cond_1

    #@c2
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@c4
    .line 129
    return-void

    #@c5
    :cond_0
    move v4, v5

    #@c6
    .line 155
    goto :goto_0

    #@c7
    :cond_1
    move v5, v6

    #@c8
    .line 157
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
    .line 532
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
    .line 533
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_6

    #@11
    .line 534
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@14
    move-result-object v10

    #@15
    .line 535
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@18
    move-result-object v6

    #@19
    .line 536
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
    .line 537
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 538
    if-nez v6, :cond_2

    #@31
    .line 539
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    #@33
    if-nez v1, :cond_1

    #@35
    :goto_1
    const/4 v7, 0x1

    #@36
    .line 540
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
    .line 542
    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$13;

    #@42
    .line 544
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
    .line 545
    if-eqz v7, :cond_5

    #@53
    const-string/jumbo v1, " \u2714"

    #@56
    .line 544
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 543
    const v2, 0x10803b5

    #@61
    move-object v1, p0

    #@62
    .line 542
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    #@65
    .line 562
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_0

    #@69
    .line 539
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
    .line 541
    .restart local v7    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    #@73
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@74
    .line 544
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v1, "Primary"

    #@77
    goto :goto_4

    #@78
    .line 545
    :cond_5
    const-string/jumbo v1, ""

    #@7b
    goto :goto_5

    #@7c
    .line 531
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
    .line 179
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@6
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 182
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    #@e
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 178
    :cond_0
    :goto_0
    return-void

    #@12
    .line 184
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
    .line 1116
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 1117
    const-string/jumbo v3, "airplane_mode_on"

    #@9
    .line 1118
    if-eqz p1, :cond_1

    #@b
    const/4 v1, 0x1

    #@c
    .line 1115
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@f
    .line 1119
    new-instance v0, Landroid/content/Intent;

    #@11
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    #@14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 1120
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c
    .line 1121
    const-string/jumbo v1, "state"

    #@1f
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@22
    .line 1122
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@24
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@26
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@29
    .line 1123
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 1124
    if-eqz p1, :cond_2

    #@2f
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@31
    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@33
    .line 1114
    :cond_0
    return-void

    #@34
    .line 1118
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    #@35
    goto :goto_0

    #@36
    .line 1124
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
    .line 215
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 216
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@9
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@b
    .line 220
    :goto_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$6;

    #@d
    .line 221
    const v2, 0x1080359

    #@10
    .line 222
    const v3, 0x108035b

    #@13
    .line 223
    const v4, 0x1040111

    #@16
    .line 224
    const v5, 0x1040112

    #@19
    .line 225
    const v6, 0x1040113

    #@1c
    move-object v1, p0

    #@1d
    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    #@20
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@22
    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    #@25
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@2c
    .line 264
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v0

    #@32
    .line 265
    const v1, 0x1070039

    #@35
    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    .line 267
    .local v9, "defaultActions":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    #@3b
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@3e
    .line 268
    .local v8, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@3f
    .local v11, "i":I
    :goto_1
    array-length v0, v9

    #@40
    if-ge v11, v0, :cond_c

    #@42
    .line 269
    aget-object v7, v9, v11

    #@44
    .line 270
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_1

    #@4a
    .line 268
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 218
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
    .line 274
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
    .line 275
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
    .line 303
    :cond_2
    :goto_3
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_2

    #@73
    .line 276
    :cond_3
    const-string/jumbo v0, "airplane"

    #@76
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_4

    #@7c
    .line 277
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@7e
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_3

    #@84
    .line 278
    :cond_4
    const-string/jumbo v0, "bugreport"

    #@87
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_5

    #@8d
    .line 279
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@8f
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@92
    move-result-object v0

    #@93
    .line 280
    const-string/jumbo v1, "bugreport_in_power_menu"

    #@96
    const/4 v2, 0x0

    #@97
    .line 279
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9a
    move-result v0

    #@9b
    if-eqz v0, :cond_2

    #@9d
    .line 280
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    #@a0
    move-result v0

    #@a1
    .line 279
    if-eqz v0, :cond_2

    #@a3
    .line 281
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@a5
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    goto :goto_3

    #@ad
    .line 283
    :cond_5
    const-string/jumbo v0, "silent"

    #@b0
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_6

    #@b6
    .line 284
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@b8
    if-eqz v0, :cond_2

    #@ba
    .line 285
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@bc
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@be
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c1
    goto :goto_3

    #@c2
    .line 287
    :cond_6
    const-string/jumbo v0, "users"

    #@c5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v0

    #@c9
    if-eqz v0, :cond_7

    #@cb
    .line 288
    const-string/jumbo v0, "fw.power_user_switcher"

    #@ce
    const/4 v1, 0x0

    #@cf
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@d2
    move-result v0

    #@d3
    if-eqz v0, :cond_2

    #@d5
    .line 289
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@d7
    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    #@da
    goto :goto_3

    #@db
    .line 291
    :cond_7
    const-string/jumbo v0, "settings"

    #@de
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result v0

    #@e2
    if-eqz v0, :cond_8

    #@e4
    .line 292
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@e6
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ed
    goto :goto_3

    #@ee
    .line 293
    :cond_8
    const-string/jumbo v0, "lockdown"

    #@f1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f4
    move-result v0

    #@f5
    if-eqz v0, :cond_9

    #@f7
    .line 294
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@f9
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@100
    goto/16 :goto_3

    #@102
    .line 295
    :cond_9
    const-string/jumbo v0, "voiceassist"

    #@105
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v0

    #@109
    if-eqz v0, :cond_a

    #@10b
    .line 296
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@10d
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@114
    goto/16 :goto_3

    #@116
    .line 297
    :cond_a
    const-string/jumbo v0, "assist"

    #@119
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11c
    move-result v0

    #@11d
    if-eqz v0, :cond_b

    #@11f
    .line 298
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    #@121
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    #@124
    move-result-object v1

    #@125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@128
    goto/16 :goto_3

    #@12a
    .line 300
    :cond_b
    const-string/jumbo v0, "GlobalActions"

    #@12d
    new-instance v1, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v2, "Invalid global action key "

    #@135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v1

    #@139
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v1

    #@141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    goto/16 :goto_3

    #@146
    .line 306
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_c
    new-instance v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@148
    const/4 v1, 0x0

    #@149
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    #@14c
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@14e
    .line 308
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    #@150
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@152
    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    #@155
    .line 309
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@157
    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@159
    .line 310
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@15b
    .line 311
    const/4 v0, 0x1

    #@15c
    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    #@15e
    .line 313
    new-instance v10, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@160
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@162
    invoke-direct {v10, v0, v12}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    #@165
    .line 314
    .local v10, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v0, 0x0

    #@166
    invoke-virtual {v10, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    #@169
    .line 316
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    #@16c
    move-result-object v0

    #@16d
    const/4 v1, 0x1

    #@16e
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@171
    .line 317
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    #@174
    move-result-object v0

    #@175
    const/4 v1, 0x1

    #@176
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    #@179
    .line 318
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    #@17c
    move-result-object v0

    #@17d
    .line 319
    new-instance v1, Lcom/android/server/policy/GlobalActions$7;

    #@17f
    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@182
    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    #@185
    .line 330
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@188
    move-result-object v0

    #@189
    const/16 v1, 0x7d9

    #@18b
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@18e
    .line 332
    invoke-virtual {v10, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@191
    .line 334
    return-object v10
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 449
    new-instance v0, Lcom/android/server/policy/GlobalActions$10;

    #@2
    const v1, 0x10802f3

    #@5
    .line 450
    const v2, 0x1040115

    #@8
    .line 449
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 371
    new-instance v0, Lcom/android/server/policy/GlobalActions$8;

    #@2
    const v1, 0x108035d

    #@5
    .line 372
    const v2, 0x104010b

    #@8
    .line 371
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    #@0
    .prologue
    .line 520
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
    .line 521
    :catch_0
    move-exception v0

    #@a
    .line 522
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 493
    new-instance v0, Lcom/android/server/policy/GlobalActions$12;

    #@2
    const v1, 0x108002f

    #@5
    .line 494
    const v2, 0x1040117

    #@8
    .line 493
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 426
    new-instance v0, Lcom/android/server/policy/GlobalActions$9;

    #@2
    const v1, 0x108041c

    #@5
    .line 427
    const v2, 0x1040114

    #@8
    .line 426
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    #@b
    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    #@0
    .prologue
    .line 471
    new-instance v0, Lcom/android/server/policy/GlobalActions$11;

    #@2
    const v1, 0x1080430

    #@5
    .line 472
    const v2, 0x1040116

    #@8
    .line 471
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
    .line 191
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    #@4
    .line 192
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@a
    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    #@d
    .line 196
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
    .line 197
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@18
    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@1b
    move-result-object v1

    #@1c
    instance-of v1, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    #@1e
    .line 196
    if-eqz v1, :cond_0

    #@20
    .line 198
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
    .line 201
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
    .line 202
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "GlobalActions"

    #@37
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3a
    .line 203
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@3c
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@43
    .line 204
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@45
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    #@48
    .line 205
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
    .line 190
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    #@58
    .line 199
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
    .line 527
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    .line 528
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
    .line 1101
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    return-void

    #@5
    .line 1104
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 1105
    const-string/jumbo v2, "airplane_mode_on"

    #@e
    .line 1106
    const/4 v3, 0x0

    #@f
    .line 1103
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@12
    move-result v1

    #@13
    .line 1106
    const/4 v2, 0x1

    #@14
    .line 1103
    if-ne v1, v2, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    .line 1107
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    #@19
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1b
    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1d
    .line 1108
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@1f
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@24
    .line 1099
    return-void

    #@25
    .line 1103
    .end local v0    # "airplaneModeOn":Z
    :cond_1
    const/4 v0, 0x0

    #@26
    .restart local v0    # "airplaneModeOn":Z
    goto :goto_0

    #@27
    .line 1107
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@29
    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    #@0
    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    #@3
    .line 570
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@5
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@a
    .line 571
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@c
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    #@f
    .line 572
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
    .line 573
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 574
    new-instance v0, Landroid/content/IntentFilter;

    #@20
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    #@23
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@26
    .line 575
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@28
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    #@2a
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2d
    .line 568
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    #@0
    .prologue
    .line 580
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 582
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
    .line 583
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    #@10
    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    #@12
    .line 584
    if-eqz v0, :cond_2

    #@14
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@16
    .line 583
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    #@19
    .line 579
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    #@1a
    .line 582
    :cond_1
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "silentModeOn":Z
    goto :goto_0

    #@1c
    .line 584
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
    .line 602
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
    .line 603
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@d
    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@f
    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    #@16
    .line 601
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 590
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    #@6
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    #@8
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 589
    :cond_0
    :goto_0
    return-void

    #@c
    .line 593
    :catch_0
    move-exception v0

    #@d
    .line 595
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
    .line 166
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    #@3
    .line 167
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    #@5
    .line 168
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 169
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@b
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    #@e
    .line 170
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@10
    .line 172
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    #@12
    const/4 v1, 0x2

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 165
    :goto_0
    return-void

    #@17
    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    #@1a
    goto :goto_0
.end method
