.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_BIND_METHOD:I = 0xbc2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_RESTART_INPUT:I = 0x7da

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNBIND_METHOD:I = 0xbb8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInputShown:Z

.field mIsInteractive:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocale:Ljava/util/Locale;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mRes:Landroid/content/res/Resources;

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/InputMethodManagerService;I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 767
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    #@3
    .line 196
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v4, -0x1

    #@9
    const/4 v5, -0x1

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@d
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@f
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@16
    .line 201
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1d
    .line 203
    new-instance v0, Landroid/util/LruCache;

    #@1f
    const/16 v1, 0x14

    #@21
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #@24
    .line 202
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@26
    .line 207
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    #@28
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@2d
    .line 214
    const/4 v0, 0x0

    #@2e
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@30
    .line 281
    new-instance v0, Ljava/util/HashMap;

    #@32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@35
    .line 280
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@37
    .line 333
    new-instance v0, Ljava/util/HashMap;

    #@39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3c
    .line 332
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@3e
    .line 401
    const/4 v0, 0x1

    #@3f
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@41
    .line 403
    const/4 v0, 0x0

    #@42
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@44
    .line 405
    const/4 v0, 0x0

    #@45
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@47
    .line 432
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@49
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@4c
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@4e
    .line 768
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@54
    .line 769
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@56
    .line 770
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@5c
    .line 771
    new-instance v0, Landroid/os/Handler;

    #@5e
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #@61
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@63
    .line 773
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@65
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@67
    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    #@6a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@6c
    .line 775
    const-string/jumbo v0, "window"

    #@6f
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@72
    move-result-object v0

    #@73
    .line 774
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@79
    .line 776
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@7b
    new-instance v1, Lcom/android/server/InputMethodManagerService$2;

    #@7d
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@80
    const/4 v2, 0x0

    #@81
    .line 781
    const/4 v3, 0x1

    #@82
    .line 776
    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@85
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@87
    .line 782
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@89
    .line 783
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8b
    const-string/jumbo v1, "appops"

    #@8e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@91
    move-result-object v0

    #@92
    check-cast v0, Landroid/app/AppOpsManager;

    #@94
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@96
    .line 784
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@98
    const/4 v1, 0x0

    #@99
    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V

    #@9c
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@9e
    .line 785
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a1
    move-result-object v0

    #@a2
    .line 786
    const-string/jumbo v1, "android.software.input_methods"

    #@a5
    .line 785
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@a8
    move-result v0

    #@a9
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    #@ab
    .line 788
    new-instance v9, Landroid/os/Bundle;

    #@ad
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@b0
    .line 789
    .local v9, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.allowDuringSetup"

    #@b3
    const/4 v1, 0x1

    #@b4
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@b7
    .line 790
    new-instance v0, Landroid/app/Notification$Builder;

    #@b9
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@bb
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@be
    .line 791
    const v1, 0x10803f4

    #@c1
    .line 790
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@c4
    move-result-object v0

    #@c5
    .line 792
    const-wide/16 v2, 0x0

    #@c7
    .line 790
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@ca
    move-result-object v0

    #@cb
    .line 793
    const/4 v1, 0x1

    #@cc
    .line 790
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    #@d3
    move-result-object v0

    #@d4
    .line 795
    const-string/jumbo v1, "sys"

    #@d7
    .line 790
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@da
    move-result-object v0

    #@db
    .line 796
    const v1, 0x1060059

    #@de
    .line 790
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@e1
    move-result-object v0

    #@e2
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@e4
    .line 798
    new-instance v11, Landroid/content/Intent;

    #@e6
    const-string/jumbo v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    #@e9
    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ec
    .line 799
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@ee
    const/4 v1, 0x0

    #@ef
    const/4 v2, 0x0

    #@f0
    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@f3
    move-result-object v0

    #@f4
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    #@f6
    .line 801
    const/4 v0, 0x0

    #@f7
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@f9
    .line 803
    new-instance v6, Landroid/content/IntentFilter;

    #@fb
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@fe
    .line 804
    .local v6, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@101
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@104
    .line 805
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@107
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10a
    .line 806
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@10d
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@110
    .line 807
    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    #@113
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@116
    .line 808
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@118
    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    #@11a
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@11d
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@120
    .line 810
    const/4 v0, 0x0

    #@121
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    #@123
    .line 811
    const/4 v5, 0x0

    #@124
    .line 813
    .local v5, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@127
    move-result-object v0

    #@128
    .line 814
    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    #@12a
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@12d
    .line 813
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@130
    .line 837
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@133
    move-result-object v0

    #@134
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@137
    move-result-object v0

    #@138
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13a
    .line 841
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@13c
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@13e
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@140
    const/4 v3, 0x0

    #@141
    const/4 v4, 0x1

    #@142
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@145
    .line 844
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@147
    .line 845
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14c
    move-result-object v2

    #@14d
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@14f
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@151
    .line 844
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    #@154
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@156
    .line 850
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    #@158
    .line 849
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@15b
    move-result-object v12

    #@15c
    check-cast v12, Landroid/content/pm/PackageManagerInternal;

    #@15e
    .line 852
    .local v12, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v0, Lcom/android/server/InputMethodManagerService$4;

    #@160
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@163
    .line 851
    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManagerInternal;->setImePackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    #@166
    .line 878
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@169
    .line 879
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@16b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@16d
    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    #@170
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@172
    .line 880
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@174
    monitor-enter v1

    #@175
    .line 882
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@177
    .line 881
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@17a
    move-result-object v0

    #@17b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17d
    monitor-exit v1

    #@17e
    .line 886
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@180
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@183
    move-result-object v7

    #@184
    .line 890
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@187
    move-result v0

    #@188
    if-eqz v0, :cond_1

    #@18a
    const/4 v0, 0x0

    #@18b
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@18d
    .line 892
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@18f
    monitor-enter v1

    #@190
    .line 893
    :try_start_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@192
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@194
    .line 894
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@196
    if-eqz v0, :cond_2

    #@198
    const/4 v0, 0x0

    #@199
    .line 893
    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19c
    monitor-exit v1

    #@19d
    .line 896
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@19f
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    #@1a2
    .line 898
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@1a4
    if-nez v0, :cond_0

    #@1a6
    .line 899
    const-string/jumbo v0, "InputMethodManagerService"

    #@1a9
    const-string/jumbo v1, "No IME selected. Choose the most applicable IME."

    #@1ac
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1af
    .line 900
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1b1
    monitor-enter v0

    #@1b2
    .line 901
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1b5
    monitor-exit v0

    #@1b6
    .line 905
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1b8
    monitor-enter v1

    #@1b9
    .line 906
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@1bb
    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    #@1be
    .line 907
    const/4 v0, 0x1

    #@1bf
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@1c2
    monitor-exit v1

    #@1c3
    .line 912
    new-instance v10, Landroid/content/IntentFilter;

    #@1c5
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    #@1c8
    .line 913
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    #@1cb
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1ce
    .line 914
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1d0
    .line 915
    new-instance v1, Lcom/android/server/InputMethodManagerService$5;

    #@1d2
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@1d5
    .line 914
    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1d8
    .line 923
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@1da
    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    #@1dc
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@1de
    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    #@1e1
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@1e4
    .line 767
    return-void

    #@1e5
    .line 838
    .end local v7    # "defaultImiId":Ljava/lang/String;
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_0
    move-exception v8

    #@1e6
    .line 839
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodManagerService"

    #@1e9
    const-string/jumbo v1, "Couldn\'t get current user ID; guessing it\'s 0"

    #@1ec
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 880
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v12    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v0

    #@1f2
    monitor-exit v1

    #@1f3
    throw v0

    #@1f4
    .line 890
    .restart local v7    # "defaultImiId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    #@1f5
    goto :goto_1

    #@1f6
    .line 894
    :cond_2
    const/4 v0, 0x1

    #@1f7
    goto :goto_2

    #@1f8
    .line 892
    :catchall_1
    move-exception v0

    #@1f9
    monitor-exit v1

    #@1fa
    throw v0

    #@1fb
    .line 900
    :catchall_2
    move-exception v1

    #@1fc
    monitor-exit v0

    #@1fd
    throw v1

    #@1fe
    .line 905
    :catchall_3
    move-exception v0

    #@1ff
    monitor-exit v1

    #@200
    throw v0
.end method

.method private addShortcutInputMethodAndSubtypes(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 3473
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 3474
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 3472
    :goto_0
    return-void

    #@14
    .line 3476
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 3477
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 3478
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_0
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1154
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1155
    :cond_0
    const-string/jumbo v0, "InputMethodManagerService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "--- bind failed: service = "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", conn = "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1156
    const/4 v0, 0x0

    #@2a
    return v0

    #@2b
    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2d
    .line 1159
    new-instance v1, Landroid/os/UserHandle;

    #@2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@31
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@34
    move-result v2

    #@35
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@38
    .line 1158
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 563
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    const/4 v6, 0x4

    #@3
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 564
    .local v2, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v6

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Map$Entry;

    #@1a
    .line 565
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/String;

    #@20
    .line 566
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Landroid/util/ArraySet;

    #@26
    .line 567
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@28
    const/4 v6, 0x2

    #@29
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@2c
    .line 568
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    #@2e
    .line 569
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@31
    .line 571
    :cond_0
    new-instance v6, Landroid/util/Pair;

    #@33
    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@36
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 573
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    return-object v6
.end method

.method private calledFromValidUser()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1108
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v1

    #@a
    .line 1116
    .local v1, "userId":I
    const/16 v2, 0x3e8

    #@c
    if-eq v0, v2, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@10
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 1117
    :cond_0
    return v4

    #@17
    .line 1125
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@19
    .line 1126
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@1c
    .line 1125
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    .line 1132
    return v4

    #@23
    .line 1134
    :cond_2
    const-string/jumbo v2, "InputMethodManagerService"

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "--- IPC called from background users. Ignore. \n"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 1135
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->getStackTrace()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 1134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1136
    return v5
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1146
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@4
    if-eq v0, p1, :cond_1

    #@6
    .line 1147
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1149
    :cond_1
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    #@0
    .prologue
    .line 2878
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 2877
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    #@9
    move-result-object v0

    #@a
    .line 2879
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    #@c
    .line 2883
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@13
    .line 2884
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 2887
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3340
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@5
    move-result-object v5

    #@6
    .line 3341
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    #@7
    .line 3342
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    #@8
    .line 3343
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    #@9
    .line 3346
    .local v1, "foundInSystemIME":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .end local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v11

    #@11
    if-eqz v11, :cond_6

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@19
    .line 3347
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 3348
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@1f
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@21
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v11

    #@25
    if-eqz v11, :cond_0

    #@27
    .line 3351
    :cond_1
    const/4 v9, 0x0

    #@28
    .line 3353
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2a
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2c
    const/4 v13, 0x1

    #@2d
    invoke-virtual {v11, v12, v2, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@30
    move-result-object v0

    #@31
    .line 3355
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@33
    if-eqz v11, :cond_2

    #@35
    .line 3357
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@37
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@39
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@3c
    move-result-object v12

    #@3d
    const/4 v13, 0x0

    #@3e
    .line 3356
    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@41
    move-result-object v9

    #@42
    .line 3361
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    if-nez v9, :cond_3

    #@44
    .line 3363
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@46
    const/4 v12, 0x0

    #@47
    const/4 v13, 0x1

    #@48
    .line 3362
    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@4b
    move-result-object v9

    #@4c
    .line 3366
    :cond_3
    invoke-static {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    #@4f
    move-result-object v8

    #@50
    .line 3368
    .local v8, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@53
    move-result v11

    #@54
    if-eqz v11, :cond_7

    #@56
    .line 3369
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@59
    move-result-object v10

    #@5a
    .line 3372
    .local v10, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v9, :cond_4

    #@5c
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@5e
    if-eqz v11, :cond_4

    #@60
    .line 3374
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@62
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@64
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@67
    move-result-object v12

    #@68
    const/4 v13, 0x0

    #@69
    .line 3373
    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@6c
    move-result-object v9

    #@6d
    .line 3378
    :cond_4
    if-nez v9, :cond_5

    #@6f
    .line 3380
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@71
    const/4 v12, 0x0

    #@72
    const/4 v13, 0x1

    #@73
    .line 3379
    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@76
    move-result-object v9

    #@77
    .line 3382
    :cond_5
    if-eqz v9, :cond_0

    #@79
    .line 3383
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@7b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v11

    #@7f
    if-eqz v11, :cond_8

    #@81
    .line 3385
    move-object v6, v2

    #@82
    .line 3386
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    move-object v7, v9

    #@83
    .line 3410
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-eqz v6, :cond_9

    #@85
    .line 3411
    new-instance v11, Landroid/util/Pair;

    #@87
    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8a
    return-object v11

    #@8b
    .line 3370
    .restart local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7
    move-object v10, v8

    #@8c
    .restart local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto :goto_1

    #@8d
    .line 3388
    :cond_8
    if-nez v1, :cond_0

    #@8f
    .line 3390
    move-object v6, v2

    #@90
    .line 3391
    .restart local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    move-object v7, v9

    #@91
    .line 3392
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@94
    move-result-object v11

    #@95
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@97
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    #@99
    and-int/lit8 v11, v11, 0x1

    #@9b
    if-eqz v11, :cond_0

    #@9d
    .line 3394
    const/4 v1, 0x1

    #@9e
    goto/16 :goto_0

    #@a0
    .line 3414
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    const/4 v11, 0x0

    #@a1
    return-object v11
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 5
    .param p1, "sessionState"    # Lcom/android/server/InputMethodManagerService$SessionState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1577
    if-eqz p1, :cond_1

    #@3
    .line 1578
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1580
    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@9
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1585
    :goto_0
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@e
    .line 1587
    :cond_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1588
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@14
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@17
    .line 1589
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@19
    .line 1576
    :cond_1
    return-void

    #@1a
    .line 1581
    :catch_0
    move-exception v0

    #@1b
    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputMethodManagerService"

    #@1e
    const-string/jumbo v2, "Session failed to close due to remote exception"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1583
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@26
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@28
    const/4 v3, 0x0

    #@29
    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@2c
    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    #@0
    .prologue
    .line 1279
    const/4 v0, 0x0

    #@1
    .line 1280
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1281
    const/4 v0, 0x2

    #@6
    .line 1285
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1282
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1283
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 3433
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 3434
    return-object v6

    #@8
    .line 3436
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@a
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    #@d
    move-result v3

    #@e
    .line 3437
    .local v3, "subtypeIsSelected":Z
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@10
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@18
    .line 3438
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    #@1a
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 3439
    :cond_1
    return-object v6

    #@21
    .line 3441
    :cond_2
    if-eqz v3, :cond_3

    #@23
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@25
    if-nez v4, :cond_5

    #@27
    .line 3443
    :cond_3
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@29
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@2b
    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    #@2e
    move-result v2

    #@2f
    .line 3444
    .local v2, "subtypeId":I
    const/4 v4, -0x1

    #@30
    if-ne v2, v4, :cond_7

    #@32
    .line 3449
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@34
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@36
    invoke-virtual {v4, v5, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    .line 3452
    .local v0, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3d
    move-result v4

    #@3e
    if-ne v4, v7, :cond_6

    #@40
    .line 3453
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@46
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@48
    .line 3468
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypeId":I
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4a
    return-object v4

    #@4b
    .line 3442
    :cond_5
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4d
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@50
    move-result v4

    #@51
    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_3

    #@57
    goto :goto_0

    #@58
    .line 3454
    .restart local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "subtypeId":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5b
    move-result v4

    #@5c
    if-le v4, v7, :cond_4

    #@5e
    .line 3456
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@60
    .line 3457
    const-string/jumbo v5, "keyboard"

    #@63
    .line 3455
    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@66
    move-result-object v4

    #@67
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@69
    .line 3458
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@6b
    if-nez v4, :cond_4

    #@6d
    .line 3460
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@6f
    .line 3459
    invoke-static {v4, v0, v6, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@72
    move-result-object v4

    #@73
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@75
    goto :goto_0

    #@76
    .line 3465
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v4

    #@7e
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@80
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@82
    goto :goto_0
.end method

.method private getImeShowFlags()I
    .locals 2

    #@0
    .prologue
    .line 1268
    const/4 v0, 0x0

    #@1
    .line 1269
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1270
    const/4 v0, 0x3

    #@6
    .line 1275
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1272
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1273
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private handleSetInteractive(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2864
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    .line 2865
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@6
    .line 2866
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@8
    if-eqz p1, :cond_2

    #@a
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@c
    :goto_0
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@e
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@11
    .line 2869
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@13
    if-eqz v1, :cond_1

    #@15
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@17
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 2870
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@21
    .line 2871
    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@23
    if-eqz v4, :cond_0

    #@25
    const/4 v0, 0x1

    #@26
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@28
    const/16 v5, 0xbcc

    #@2a
    .line 2870
    invoke-virtual {v3, v5, v0, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    :cond_1
    monitor-exit v2

    #@32
    .line 2863
    return-void

    #@33
    :cond_2
    move v1, v0

    #@34
    .line 2866
    goto :goto_0

    #@35
    .line 2864
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v2

    #@37
    throw v0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@6
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private isScreenLocked()Z
    .locals 1

    #@0
    .prologue
    .line 2995
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2996
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@6
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@9
    move-result v0

    #@a
    .line 2995
    if-eqz v0, :cond_0

    #@c
    .line 2996
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@e
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@11
    move-result v0

    #@12
    .line 2995
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 580
    new-instance v3, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 581
    .local v3, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_0

    #@b
    .line 582
    return-object v3

    #@c
    .line 586
    :cond_0
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    #@e
    const/16 v7, 0x3a

    #@10
    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@13
    .line 588
    .local v6, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@15
    const/16 v7, 0x3b

    #@17
    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@1a
    .line 590
    .local v4, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0, v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    #@1d
    move-result-object v0

    #@1e
    .line 593
    .local v0, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "ime$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/util/Pair;

    #@2e
    .line 594
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/ArraySet;

    #@30
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@33
    .line 595
    .local v5, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    if-eqz v7, :cond_1

    #@37
    .line 596
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@39
    check-cast v7, Ljava/util/Collection;

    #@3b
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@3e
    .line 598
    :cond_1
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@40
    check-cast v7, Ljava/lang/String;

    #@42
    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    goto :goto_0

    #@46
    .line 600
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method private resetAllInternalStateLocked(ZZ)V
    .locals 7
    .param p1, "updateOnlyWhenLocaleChanged"    # Z
    .param p2, "resetDefaultEnabledIme"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 961
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 963
    return-void

    #@8
    .line 965
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@a
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v3

    #@e
    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@10
    .line 966
    .local v1, "newLocale":Ljava/util/Locale;
    if-eqz p1, :cond_2

    #@12
    .line 967
    if-eqz v1, :cond_1

    #@14
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    #@16
    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 960
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 968
    :cond_2
    if-nez p1, :cond_3

    #@1f
    .line 969
    invoke-virtual {p0, v5, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@22
    .line 970
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@24
    .line 971
    invoke-virtual {p0, v6, v5}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    #@27
    .line 976
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@29
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2b
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    #@2e
    .line 977
    if-nez p1, :cond_5

    #@30
    .line 978
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@32
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 979
    .local v2, "selectedImiId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_4

    #@3c
    .line 982
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3e
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    #@41
    .line 988
    .end local v2    # "selectedImiId":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    #@44
    .line 989
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    #@46
    .line 990
    if-nez p1, :cond_1

    #@48
    .line 992
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    goto :goto_0

    #@4c
    .line 993
    :catch_0
    move-exception v0

    #@4d
    .line 994
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "InputMethodManagerService"

    #@50
    const-string/jumbo v4, "Unexpected exception"

    #@53
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_0

    #@57
    .line 986
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_5
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@59
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    #@5c
    goto :goto_1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 928
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 929
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@7
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@f
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 933
    :cond_0
    const/4 v6, 0x0

    #@16
    .line 934
    .local v6, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v7

    #@1c
    .end local v6    # "defIm":Landroid/view/inputmethod/InputMethodInfo;
    .local v7, "imi$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_3

    #@22
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@28
    .line 935
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v6, :cond_1

    #@2a
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 936
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@35
    move-result-object v1

    #@36
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@38
    .line 939
    .local v3, "systemLocale":Ljava/util/Locale;
    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    #@3a
    .line 938
    const/4 v2, 0x1

    #@3b
    move-object v1, p1

    #@3c
    .line 937
    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_1

    #@42
    .line 940
    move-object v6, v0

    #@43
    .line 941
    .local v6, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const-string/jumbo v1, "InputMethodManagerService"

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Selected default: "

    #@4e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    goto :goto_0

    #@62
    .line 930
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "systemLocale":Ljava/util/Locale;
    .end local v6    # "defIm":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "imi$iterator":Ljava/util/Iterator;
    :cond_2
    return-void

    #@63
    .line 945
    .restart local v7    # "imi$iterator":Ljava/util/Iterator;
    :cond_3
    if-nez v6, :cond_4

    #@65
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6a
    move-result v1

    #@6b
    if-lez v1, :cond_4

    #@6d
    .line 947
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@6f
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@72
    move-result-object v1

    #@73
    .line 946
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    #@76
    move-result-object v6

    #@77
    .line 948
    .restart local v6    # "defIm":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_6

    #@79
    .line 949
    const-string/jumbo v1, "InputMethodManagerService"

    #@7c
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v5, "Default found, using "

    #@84
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 954
    .end local v6    # "defIm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    #@99
    .line 955
    const/4 v1, -0x1

    #@9a
    invoke-direct {p0, v6, v1, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@9d
    .line 926
    :cond_5
    return-void

    #@9e
    .line 951
    .restart local v6    # "defIm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    const-string/jumbo v1, "InputMethodManagerService"

    #@a1
    const-string/jumbo v2, "No default found"

    #@a4
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_1
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3320
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 3321
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    #@9
    .line 3323
    .local v2, "lastSubtypeId":I
    if-eqz v1, :cond_0

    #@b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 3334
    :cond_0
    :goto_0
    const/4 v4, 0x0

    #@12
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@15
    .line 3319
    return-void

    #@16
    .line 3324
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18
    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 3325
    .local v3, "subtypeHashCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1e
    .line 3328
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result v4

    #@26
    .line 3327
    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v2

    #@2a
    goto :goto_0

    #@2b
    .line 3329
    :catch_0
    move-exception v0

    #@2c
    .line 3330
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "InputMethodManagerService"

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v6, "HashCode for subtype looks broken: "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_0
.end method

.method private resetStateIfCurrentLocaleChangedLocked()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1001
    invoke-direct {p0, v0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    #@4
    .line 1000
    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    invoke-static {p1}, Lcom/android/server/InputMethodManagerService;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    #@3
    move-result-object v5

    #@4
    .line 536
    .local v5, "prevMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Lcom/android/server/InputMethodManagerService;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    #@7
    move-result-object v4

    #@8
    .line 539
    .local v4, "newMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v7

    #@c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/Map$Entry;

    #@1c
    .line 540
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;

    #@22
    .line 541
    .local v2, "imeId":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Landroid/util/ArraySet;

    #@28
    .line 542
    .local v6, "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    #@2a
    .line 543
    new-instance v6, Landroid/util/ArraySet;

    #@2c
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x2

    #@2d
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    #@30
    .line 544
    .restart local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 546
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v7

    #@37
    check-cast v7, Landroid/util/ArraySet;

    #@39
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@3c
    goto :goto_0

    #@3d
    .line 549
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "imeId":Ljava/lang/String;
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 554
    .local v3, "mergedImesAndSubtypesString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v7

    #@45
    .line 555
    const-string/jumbo v8, "enabled_input_methods"

    #@48
    .line 554
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@4b
    .line 528
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    #@0
    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 2588
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 2586
    return-void

    #@8
    .line 2587
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    #@0
    .prologue
    .line 2593
    if-nez p1, :cond_0

    #@2
    .line 2594
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 2595
    const-string/jumbo v3, "android.permission.WRITE_SECURE_SETTINGS"

    #@7
    .line 2594
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2597
    new-instance v2, Ljava/lang/SecurityException;

    #@f
    .line 2598
    const-string/jumbo v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@12
    .line 2597
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 2601
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 2602
    const-string/jumbo v2, "InputMethodManagerService"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Ignoring setInputMethod of uid "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 2603
    const-string/jumbo v4, " token: "

    #@34
    .line 2602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 2604
    return-void

    #@44
    .line 2607
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@47
    move-result-wide v0

    #@48
    .line 2609
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 2611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 2592
    return-void

    #@4f
    .line 2610
    :catchall_0
    move-exception v2

    #@50
    .line 2611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 2610
    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 8
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 3273
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@6
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@8
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@b
    .line 3276
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    const/4 v2, 0x1

    #@10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v1

    #@14
    .line 3275
    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@16
    .line 3282
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1c
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 3283
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@22
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@24
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@26
    .line 3285
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@28
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@2a
    .line 3284
    const/16 v5, 0xbe0

    #@2c
    .line 3283
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@33
    .line 3289
    :cond_0
    if-eqz p1, :cond_1

    #@35
    if-gez p2, :cond_3

    #@37
    .line 3290
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@39
    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@3c
    .line 3291
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@3e
    .line 3313
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@40
    if-eqz v1, :cond_2

    #@42
    if-eqz p3, :cond_5

    #@44
    .line 3271
    :cond_2
    :goto_1
    return-void

    #@45
    .line 3293
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@48
    move-result v1

    #@49
    if-ge p2, v1, :cond_4

    #@4b
    .line 3294
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@4e
    move-result-object v0

    #@4f
    .line 3295
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@51
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@54
    move-result v2

    #@55
    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@58
    .line 3296
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@5a
    goto :goto_0

    #@5b
    .line 3298
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5d
    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@60
    .line 3300
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@63
    move-result-object v1

    #@64
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@66
    goto :goto_0

    #@67
    .line 3315
    :cond_5
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@69
    if-eqz p1, :cond_6

    #@6b
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    #@72
    goto :goto_1

    #@73
    :cond_6
    const-string/jumbo v1, ""

    #@76
    goto :goto_2
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 15
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1672
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@2
    if-nez v12, :cond_0

    #@4
    const/4 v12, 0x0

    #@5
    return v12

    #@6
    .line 1673
    :cond_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@8
    if-eqz v12, :cond_1

    #@a
    const/4 v12, 0x0

    #@b
    return v12

    #@c
    .line 1674
    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    #@f
    move-result v12

    #@10
    if-eqz v12, :cond_2

    #@12
    const/4 v12, 0x0

    #@13
    return v12

    #@14
    .line 1675
    :cond_2
    and-int/lit8 v12, p1, 0x1

    #@16
    if-nez v12, :cond_3

    #@18
    const/4 v12, 0x0

    #@19
    return v12

    #@1a
    .line 1676
    :cond_3
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    #@1f
    move-result v12

    #@20
    if-eqz v12, :cond_4

    #@22
    .line 1681
    const/4 v12, 0x1

    #@23
    return v12

    #@24
    .line 1683
    :cond_4
    and-int/lit8 v12, p1, 0x2

    #@26
    if-nez v12, :cond_5

    #@28
    const/4 v12, 0x0

    #@29
    return v12

    #@2a
    .line 1685
    :cond_5
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2c
    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@2f
    move-result-object v5

    #@30
    .line 1686
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@33
    move-result v0

    #@34
    .line 1687
    .local v0, "N":I
    const/4 v12, 0x2

    #@35
    if-le v0, v12, :cond_6

    #@37
    const/4 v12, 0x1

    #@38
    return v12

    #@39
    .line 1688
    :cond_6
    const/4 v12, 0x1

    #@3a
    if-ge v0, v12, :cond_7

    #@3c
    const/4 v12, 0x0

    #@3d
    return v12

    #@3e
    .line 1689
    :cond_7
    const/4 v7, 0x0

    #@3f
    .line 1690
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    #@40
    .line 1691
    .local v1, "auxCount":I
    const/4 v8, 0x0

    #@41
    .line 1692
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    #@42
    .line 1693
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    #@43
    .end local v2    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_b

    #@45
    .line 1694
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@4b
    .line 1696
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4d
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4f
    const/4 v14, 0x1

    #@50
    invoke-virtual {v12, v13, v4, v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@53
    move-result-object v11

    #@54
    .line 1697
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@57
    move-result v10

    #@58
    .line 1698
    .local v10, "subtypeCount":I
    if-nez v10, :cond_9

    #@5a
    .line 1699
    add-int/lit8 v7, v7, 0x1

    #@5c
    .line 1693
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 1701
    :cond_9
    const/4 v6, 0x0

    #@60
    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_8

    #@62
    .line 1702
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@65
    move-result-object v9

    #@66
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    #@68
    .line 1703
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@6b
    move-result v12

    #@6c
    if-nez v12, :cond_a

    #@6e
    .line 1704
    add-int/lit8 v7, v7, 0x1

    #@70
    .line 1705
    move-object v8, v9

    #@71
    .line 1701
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@73
    goto :goto_1

    #@74
    .line 1707
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@76
    .line 1708
    move-object v2, v9

    #@77
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2

    #@78
    .line 1713
    .end local v2    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_b
    const/4 v12, 0x1

    #@79
    if-gt v7, v12, :cond_c

    #@7b
    const/4 v12, 0x1

    #@7c
    if-le v1, v12, :cond_d

    #@7e
    .line 1714
    :cond_c
    const/4 v12, 0x1

    #@7f
    return v12

    #@80
    .line 1715
    :cond_d
    const/4 v12, 0x1

    #@81
    if-ne v7, v12, :cond_10

    #@83
    const/4 v12, 0x1

    #@84
    if-ne v1, v12, :cond_10

    #@86
    .line 1716
    if-eqz v8, :cond_f

    #@88
    if-eqz v2, :cond_f

    #@8a
    .line 1717
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@8d
    move-result-object v12

    #@8e
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v12

    #@96
    if-nez v12, :cond_e

    #@98
    .line 1718
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@9b
    move-result v12

    #@9c
    .line 1717
    if-nez v12, :cond_e

    #@9e
    .line 1719
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@a1
    move-result v12

    #@a2
    .line 1716
    if-eqz v12, :cond_f

    #@a4
    .line 1720
    :cond_e
    const-string/jumbo v12, "TrySuppressingImeSwitcher"

    #@a7
    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@aa
    move-result v12

    #@ab
    .line 1716
    if-eqz v12, :cond_f

    #@ad
    .line 1721
    const/4 v12, 0x0

    #@ae
    return v12

    #@af
    .line 1723
    :cond_f
    const/4 v12, 0x1

    #@b0
    return v12

    #@b1
    .line 1725
    :cond_10
    const/4 v12, 0x0

    #@b2
    return v12
.end method

.method private showConfigureInputMethods()V
    .locals 4

    #@0
    .prologue
    .line 2987
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2988
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 2991
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@f
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@15
    .line 2986
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2976
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2977
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 2980
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 2981
    const-string/jumbo v1, "input_method_id"

    #@16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 2983
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1b
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@21
    .line 2975
    return-void
.end method

.method private showInputMethodMenu(Z)V
    .locals 32
    .param p1, "showAuxSubtypes"    # Z

    #@0
    .prologue
    .line 3002
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 3003
    .local v9, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    #@7
    move-result v19

    #@8
    .line 3005
    .local v19, "isScreenLocked":Z
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@c
    move-object/from16 v27, v0

    #@e
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@11
    move-result-object v21

    #@12
    .line 3006
    .local v21, "lastInputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@16
    move-object/from16 v27, v0

    #@18
    move-object/from16 v0, v27

    #@1a
    move-object/from16 v1, v21

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    #@1f
    move-result v22

    #@20
    .line 3009
    .local v22, "lastInputMethodSubtypeId":I
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@24
    move-object/from16 v28, v0

    #@26
    monitor-enter v28

    #@27
    .line 3011
    :try_start_0
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2b
    move-object/from16 v27, v0

    #@2d
    .line 3012
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@31
    move-object/from16 v29, v0

    #@33
    .line 3011
    move-object/from16 v0, v27

    #@35
    move-object/from16 v1, v29

    #@37
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    #@3a
    move-result-object v17

    #@3b
    .line 3013
    .local v17, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v17, :cond_0

    #@3d
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result v27

    #@41
    if-nez v27, :cond_1

    #@43
    :cond_0
    monitor-exit v28

    #@44
    .line 3014
    return-void

    #@45
    .line 3017
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    #@48
    .line 3020
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@4c
    move-object/from16 v27, v0

    #@4e
    .line 3021
    const/16 v29, 0x1

    #@50
    .line 3020
    move-object/from16 v0, v27

    #@52
    move/from16 v1, v29

    #@54
    move/from16 v2, p1

    #@56
    move/from16 v3, v19

    #@58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    #@5b
    move-result-object v16

    #@5c
    .line 3023
    .local v16, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/16 v27, -0x1

    #@5e
    move/from16 v0, v22

    #@60
    move/from16 v1, v27

    #@62
    if-ne v0, v1, :cond_2

    #@64
    .line 3024
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@67
    move-result-object v11

    #@68
    .line 3025
    .local v11, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v11, :cond_2

    #@6a
    .line 3026
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@6e
    move-object/from16 v27, v0

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@74
    move-object/from16 v29, v0

    #@76
    move-object/from16 v0, v27

    #@78
    move-object/from16 v1, v29

    #@7a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v10

    #@7e
    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    #@80
    .line 3028
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@83
    move-result v27

    #@84
    .line 3027
    move/from16 v0, v27

    #@86
    invoke-static {v10, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@89
    move-result v22

    #@8a
    .line 3032
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@8d
    move-result v4

    #@8e
    .line 3033
    .local v4, "N":I
    new-array v0, v4, [Landroid/view/inputmethod/InputMethodInfo;

    #@90
    move-object/from16 v27, v0

    #@92
    move-object/from16 v0, v27

    #@94
    move-object/from16 v1, p0

    #@96
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@98
    .line 3034
    new-array v0, v4, [I

    #@9a
    move-object/from16 v27, v0

    #@9c
    move-object/from16 v0, v27

    #@9e
    move-object/from16 v1, p0

    #@a0
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@a2
    .line 3035
    const/4 v7, 0x0

    #@a3
    .line 3036
    .local v7, "checkedItem":I
    const/4 v15, 0x0

    #@a4
    .local v15, "i":I
    :goto_0
    if-ge v15, v4, :cond_6

    #@a6
    .line 3037
    move-object/from16 v0, v16

    #@a8
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v20

    #@ac
    check-cast v20, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@ae
    .line 3038
    .local v20, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@b2
    move-object/from16 v27, v0

    #@b4
    move-object/from16 v0, v20

    #@b6
    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@b8
    move-object/from16 v29, v0

    #@ba
    aput-object v29, v27, v15

    #@bc
    .line 3039
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@c0
    move-object/from16 v27, v0

    #@c2
    move-object/from16 v0, v20

    #@c4
    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@c6
    move/from16 v29, v0

    #@c8
    aput v29, v27, v15

    #@ca
    .line 3040
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@ce
    move-object/from16 v27, v0

    #@d0
    aget-object v27, v27, v15

    #@d2
    invoke-virtual/range {v27 .. v27}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@d5
    move-result-object v27

    #@d6
    move-object/from16 v0, v27

    #@d8
    move-object/from16 v1, v21

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v27

    #@de
    if-eqz v27, :cond_4

    #@e0
    .line 3041
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@e4
    move-object/from16 v27, v0

    #@e6
    aget v25, v27, v15

    #@e8
    .line 3042
    .local v25, "subtypeId":I
    const/16 v27, -0x1

    #@ea
    move/from16 v0, v25

    #@ec
    move/from16 v1, v27

    #@ee
    if-eq v0, v1, :cond_3

    #@f0
    .line 3043
    const/16 v27, -0x1

    #@f2
    move/from16 v0, v22

    #@f4
    move/from16 v1, v27

    #@f6
    if-ne v0, v1, :cond_5

    #@f8
    if-nez v25, :cond_5

    #@fa
    .line 3045
    :cond_3
    :goto_1
    move v7, v15

    #@fb
    .line 3036
    .end local v25    # "subtypeId":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@fd
    goto :goto_0

    #@fe
    .line 3044
    .restart local v25    # "subtypeId":I
    :cond_5
    move/from16 v0, v25

    #@100
    move/from16 v1, v22

    #@102
    if-ne v0, v1, :cond_4

    #@104
    goto :goto_1

    #@105
    .line 3050
    .end local v20    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v25    # "subtypeId":I
    :cond_6
    new-instance v24, Landroid/view/ContextThemeWrapper;

    #@107
    .line 3051
    const v27, 0x1030223

    #@10a
    .line 3050
    move-object/from16 v0, v24

    #@10c
    move/from16 v1, v27

    #@10e
    invoke-direct {v0, v9, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@111
    .line 3053
    .local v24, "settingsContext":Landroid/content/Context;
    new-instance v27, Landroid/app/AlertDialog$Builder;

    #@113
    move-object/from16 v0, v27

    #@115
    move-object/from16 v1, v24

    #@117
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@11a
    move-object/from16 v0, v27

    #@11c
    move-object/from16 v1, p0

    #@11e
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@120
    .line 3054
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@124
    move-object/from16 v27, v0

    #@126
    new-instance v29, Lcom/android/server/InputMethodManagerService$6;

    #@128
    move-object/from16 v0, v29

    #@12a
    move-object/from16 v1, p0

    #@12c
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@12f
    move-object/from16 v0, v27

    #@131
    move-object/from16 v1, v29

    #@133
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@136
    .line 3061
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@13a
    move-object/from16 v27, v0

    #@13c
    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    #@13f
    move-result-object v12

    #@140
    .line 3063
    .local v12, "dialogContext":Landroid/content/Context;
    sget-object v27, Lcom/android/internal/R$styleable;->DialogPreference:[I

    #@142
    .line 3062
    const/16 v29, 0x0

    #@144
    .line 3064
    const v30, 0x101005d

    #@147
    const/16 v31, 0x0

    #@149
    .line 3062
    move-object/from16 v0, v29

    #@14b
    move-object/from16 v1, v27

    #@14d
    move/from16 v2, v30

    #@14f
    move/from16 v3, v31

    #@151
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@154
    move-result-object v5

    #@155
    .line 3066
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v27, 0x2

    #@157
    .line 3065
    move/from16 v0, v27

    #@159
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@15c
    move-result-object v13

    #@15d
    .line 3067
    .local v13, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@160
    .line 3069
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@164
    move-object/from16 v27, v0

    #@166
    move-object/from16 v0, v27

    #@168
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    #@16b
    .line 3072
    const-string/jumbo v27, "layout_inflater"

    #@16e
    .line 3071
    move-object/from16 v0, v27

    #@170
    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@173
    move-result-object v18

    #@174
    check-cast v18, Landroid/view/LayoutInflater;

    #@176
    .line 3074
    .local v18, "inflater":Landroid/view/LayoutInflater;
    const v27, 0x109006b

    #@179
    const/16 v29, 0x0

    #@17b
    .line 3073
    move-object/from16 v0, v18

    #@17d
    move/from16 v1, v27

    #@17f
    move-object/from16 v2, v29

    #@181
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@184
    move-result-object v26

    #@185
    .line 3075
    .local v26, "tv":Landroid/view/View;
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@189
    move-object/from16 v27, v0

    #@18b
    move-object/from16 v0, v27

    #@18d
    move-object/from16 v1, v26

    #@18f
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@192
    .line 3078
    move-object/from16 v0, v26

    #@194
    move-object/from16 v1, p0

    #@196
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@198
    .line 3079
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@19c
    move-object/from16 v27, v0

    #@19e
    .line 3080
    const v29, 0x102034b

    #@1a1
    .line 3079
    move-object/from16 v0, v27

    #@1a3
    move/from16 v1, v29

    #@1a5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a8
    move-result-object v29

    #@1a9
    .line 3081
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@1ad
    move-object/from16 v27, v0

    #@1af
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    #@1b2
    move-result v27

    #@1b3
    if-eqz v27, :cond_8

    #@1b5
    .line 3082
    const/16 v27, 0x0

    #@1b7
    .line 3079
    :goto_2
    move-object/from16 v0, v29

    #@1b9
    move/from16 v1, v27

    #@1bb
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1be
    .line 3083
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@1c2
    move-object/from16 v27, v0

    #@1c4
    .line 3084
    const v29, 0x102034c

    #@1c7
    .line 3083
    move-object/from16 v0, v27

    #@1c9
    move/from16 v1, v29

    #@1cb
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1ce
    move-result-object v14

    #@1cf
    check-cast v14, Landroid/widget/Switch;

    #@1d1
    .line 3085
    .local v14, "hardKeySwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    #@1d3
    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@1d5
    move/from16 v27, v0

    #@1d7
    move/from16 v0, v27

    #@1d9
    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setChecked(Z)V

    #@1dc
    .line 3086
    new-instance v27, Lcom/android/server/InputMethodManagerService$7;

    #@1de
    move-object/from16 v0, v27

    #@1e0
    move-object/from16 v1, p0

    #@1e2
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@1e5
    move-object/from16 v0, v27

    #@1e7
    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@1ea
    .line 3096
    new-instance v6, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@1ec
    .line 3097
    const v27, 0x109006c

    #@1ef
    .line 3096
    move/from16 v0, v27

    #@1f1
    move-object/from16 v1, v16

    #@1f3
    invoke-direct {v6, v12, v0, v1, v7}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    #@1f6
    .line 3098
    .local v6, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v8, Lcom/android/server/InputMethodManagerService$8;

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    invoke-direct {v8, v0, v6}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    #@1fd
    .line 3120
    .local v8, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    #@1ff
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@201
    move-object/from16 v27, v0

    #@203
    move-object/from16 v0, v27

    #@205
    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@208
    .line 3122
    if-nez v19, :cond_7

    #@20a
    .line 3123
    new-instance v23, Lcom/android/server/InputMethodManagerService$9;

    #@20c
    move-object/from16 v0, v23

    #@20e
    move-object/from16 v1, p0

    #@210
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$9;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@213
    .line 3129
    .local v23, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    #@215
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@217
    move-object/from16 v27, v0

    #@219
    .line 3130
    const v29, 0x10403e2

    #@21c
    .line 3129
    move-object/from16 v0, v27

    #@21e
    move/from16 v1, v29

    #@220
    move-object/from16 v2, v23

    #@222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@225
    .line 3132
    .end local v23    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_7
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@229
    move-object/from16 v27, v0

    #@22b
    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@22e
    move-result-object v27

    #@22f
    move-object/from16 v0, v27

    #@231
    move-object/from16 v1, p0

    #@233
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@235
    .line 3133
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@239
    move-object/from16 v27, v0

    #@23b
    const/16 v29, 0x1

    #@23d
    move-object/from16 v0, v27

    #@23f
    move/from16 v1, v29

    #@241
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    #@244
    .line 3134
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@248
    move-object/from16 v27, v0

    #@24a
    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@24d
    move-result-object v27

    #@24e
    .line 3135
    const/16 v29, 0x7dc

    #@250
    .line 3134
    move-object/from16 v0, v27

    #@252
    move/from16 v1, v29

    #@254
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@257
    .line 3136
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@25b
    move-object/from16 v27, v0

    #@25d
    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@260
    move-result-object v27

    #@261
    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@264
    move-result-object v27

    #@265
    move-object/from16 v0, v27

    #@267
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@269
    move/from16 v29, v0

    #@26b
    or-int/lit8 v29, v29, 0x10

    #@26d
    move/from16 v0, v29

    #@26f
    move-object/from16 v1, v27

    #@271
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@273
    .line 3138
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@277
    move-object/from16 v27, v0

    #@279
    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@27c
    move-result-object v27

    #@27d
    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@280
    move-result-object v27

    #@281
    const-string/jumbo v29, "Select input method"

    #@284
    move-object/from16 v0, v27

    #@286
    move-object/from16 v1, v29

    #@288
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@28b
    .line 3139
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@28f
    move-object/from16 v27, v0

    #@291
    move-object/from16 v0, p0

    #@293
    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@295
    move/from16 v29, v0

    #@297
    move-object/from16 v0, p0

    #@299
    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@29b
    move/from16 v30, v0

    #@29d
    move-object/from16 v0, p0

    #@29f
    move-object/from16 v1, v27

    #@2a1
    move/from16 v2, v29

    #@2a3
    move/from16 v3, v30

    #@2a5
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    #@2a8
    .line 3140
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@2ac
    move-object/from16 v27, v0

    #@2ae
    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b1
    monitor-exit v28

    #@2b2
    .line 2999
    return-void

    #@2b3
    .line 3082
    .end local v6    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v8    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v14    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_8
    const/16 v27, 0x8

    #@2b5
    goto/16 :goto_2

    #@2b7
    .line 3009
    .end local v4    # "N":I
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "checkedItem":I
    .end local v12    # "dialogContext":Landroid/content/Context;
    .end local v13    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "i":I
    .end local v16    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v17    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v18    # "inflater":Landroid/view/LayoutInflater;
    .end local v24    # "settingsContext":Landroid/content/Context;
    .end local v26    # "tv":Landroid/view/View;
    :catchall_0
    move-exception v27

    #@2b8
    monitor-exit v28

    #@2b9
    throw v27
.end method

.method private switchUserLocked(I)V
    .locals 5
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 1010
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@2
    invoke-virtual {v2, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    #@5
    .line 1011
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@7
    invoke-virtual {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    #@a
    .line 1012
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@d
    .line 1014
    new-instance v2, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@11
    invoke-direct {v2, v3, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    #@14
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@16
    .line 1015
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 1025
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v1

    #@20
    .line 1026
    .local v1, "initialUserSwitch":Z
    const/4 v2, 0x0

    #@21
    invoke-direct {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    #@24
    .line 1028
    if-eqz v1, :cond_0

    #@26
    .line 1029
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@28
    .line 1030
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2a
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@2d
    move-result-object v3

    #@2e
    .line 1031
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v4}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 1029
    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    #@37
    .line 1005
    :cond_0
    return-void
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 1751
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1749
    return-void

    #@8
    .line 1750
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    .line 1757
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@3
    move-result v7

    #@4
    if-nez v7, :cond_0

    #@6
    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    .line 1759
    .local v6, "uid":I
    const-string/jumbo v7, "InputMethodManagerService"

    #@d
    new-instance v8, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v9, "Ignoring updateSystemUiLocked due to an invalid token. uid:"

    #@15
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    .line 1760
    const-string/jumbo v9, " token:"

    #@20
    .line 1759
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1761
    return-void

    #@30
    .line 1766
    .end local v6    # "uid":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v0

    #@34
    .line 1769
    .local v0, "ident":J
    if-eqz p2, :cond_1

    #@36
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_1

    #@3c
    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    #@3e
    if-eqz v7, :cond_4

    #@40
    .line 1773
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    #@43
    move-result v3

    #@44
    .line 1774
    .local v3, "needsToShowImeSwitcher":Z
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@46
    if-eqz v7, :cond_2

    #@48
    .line 1775
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@4a
    invoke-virtual {v7, p1, p2, p3, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    #@4d
    .line 1778
    :cond_2
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4f
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@51
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@57
    .line 1779
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_6

    #@59
    if-eqz v3, :cond_6

    #@5b
    .line 1781
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@5d
    .line 1782
    const v8, 0x10403e1

    #@60
    .line 1781
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@63
    move-result-object v5

    #@64
    .line 1784
    .local v5, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@66
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@68
    .line 1783
    invoke-static {v7, v2, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    #@6b
    move-result-object v4

    #@6c
    .line 1785
    .local v4, "summary":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@6e
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@75
    move-result-object v7

    #@76
    .line 1787
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    #@78
    .line 1785
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@7b
    .line 1788
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@7d
    if-eqz v7, :cond_3

    #@7f
    .line 1789
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@81
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    move-result v7

    #@85
    if-eqz v7, :cond_5

    #@87
    .line 1809
    .end local v4    # "summary":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8a
    .line 1756
    return-void

    #@8b
    .line 1770
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "needsToShowImeSwitcher":Z
    :cond_4
    const/4 p2, 0x0

    #@8c
    goto :goto_0

    #@8d
    .line 1793
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "needsToShowImeSwitcher":Z
    .restart local v4    # "summary":Ljava/lang/CharSequence;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@8f
    .line 1795
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@91
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@94
    move-result-object v8

    #@95
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@97
    .line 1793
    const/4 v10, 0x0

    #@98
    .line 1794
    const v11, 0x10403e1

    #@9b
    .line 1793
    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@9e
    .line 1796
    const/4 v7, 0x1

    #@9f
    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a1
    goto :goto_1

    #@a2
    .line 1808
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "needsToShowImeSwitcher":Z
    .end local v4    # "summary":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v7

    #@a3
    .line 1809
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a6
    .line 1808
    throw v7

    #@a7
    .line 1799
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "needsToShowImeSwitcher":Z
    :cond_6
    :try_start_2
    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    #@a9
    if-eqz v7, :cond_3

    #@ab
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@ad
    if-eqz v7, :cond_3

    #@af
    .line 1803
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@b1
    .line 1804
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@b3
    .line 1803
    const/4 v9, 0x0

    #@b4
    .line 1804
    const v10, 0x10403e1

    #@b7
    .line 1803
    invoke-virtual {v7, v9, v10, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@ba
    .line 1805
    const/4 v7, 0x0

    #@bb
    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bd
    goto :goto_1
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    #@0
    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1214
    return-void

    #@7
    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@c
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    #@12
    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    #@15
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 1212
    return-void

    #@1a
    .line 1216
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .locals 7
    .param p1, "initial"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1289
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1290
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    .line 1291
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@d
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    #@f
    const/16 v5, 0x3f2

    #@11
    .line 1290
    invoke-virtual {v1, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@18
    .line 1292
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@1b
    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget-object v6, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1f
    .line 1295
    .local v6, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_3

    #@21
    .line 1296
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@23
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@25
    .line 1297
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@29
    const/16 v5, 0x7d0

    #@2b
    .line 1296
    invoke-virtual {v1, v5, v6, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@32
    .line 1302
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 1304
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    #@39
    move-result v0

    #@3a
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@3d
    .line 1306
    :cond_1
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@3f
    iget-object v1, v6, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@41
    .line 1307
    iget-object v3, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@43
    if-eqz v3, :cond_2

    #@45
    iget-object v2, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@47
    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    #@4a
    move-result-object v2

    #@4b
    .line 1308
    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@4d
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@4f
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@51
    .line 1306
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@54
    return-object v0

    #@55
    .line 1299
    :cond_3
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@57
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@59
    .line 1300
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@5b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@5d
    const/16 v5, 0x7da

    #@5f
    .line 1299
    invoke-virtual {v1, v5, v6, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@66
    goto :goto_0
.end method

.method buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    .locals 21
    .param p3, "resetDefaultEnabledIme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2896
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    #@3
    .line 2897
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    #@6
    .line 2900
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@a
    move-object/from16 v18, v0

    #@c
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v14

    #@10
    .line 2901
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14
    move-object/from16 v18, v0

    #@16
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getDisabledSystemInputMethods()Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    .line 2902
    .local v7, "disabledSysImes":Ljava/lang/String;
    if-nez v7, :cond_0

    #@1c
    const-string/jumbo v7, ""

    #@1f
    .line 2905
    :cond_0
    new-instance v18, Landroid/content/Intent;

    #@21
    const-string/jumbo v19, "android.view.InputMethod"

    #@24
    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    .line 2907
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2b
    move-object/from16 v19, v0

    #@2d
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@30
    move-result v19

    #@31
    .line 2906
    const v20, 0x8080

    #@34
    .line 2904
    move-object/from16 v0, v18

    #@36
    move/from16 v1, v20

    #@38
    move/from16 v2, v19

    #@3a
    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@3d
    move-result-object v16

    #@3e
    .line 2910
    .local v16, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@42
    move-object/from16 v18, v0

    #@44
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    #@47
    move-result-object v3

    #@48
    .line 2911
    .local v3, "additionalSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v10, 0x0

    #@49
    .local v10, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@4c
    move-result v18

    #@4d
    move/from16 v0, v18

    #@4f
    if-ge v10, v0, :cond_2

    #@51
    .line 2912
    move-object/from16 v0, v16

    #@53
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v15

    #@57
    check-cast v15, Landroid/content/pm/ResolveInfo;

    #@59
    .line 2913
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5b
    move-object/from16 v17, v0

    #@5d
    .line 2914
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@5f
    move-object/from16 v0, v17

    #@61
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@63
    move-object/from16 v18, v0

    #@65
    move-object/from16 v0, v17

    #@67
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@69
    move-object/from16 v19, v0

    #@6b
    move-object/from16 v0, v18

    #@6d
    move-object/from16 v1, v19

    #@6f
    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@72
    .line 2915
    .local v4, "compName":Landroid/content/ComponentName;
    const-string/jumbo v18, "android.permission.BIND_INPUT_METHOD"

    #@75
    .line 2916
    move-object/from16 v0, v17

    #@77
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@79
    move-object/from16 v19, v0

    #@7b
    .line 2915
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v18

    #@7f
    if-nez v18, :cond_1

    #@81
    .line 2917
    const-string/jumbo v18, "InputMethodManagerService"

    #@84
    new-instance v19, Ljava/lang/StringBuilder;

    #@86
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v20, "Skipping input method "

    #@8c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v19

    #@90
    move-object/from16 v0, v19

    #@92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v19

    #@96
    .line 2918
    const-string/jumbo v20, ": it does not require the permission "

    #@99
    .line 2917
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v19

    #@9d
    .line 2919
    const-string/jumbo v20, "android.permission.BIND_INPUT_METHOD"

    #@a0
    .line 2917
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v19

    #@a4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v19

    #@a8
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 2911
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@ad
    goto :goto_0

    #@ae
    .line 2926
    :cond_1
    :try_start_0
    new-instance v13, Landroid/view/inputmethod/InputMethodInfo;

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@b4
    move-object/from16 v18, v0

    #@b6
    move-object/from16 v0, v18

    #@b8
    invoke-direct {v13, v0, v15, v3}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    #@bb
    .line 2927
    .local v13, "p":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c0
    .line 2928
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@c3
    move-result-object v11

    #@c4
    .line 2929
    .local v11, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@c9
    goto :goto_1

    #@ca
    .line 2935
    .end local v11    # "id":Ljava/lang/String;
    .end local v13    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v9

    #@cb
    .line 2936
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v18, "InputMethodManagerService"

    #@ce
    new-instance v19, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v20, "Unable to load input method "

    #@d6
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v19

    #@da
    move-object/from16 v0, v19

    #@dc
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v19

    #@e0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v19

    #@e4
    move-object/from16 v0, v18

    #@e6
    move-object/from16 v1, v19

    #@e8
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@eb
    goto :goto_1

    #@ec
    .line 2937
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v8

    #@ed
    .line 2938
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v18, "InputMethodManagerService"

    #@f0
    new-instance v19, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v20, "Unable to load input method "

    #@f8
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v19

    #@fc
    move-object/from16 v0, v19

    #@fe
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v19

    #@102
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v19

    #@106
    move-object/from16 v0, v18

    #@108
    move-object/from16 v1, v19

    #@10a
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10d
    goto :goto_1

    #@10e
    .line 2942
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    if-eqz p3, :cond_3

    #@110
    .line 2944
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@114
    move-object/from16 v18, v0

    #@116
    move-object/from16 v0, p0

    #@118
    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@11a
    move/from16 v19, v0

    #@11c
    move-object/from16 v0, v18

    #@11e
    move/from16 v1, v19

    #@120
    move-object/from16 v2, p1

    #@122
    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    #@125
    move-result-object v5

    #@126
    .line 2945
    .local v5, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v10, 0x0

    #@127
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@12a
    move-result v18

    #@12b
    move/from16 v0, v18

    #@12d
    if-ge v10, v0, :cond_3

    #@12f
    .line 2946
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@132
    move-result-object v12

    #@133
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@135
    .line 2950
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@138
    move-result-object v18

    #@139
    const/16 v19, 0x1

    #@13b
    move-object/from16 v0, p0

    #@13d
    move-object/from16 v1, v18

    #@13f
    move/from16 v2, v19

    #@141
    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    #@144
    .line 2945
    add-int/lit8 v10, v10, 0x1

    #@146
    goto :goto_2

    #@147
    .line 2954
    .end local v5    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v12    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14b
    move-object/from16 v18, v0

    #@14d
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@150
    move-result-object v6

    #@151
    .line 2955
    .local v6, "defaultImiId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@154
    move-result v18

    #@155
    if-nez v18, :cond_4

    #@157
    .line 2956
    move-object/from16 v0, p2

    #@159
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15c
    move-result v18

    #@15d
    if-nez v18, :cond_5

    #@15f
    .line 2957
    const-string/jumbo v18, "InputMethodManagerService"

    #@162
    const-string/jumbo v19, "Default IME is uninstalled. Choose new default IME."

    #@165
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@168
    .line 2958
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    #@16b
    move-result v18

    #@16c
    if-eqz v18, :cond_4

    #@16e
    .line 2959
    const/16 v18, 0x1

    #@170
    move-object/from16 v0, p0

    #@172
    move/from16 v1, v18

    #@174
    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    #@177
    .line 2970
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@17b
    move-object/from16 v18, v0

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@181
    move-object/from16 v19, v0

    #@183
    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    #@186
    .line 2891
    return-void

    #@187
    .line 2963
    :cond_5
    const/16 v18, 0x1

    #@189
    move-object/from16 v0, p0

    #@18b
    move/from16 v1, v18

    #@18d
    invoke-virtual {v0, v6, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    #@190
    goto :goto_3
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    #@0
    .prologue
    .line 1571
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@5
    .line 1572
    const/4 v0, 0x0

    #@6
    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@8
    .line 1573
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@b
    .line 1570
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1595
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1596
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@7
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "cs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1b
    .line 1597
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1600
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@21
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@24
    .line 1601
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@26
    .line 1602
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@28
    .line 1604
    .end local v1    # "cs$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1605
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2e
    const-string/jumbo v3, "ime"

    #@31
    const/4 v4, 0x0

    #@32
    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    #@35
    .line 1594
    :cond_2
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3754
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v10, "android.permission.DUMP"

    #@5
    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v9

    #@9
    if-eqz v9, :cond_0

    #@b
    .line 3757
    new-instance v9, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v10, "Permission Denial: can\'t dump InputMethodManager from from pid="

    #@13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    .line 3758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v10

    #@1b
    .line 3757
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    .line 3759
    const-string/jumbo v10, ", uid="

    #@22
    .line 3757
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    .line 3759
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v10

    #@2a
    .line 3757
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 3760
    return-void

    #@36
    .line 3766
    :cond_0
    new-instance v8, Landroid/util/PrintWriterPrinter;

    #@38
    invoke-direct {v8, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@3b
    .line 3768
    .local v8, "p":Landroid/util/Printer;
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@3d
    monitor-enter v10

    #@3e
    .line 3769
    :try_start_0
    const-string/jumbo v9, "Current Input Method Manager state:"

    #@41
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@44
    .line 3770
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v0

    #@4a
    .line 3771
    .local v0, "N":I
    const-string/jumbo v9, "  Input Methods:"

    #@4d
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@50
    .line 3772
    const/4 v5, 0x0

    #@51
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    #@53
    .line 3773
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    #@5b
    .line 3774
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v11, "  InputMethod #"

    #@63
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    const-string/jumbo v11, ":"

    #@6e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@79
    .line 3775
    const-string/jumbo v9, "    "

    #@7c
    invoke-virtual {v6, v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@7f
    .line 3772
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_0

    #@82
    .line 3777
    .end local v6    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const-string/jumbo v9, "  Clients:"

    #@85
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@88
    .line 3778
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@8a
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8d
    move-result-object v9

    #@8e
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@91
    move-result-object v2

    #@92
    .local v2, "ci$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@95
    move-result v9

    #@96
    if-eqz v9, :cond_2

    #@98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9b
    move-result-object v1

    #@9c
    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    #@9e
    .line 3779
    .local v1, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v11, "  Client "

    #@a6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    const-string/jumbo v11, ":"

    #@b1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v9

    #@b9
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@bc
    .line 3780
    new-instance v9, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v11, "    client="

    #@c4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@ca
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v9

    #@d2
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@d5
    .line 3781
    new-instance v9, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v11, "    inputContext="

    #@dd
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v9

    #@e1
    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    #@e3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ee
    .line 3782
    new-instance v9, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v11, "    sessionRequested="

    #@f6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    iget-boolean v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@fc
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v9

    #@100
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v9

    #@104
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@107
    .line 3783
    new-instance v9, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v11, "    curSession="

    #@10f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v9

    #@113
    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@115
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v9

    #@119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v9

    #@11d
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@120
    goto/16 :goto_1

    #@122
    .line 3768
    .end local v0    # "N":I
    .end local v1    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v2    # "ci$iterator":Ljava/util/Iterator;
    .end local v5    # "i":I
    :catchall_0
    move-exception v9

    #@123
    monitor-exit v10

    #@124
    throw v9

    #@125
    .line 3785
    .restart local v0    # "N":I
    .restart local v2    # "ci$iterator":Ljava/util/Iterator;
    .restart local v5    # "i":I
    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v11, "  mCurMethodId="

    #@12d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v9

    #@131
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@133
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v9

    #@137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v9

    #@13b
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@13e
    .line 3786
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@140
    .line 3787
    .local v3, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v11, "  mCurClient="

    #@148
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v9

    #@14c
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v9

    #@150
    const-string/jumbo v11, " mCurSeq="

    #@153
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v9

    #@157
    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@159
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v9

    #@15d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v9

    #@161
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@164
    .line 3788
    new-instance v9, Ljava/lang/StringBuilder;

    #@166
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v11, "  mCurFocusedWindow="

    #@16c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v9

    #@170
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@172
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v9

    #@176
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v9

    #@17a
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@17d
    .line 3789
    new-instance v9, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    const-string/jumbo v11, "  mCurId="

    #@185
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v9

    #@189
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@18b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v9

    #@18f
    const-string/jumbo v11, " mHaveConnect="

    #@192
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v9

    #@196
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@198
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v9

    #@19c
    .line 3790
    const-string/jumbo v11, " mBoundToMethod="

    #@19f
    .line 3789
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v9

    #@1a3
    .line 3790
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@1a5
    .line 3789
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v9

    #@1a9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v9

    #@1ad
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1b0
    .line 3791
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v11, "  mCurToken="

    #@1b8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v9

    #@1bc
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1be
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v9

    #@1c2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v9

    #@1c6
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1c9
    .line 3792
    new-instance v9, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    const-string/jumbo v11, "  mCurIntent="

    #@1d1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v9

    #@1d5
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@1d7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v9

    #@1db
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1de
    move-result-object v9

    #@1df
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1e2
    .line 3793
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1e4
    .line 3794
    .local v7, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v11, "  mCurMethod="

    #@1ec
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v9

    #@1f0
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1f2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v9

    #@1f6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v9

    #@1fa
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1fd
    .line 3795
    new-instance v9, Ljava/lang/StringBuilder;

    #@1ff
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@202
    const-string/jumbo v11, "  mEnabledSession="

    #@205
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v9

    #@209
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@20b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v9

    #@20f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v9

    #@213
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@216
    .line 3796
    new-instance v9, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v11, "  mShowRequested="

    #@21e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v9

    #@222
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@224
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@227
    move-result-object v9

    #@228
    .line 3797
    const-string/jumbo v11, " mShowExplicitlyRequested="

    #@22b
    .line 3796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v9

    #@22f
    .line 3797
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@231
    .line 3796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@234
    move-result-object v9

    #@235
    .line 3798
    const-string/jumbo v11, " mShowForced="

    #@238
    .line 3796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v9

    #@23c
    .line 3798
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@23e
    .line 3796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@241
    move-result-object v9

    #@242
    .line 3799
    const-string/jumbo v11, " mInputShown="

    #@245
    .line 3796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v9

    #@249
    .line 3799
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@24b
    .line 3796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v9

    #@24f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@252
    move-result-object v9

    #@253
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@256
    .line 3800
    new-instance v9, Ljava/lang/StringBuilder;

    #@258
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@25b
    const-string/jumbo v11, "  mCurUserActionNotificationSequenceNumber="

    #@25e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v9

    #@262
    .line 3801
    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@264
    .line 3800
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@267
    move-result-object v9

    #@268
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26b
    move-result-object v9

    #@26c
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@26f
    .line 3802
    new-instance v9, Ljava/lang/StringBuilder;

    #@271
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@274
    const-string/jumbo v11, "  mSystemReady="

    #@277
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v9

    #@27b
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@27d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@280
    move-result-object v9

    #@281
    const-string/jumbo v11, " mInteractive="

    #@284
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v9

    #@288
    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@28a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v9

    #@28e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@291
    move-result-object v9

    #@292
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@295
    .line 3803
    new-instance v9, Ljava/lang/StringBuilder;

    #@297
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29a
    const-string/jumbo v11, "  mSettingsObserver="

    #@29d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v9

    #@2a1
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@2a3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v9

    #@2a7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2aa
    move-result-object v9

    #@2ab
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2ae
    .line 3804
    const-string/jumbo v9, "  mSwitchingController:"

    #@2b1
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2b4
    .line 3805
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@2b6
    invoke-virtual {v9, v8}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b9
    monitor-exit v10

    #@2ba
    .line 3808
    const-string/jumbo v9, " "

    #@2bd
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2c0
    .line 3809
    if-eqz v3, :cond_3

    #@2c2
    .line 3810
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2c5
    .line 3812
    :try_start_2
    iget-object v9, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@2c7
    invoke-interface {v9}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@2ca
    move-result-object v9

    #@2cb
    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@2ce
    .line 3820
    :goto_2
    const-string/jumbo v9, " "

    #@2d1
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2d4
    .line 3821
    if-eqz v7, :cond_4

    #@2d6
    .line 3822
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2d9
    .line 3824
    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    #@2dc
    move-result-object v9

    #@2dd
    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@2e0
    .line 3753
    :goto_3
    return-void

    #@2e1
    .line 3813
    :catch_0
    move-exception v4

    #@2e2
    .line 3814
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2e7
    const-string/jumbo v10, "Input method client dead: "

    #@2ea
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v9

    #@2ee
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v9

    #@2f2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f5
    move-result-object v9

    #@2f6
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f9
    goto :goto_2

    #@2fa
    .line 3817
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v9, "No input method client."

    #@2fd
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@300
    goto :goto_2

    #@301
    .line 3825
    :catch_1
    move-exception v4

    #@302
    .line 3826
    .restart local v4    # "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@304
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@307
    const-string/jumbo v10, "Input method service dead: "

    #@30a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v9

    #@30e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@311
    move-result-object v9

    #@312
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@315
    move-result-object v9

    #@316
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@319
    goto :goto_3

    #@31a
    .line 3829
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v9, "No input method service."

    #@31d
    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@320
    goto :goto_3
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1236
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/os/Binder;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1237
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1235
    :goto_0
    return-void

    #@e
    .line 1239
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    #@11
    .line 1240
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    #@14
    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    #@0
    .prologue
    .line 1479
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    #@0
    .prologue
    .line 3424
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3425
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 3427
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v0

    #@b
    .line 3428
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    monitor-exit v0

    #@10
    return-object v1

    #@11
    .line 3427
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v0

    #@13
    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 1179
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1195
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v2

    #@e
    .line 1197
    if-nez p1, :cond_1

    #@10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1198
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@16
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@1e
    .line 1202
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    if-nez v0, :cond_2

    #@20
    .line 1203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v1

    #@24
    monitor-exit v2

    #@25
    return-object v1

    #@26
    .line 1200
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@28
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@2e
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    #@2f
    .line 1205
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@31
    .line 1206
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@33
    .line 1205
    invoke-virtual {v1, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    move-result-object v1

    #@37
    monitor-exit v2

    #@38
    return-object v1

    #@39
    .line 1195
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 1169
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@10
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@12
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    .line 1168
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    #@0
    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodWindowVisibleHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2498
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 2499
    return-object v8

    #@8
    .line 2501
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v6

    #@b
    .line 2502
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@d
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    #@10
    move-result-object v1

    #@11
    .line 2504
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    #@13
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@15
    check-cast v5, Ljava/lang/CharSequence;

    #@17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_1

    #@1d
    .line 2505
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1f
    check-cast v5, Ljava/lang/CharSequence;

    #@21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v5

    #@25
    .line 2504
    if-eqz v5, :cond_2

    #@27
    :cond_1
    monitor-exit v6

    #@28
    .line 2505
    return-object v8

    #@29
    .line 2506
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2b
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2d
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 2507
    .local v2, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3

    #@35
    monitor-exit v6

    #@36
    return-object v8

    #@37
    .line 2509
    :cond_3
    :try_start_2
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@39
    check-cast v5, Ljava/lang/String;

    #@3b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@42
    move-result v3

    #@43
    .line 2511
    .local v3, "lastSubtypeHash":I
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@46
    move-result v4

    #@47
    .line 2512
    .local v4, "lastSubtypeId":I
    if-ltz v4, :cond_4

    #@49
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    move-result v5

    #@4d
    if-lt v4, v5, :cond_5

    #@4f
    :cond_4
    monitor-exit v6

    #@50
    .line 2513
    return-object v8

    #@51
    .line 2515
    :cond_5
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    move-result-object v5

    #@55
    monitor-exit v6

    #@56
    return-object v5

    #@57
    .line 2516
    .end local v3    # "lastSubtypeHash":I
    .end local v4    # "lastSubtypeId":I
    :catch_0
    move-exception v0

    #@58
    .local v0, "e":Ljava/lang/NumberFormatException;
    monitor-exit v6

    #@59
    .line 2517
    return-object v8

    #@5a
    .line 2501
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v5

    #@5b
    monitor-exit v6

    #@5c
    throw v5
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 8

    #@0
    .prologue
    .line 3486
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v7

    #@3
    .line 3487
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3488
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@a
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 3494
    const-string/jumbo v6, "voice"

    #@13
    .line 3493
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    #@16
    move-result-object v2

    #@17
    .line 3495
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v2, :cond_0

    #@19
    .line 3496
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 3497
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@20
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v7

    #@24
    .line 3499
    return-object v3

    #@25
    .line 3501
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@27
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v6

    #@2b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "imi$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_3

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@3b
    .line 3502
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 3503
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@40
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Ljava/util/ArrayList;

    #@46
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v5

    #@4a
    .local v5, "subtype$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_2

    #@50
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@56
    .line 3504
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    goto :goto_0

    #@5a
    .line 3486
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "imi$iterator":Ljava/util/Iterator;
    .end local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "subtype$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@5b
    monitor-exit v7

    #@5c
    throw v6

    #@5d
    .restart local v1    # "imi$iterator":Ljava/util/Iterator;
    .restart local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    monitor-exit v7

    #@5e
    .line 3507
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v12, 0x1

    #@2
    .line 2680
    iget v10, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v10, :sswitch_data_0

    #@7
    .line 2860
    return v11

    #@8
    .line 2683
    :sswitch_0
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@a
    packed-switch v10, :pswitch_data_0

    #@d
    .line 2697
    const-string/jumbo v10, "InputMethodManagerService"

    #@10
    new-instance v12, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v13, "Unknown subtype picker mode = "

    #@18
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v12

    #@1c
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@1e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v12

    #@22
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v12

    #@26
    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 2698
    return v11

    #@2a
    .line 2688
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@2c
    .line 2700
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    #@2f
    .line 2701
    return v12

    #@30
    .line 2691
    :pswitch_1
    const/4 v9, 0x1

    #@31
    .line 2692
    .local v9, "showAuxSubtypes":Z
    goto :goto_0

    #@32
    .line 2694
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_2
    const/4 v9, 0x0

    #@33
    .line 2695
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_0

    #@34
    .line 2704
    .end local v9    # "showAuxSubtypes":Z
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@38
    .line 2705
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3a
    check-cast v10, Ljava/lang/String;

    #@3c
    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    #@3f
    .line 2706
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@42
    .line 2707
    return v12

    #@43
    .line 2710
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    #@46
    .line 2711
    return v12

    #@47
    .line 2717
    :sswitch_3
    :try_start_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@49
    check-cast v10, Lcom/android/internal/view/IInputMethod;

    #@4b
    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    #@4e
    .line 2721
    :goto_1
    return v12

    #@4f
    .line 2723
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@53
    .line 2725
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@55
    check-cast v10, Lcom/android/internal/view/IInputMethod;

    #@57
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@59
    check-cast v11, Landroid/view/inputmethod/InputBinding;

    #@5b
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a

    #@5e
    .line 2728
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@61
    .line 2729
    return v12

    #@62
    .line 2731
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@64
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@66
    .line 2735
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@68
    check-cast v10, Lcom/android/internal/view/IInputMethod;

    #@6a
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@6c
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6e
    check-cast v11, Landroid/os/ResultReceiver;

    #@70
    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    #@73
    .line 2738
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@76
    .line 2739
    return v12

    #@77
    .line 2741
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@79
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@7b
    .line 2745
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@7d
    check-cast v10, Lcom/android/internal/view/IInputMethod;

    #@7f
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@81
    check-cast v11, Landroid/os/ResultReceiver;

    #@83
    const/4 v13, 0x0

    #@84
    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    #@87
    .line 2748
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@8a
    .line 2749
    return v12

    #@8b
    .line 2751
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8d
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@8f
    .line 2754
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@91
    check-cast v10, Lcom/android/internal/view/IInputMethod;

    #@93
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@95
    check-cast v11, Landroid/os/IBinder;

    #@97
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    #@9a
    .line 2757
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@9d
    .line 2758
    return v12

    #@9e
    .line 2760
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a0
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a2
    .line 2761
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a4
    check-cast v5, Lcom/android/internal/view/IInputMethod;

    #@a6
    .line 2762
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a8
    check-cast v1, Landroid/view/InputChannel;

    #@aa
    .line 2764
    .local v1, "channel":Landroid/view/InputChannel;
    :try_start_5
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@ac
    check-cast v10, Lcom/android/internal/view/IInputSessionCallback;

    #@ae
    invoke-interface {v5, v1, v10}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b1
    .line 2769
    if-eqz v1, :cond_0

    #@b3
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@b6
    move-result v10

    #@b7
    if-eqz v10, :cond_0

    #@b9
    .line 2770
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@bc
    .line 2773
    :cond_0
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@bf
    .line 2774
    return v12

    #@c0
    .line 2765
    :catch_0
    move-exception v4

    #@c1
    .line 2769
    .local v4, "e":Landroid/os/RemoteException;
    if-eqz v1, :cond_0

    #@c3
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@c6
    move-result v10

    #@c7
    if-eqz v10, :cond_0

    #@c9
    .line 2770
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@cc
    goto :goto_6

    #@cd
    .line 2766
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    #@ce
    .line 2769
    if-eqz v1, :cond_1

    #@d0
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@d3
    move-result v11

    #@d4
    if-eqz v11, :cond_1

    #@d6
    .line 2770
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@d9
    .line 2766
    :cond_1
    throw v10

    #@da
    .line 2779
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "channel":Landroid/view/InputChannel;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@de
    .line 2781
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@e0
    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    #@e2
    .line 2782
    .local v8, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@e5
    .line 2783
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@e7
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@e9
    check-cast v10, Lcom/android/internal/view/IInputContext;

    #@eb
    .line 2784
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@ed
    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    #@ef
    .line 2783
    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    #@f2
    .line 2787
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@f5
    .line 2788
    return v12

    #@f6
    .line 2790
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@fa
    .line 2792
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@fc
    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    #@fe
    .line 2793
    .restart local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@101
    .line 2794
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@103
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@105
    check-cast v10, Lcom/android/internal/view/IInputContext;

    #@107
    .line 2795
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@109
    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    #@10b
    .line 2794
    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    #@10e
    .line 2798
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@111
    .line 2799
    return v12

    #@112
    .line 2805
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_b
    :try_start_8
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@114
    check-cast v10, Lcom/android/internal/view/IInputMethodClient;

    #@116
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@118
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    #@11b
    .line 2809
    :goto_9
    return v12

    #@11c
    .line 2811
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11e
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@120
    .line 2812
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@122
    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    #@124
    .line 2813
    .local v2, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@126
    check-cast v6, Lcom/android/internal/view/InputBindResult;

    #@128
    .line 2815
    .local v6, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_9
    invoke-interface {v2, v6}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@12b
    .line 2821
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@12d
    if-eqz v10, :cond_2

    #@12f
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@132
    move-result v10

    #@133
    if-eqz v10, :cond_2

    #@135
    .line 2822
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@137
    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    #@13a
    .line 2825
    :cond_2
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@13d
    .line 2826
    return v12

    #@13e
    .line 2816
    :catch_1
    move-exception v4

    #@13f
    .line 2817
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_a
    const-string/jumbo v10, "InputMethodManagerService"

    #@142
    new-instance v11, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v13, "Client died receiving input method "

    #@14a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v11

    #@14e
    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@150
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v11

    #@154
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v11

    #@158
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@15b
    .line 2821
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@15d
    if-eqz v10, :cond_2

    #@15f
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@162
    move-result v10

    #@163
    if-eqz v10, :cond_2

    #@165
    .line 2822
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@167
    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    #@16a
    goto :goto_a

    #@16b
    .line 2818
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v10

    #@16c
    .line 2821
    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@16e
    if-eqz v11, :cond_3

    #@170
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@173
    move-result v11

    #@174
    if-eqz v11, :cond_3

    #@176
    .line 2822
    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@178
    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    #@17b
    .line 2818
    :cond_3
    throw v10

    #@17c
    .line 2830
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v6    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_d
    :try_start_b
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17e
    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    #@180
    iget-object v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@182
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@184
    if-eqz v13, :cond_4

    #@186
    move v11, v12

    #@187
    :cond_4
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    #@18a
    .line 2836
    :goto_b
    return v12

    #@18b
    .line 2831
    :catch_2
    move-exception v4

    #@18c
    .line 2832
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "InputMethodManagerService"

    #@18f
    new-instance v10, Ljava/lang/StringBuilder;

    #@191
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@194
    const-string/jumbo v13, "Got RemoteException sending setActive(false) notification to pid "

    #@197
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v13

    #@19b
    .line 2833
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19d
    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    #@19f
    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@1a1
    .line 2832
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v10

    #@1a5
    .line 2833
    const-string/jumbo v13, " uid "

    #@1a8
    .line 2832
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v13

    #@1ac
    .line 2834
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ae
    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1b0
    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@1b2
    .line 2832
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v10

    #@1b6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v10

    #@1ba
    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bd
    goto :goto_b

    #@1be
    .line 2838
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_e
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@1c0
    if-eqz v10, :cond_5

    #@1c2
    move v10, v12

    #@1c3
    :goto_c
    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    #@1c6
    .line 2839
    return v12

    #@1c7
    :cond_5
    move v10, v11

    #@1c8
    .line 2838
    goto :goto_c

    #@1c9
    .line 2841
    :sswitch_f
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@1cb
    .line 2842
    .local v7, "sequenceNumber":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cd
    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1cf
    .line 2844
    .local v3, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_c
    iget-object v10, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1d1
    invoke-interface {v10, v7}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    #@1d4
    .line 2852
    :goto_d
    return v12

    #@1d5
    .line 2845
    :catch_3
    move-exception v4

    #@1d6
    .line 2846
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "InputMethodManagerService"

    #@1d9
    new-instance v11, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v13, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    #@1e1
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v11

    #@1e5
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v11

    #@1e9
    .line 2848
    const-string/jumbo v13, ") notification to pid "

    #@1ec
    .line 2846
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v11

    #@1f0
    .line 2849
    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@1f2
    .line 2846
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v11

    #@1f6
    .line 2849
    const-string/jumbo v13, " uid "

    #@1f9
    .line 2846
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v11

    #@1fd
    .line 2850
    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@1ff
    .line 2846
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@202
    move-result-object v11

    #@203
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@206
    move-result-object v11

    #@207
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20a
    goto :goto_d

    #@20b
    .line 2857
    .end local v3    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "sequenceNumber":I
    :sswitch_10
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@20d
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@20f
    if-ne v13, v12, :cond_6

    #@211
    move v11, v12

    #@212
    :cond_6
    invoke-virtual {v10, v11}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    #@215
    .line 2858
    return v12

    #@216
    .line 2806
    :catch_4
    move-exception v4

    #@217
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@219
    .line 2796
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_5
    move-exception v4

    #@21a
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    #@21c
    .line 2785
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_6
    move-exception v4

    #@21d
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@21f
    .line 2755
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_7
    move-exception v4

    #@220
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@222
    .line 2746
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_8
    move-exception v4

    #@223
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    #@225
    .line 2736
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v4

    #@226
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@228
    .line 2726
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v4

    #@229
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@22b
    .line 2718
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v4

    #@22c
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@22e
    .line 2680
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3f2 -> :sswitch_4
        0x3fc -> :sswitch_5
        0x406 -> :sswitch_6
        0x410 -> :sswitch_7
        0x41a -> :sswitch_8
        0x7d0 -> :sswitch_9
        0x7da -> :sswitch_a
        0xbb8 -> :sswitch_b
        0xbc2 -> :sswitch_c
        0xbcc -> :sswitch_d
        0xbd6 -> :sswitch_e
        0xbe0 -> :sswitch_f
        0xfa0 -> :sswitch_10
    .end sparse-switch

    #@274
    .line 2683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 7
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2124
    and-int/lit8 v2, p1, 0x1

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 2125
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@7
    if-nez v2, :cond_0

    #@9
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@b
    .line 2124
    if-eqz v2, :cond_1

    #@d
    .line 2127
    :cond_0
    return v6

    #@e
    .line 2129
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@10
    if-eqz v2, :cond_2

    #@12
    and-int/lit8 v2, p1, 0x2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 2131
    return v6

    #@17
    .line 2142
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@19
    if-eqz v2, :cond_6

    #@1b
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@1d
    if-nez v2, :cond_4

    #@1f
    .line 2143
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@21
    and-int/lit8 v2, v2, 0x1

    #@23
    if-eqz v2, :cond_5

    #@25
    const/4 v1, 0x1

    #@26
    .line 2145
    .local v1, "shouldHideSoftInput":Z
    :goto_0
    if-eqz v1, :cond_7

    #@28
    .line 2150
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2a
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2c
    .line 2151
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2e
    const/16 v5, 0x406

    #@30
    .line 2150
    invoke-virtual {v3, v5, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@37
    .line 2152
    const/4 v0, 0x1

    #@38
    .line 2156
    .local v0, "res":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@3a
    if-eqz v2, :cond_3

    #@3c
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@3e
    if-eqz v2, :cond_3

    #@40
    .line 2157
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@42
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@44
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@47
    .line 2158
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@49
    .line 2160
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@4b
    .line 2161
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4d
    .line 2162
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@4f
    .line 2163
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@51
    .line 2164
    return v0

    #@52
    .line 2142
    .end local v0    # "res":Z
    .end local v1    # "shouldHideSoftInput":Z
    :cond_4
    const/4 v1, 0x1

    #@53
    .restart local v1    # "shouldHideSoftInput":Z
    goto :goto_0

    #@54
    .line 2143
    .end local v1    # "shouldHideSoftInput":Z
    :cond_5
    const/4 v1, 0x0

    #@55
    .restart local v1    # "shouldHideSoftInput":Z
    goto :goto_0

    #@56
    .line 2142
    .end local v1    # "shouldHideSoftInput":Z
    :cond_6
    const/4 v1, 0x0

    #@57
    .restart local v1    # "shouldHideSoftInput":Z
    goto :goto_0

    #@58
    .line 2154
    :cond_7
    const/4 v0, 0x0

    #@59
    .restart local v0    # "res":Z
    goto :goto_1
.end method

.method hideInputMethodMenu()V
    .locals 2

    #@0
    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 3186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 3184
    return-void

    #@8
    .line 3185
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3193
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3194
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@a
    .line 3195
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@c
    .line 3198
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@e
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@10
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@12
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@15
    .line 3199
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@17
    .line 3200
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@19
    .line 3190
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2617
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2618
    return-void

    #@7
    .line 2620
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 2621
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    .line 2622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 2623
    .local v2, "uid":I
    const-string/jumbo v3, "InputMethodManagerService"

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "Ignoring hideInputMethod due to an invalid token. uid:"

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 2624
    const-string/jumbo v6, " token:"

    #@2a
    .line 2623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@39
    monitor-exit v4

    #@3a
    .line 2625
    return-void

    #@3b
    .line 2627
    .end local v2    # "uid":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result-wide v0

    #@3f
    .line 2629
    .local v0, "ident":J
    const/4 v3, 0x0

    #@40
    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 2631
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 2616
    return-void

    #@48
    .line 2630
    :catchall_0
    move-exception v3

    #@49
    .line 2631
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2630
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 2620
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    #@4e
    monitor-exit v4

    #@4f
    throw v3
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2092
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2093
    return v7

    #@8
    .line 2095
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    .line 2096
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 2098
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 2099
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v4, :cond_1

    #@17
    if-nez p1, :cond_2

    #@19
    .line 2105
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@1b
    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_3

    #@21
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    .line 2119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 2108
    return v7

    #@26
    .line 2100
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@28
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@2a
    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@31
    move-result-object v6

    #@32
    if-ne v4, v6, :cond_1

    #@34
    .line 2116
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@37
    move-result v4

    #@38
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@39
    .line 2119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 2116
    return v4

    #@3d
    .line 2110
    :catch_0
    move-exception v0

    #@3e
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3f
    .line 2119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 2111
    return v7

    #@43
    .line 2098
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@44
    :try_start_7
    monitor-exit v5

    #@45
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@46
    .line 2118
    :catchall_1
    move-exception v4

    #@47
    .line 2119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2118
    throw v4
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1831
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1832
    return v8

    #@8
    .line 1834
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v7

    #@b
    .line 1835
    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@d
    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    #@13
    .line 1837
    .local v5, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_3

    #@15
    .line 1838
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 1839
    .local v4, "suggestions":[Ljava/lang/String;
    if-ltz p3, :cond_1

    #@1b
    array-length v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    if-lt p3, v6, :cond_2

    #@1e
    :cond_1
    monitor-exit v7

    #@1f
    return v8

    #@20
    .line 1840
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1841
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    #@26
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@29
    .line 1844
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 1845
    const-string/jumbo v6, "android.text.style.SUGGESTION_PICKED"

    #@33
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@36
    .line 1846
    const-string/jumbo v6, "before"

    #@39
    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 1847
    const-string/jumbo v6, "after"

    #@3f
    aget-object v8, v4, p3

    #@41
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@44
    .line 1848
    const-string/jumbo v6, "hashcode"

    #@47
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    #@4a
    move-result v8

    #@4b
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4e
    .line 1849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@51
    move-result-wide v2

    #@52
    .line 1851
    .local v2, "ident":J
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@54
    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@56
    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    .line 1853
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    .line 1855
    const/4 v6, 0x1

    #@5d
    monitor-exit v7

    #@5e
    return v6

    #@5f
    .line 1852
    :catchall_0
    move-exception v6

    #@60
    .line 1853
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1852
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@64
    .line 1834
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ident":J
    .end local v4    # "suggestions":[Ljava/lang/String;
    .end local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_1
    move-exception v6

    #@65
    monitor-exit v7

    #@66
    throw v6

    #@67
    .restart local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    monitor-exit v7

    #@68
    .line 1858
    return v8
.end method

.method public notifyUserAction(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    #@0
    .prologue
    .line 2570
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2571
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v1, p1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 2577
    return-void

    #@9
    .line 2579
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@13
    .line 2580
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    #@15
    .line 2581
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@17
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@19
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_1
    monitor-exit v2

    #@1d
    .line 2566
    return-void

    #@1e
    .line 2570
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1484
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@5
    if-eqz v0, :cond_1

    #@7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@9
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1486
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@19
    .line 1487
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1488
    const-string/jumbo v0, "InputMethodManagerService"

    #@20
    const-string/jumbo v2, "Service connected without a token!"

    #@23
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1489
    const/4 v0, 0x0

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v1

    #@2c
    .line 1490
    return-void

    #@2d
    .line 1493
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@31
    .line 1494
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@33
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@35
    const/16 v5, 0x410

    #@37
    .line 1493
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@3e
    .line 1495
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@40
    if-eqz v0, :cond_1

    #@42
    .line 1496
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@44
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@47
    .line 1497
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@49
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    :cond_1
    monitor-exit v1

    #@4d
    .line 1483
    return-void

    #@4e
    .line 1484
    :catchall_0
    move-exception v0

    #@4f
    monitor-exit v1

    #@50
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1611
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1615
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@d
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .line 1614
    if-eqz v0, :cond_0

    #@17
    .line 1616
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    #@1a
    .line 1619
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@20
    .line 1620
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@22
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@24
    .line 1621
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@27
    .line 1622
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1623
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@2d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@31
    .line 1624
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@33
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@35
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@37
    const/16 v5, 0xbb8

    #@39
    .line 1623
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    :cond_0
    monitor-exit v1

    #@41
    .line 1610
    return-void

    #@42
    .line 1611
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 1505
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@5
    if-eqz v1, :cond_1

    #@7
    if-eqz p1, :cond_1

    #@9
    .line 1507
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@b
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v1

    #@f
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    if-ne v1, v3, :cond_1

    #@15
    .line 1508
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1509
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1e
    .line 1510
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@20
    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    #@22
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@24
    invoke-direct {v3, v4, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    #@27
    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@29
    .line 1512
    const/4 v1, 0x1

    #@2a
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    #@2d
    move-result-object v0

    #@2e
    .line 1513
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 1514
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@34
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@36
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@38
    .line 1515
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    const/16 v5, 0xbc2

    #@3e
    .line 1514
    invoke-virtual {v3, v5, v4, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :cond_0
    monitor-exit v2

    #@46
    .line 1517
    return-void

    #@47
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1
    monitor-exit v2

    #@48
    .line 1523
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    #@4b
    .line 1504
    return-void

    #@4c
    .line 1505
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1052
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 1053
    :catch_0
    move-exception v0

    #@6
    .line 1056
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1057
    const-string/jumbo v1, "InputMethodManagerService"

    #@d
    const-string/jumbo v2, "Input Method Manager Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 1059
    :cond_0
    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 6
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    #@0
    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1816
    return-void

    #@7
    .line 1818
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 1819
    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@c
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@14
    .line 1820
    .local v0, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@16
    if-ge v1, v3, :cond_2

    #@18
    .line 1821
    aget-object v2, p1, v1

    #@1a
    .line 1822
    .local v2, "ss":Landroid/text/style/SuggestionSpan;
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_1

    #@24
    .line 1823
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@26
    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1820
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_2
    monitor-exit v4

    #@2d
    .line 1814
    return-void

    #@2e
    .line 1818
    .end local v0    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    #@0
    .prologue
    .line 1224
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1225
    return-void

    #@7
    .line 1227
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v2

    #@a
    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@c
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    #@16
    .line 1229
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_1

    #@18
    .line 1230
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v2

    #@1c
    .line 1223
    return-void

    #@1d
    .line 1227
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 8
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1560
    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1562
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@c
    move-result-object v0

    #@d
    .line 1563
    .local v0, "channels":[Landroid/view/InputChannel;
    iput-boolean v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@f
    .line 1564
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@11
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@13
    .line 1565
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@15
    aget-object v4, v0, v4

    #@17
    .line 1566
    new-instance v5, Lcom/android/server/InputMethodManagerService$MethodCallback;

    #@19
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1b
    const/4 v7, 0x0

    #@1c
    aget-object v7, v0, v7

    #@1e
    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    #@21
    .line 1565
    const/16 v6, 0x41a

    #@23
    .line 1564
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@2a
    .line 1559
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 11
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2524
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v7

    #@4
    if-nez v7, :cond_0

    #@6
    .line 2525
    return-void

    #@7
    .line 2529
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_1

    #@d
    if-nez p2, :cond_2

    #@f
    :cond_1
    return-void

    #@10
    :cond_2
    array-length v7, p2

    #@11
    if-eqz v7, :cond_1

    #@13
    .line 2530
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@15
    monitor-enter v8

    #@16
    .line 2531
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@18
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 2532
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_3

    #@20
    monitor-exit v8

    #@21
    return-void

    #@22
    .line 2535
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@27
    move-result v9

    #@28
    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    move-result-object v5

    #@2c
    .line 2540
    .local v5, "packageInfos":[Ljava/lang/String;
    if-eqz v5, :cond_5

    #@2e
    .line 2541
    :try_start_2
    array-length v6, v5

    #@2f
    .line 2542
    .local v6, "packageNum":I
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_5

    #@32
    .line 2543
    aget-object v7, v5, v1

    #@34
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_4

    #@3e
    .line 2544
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@40
    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    #@43
    .line 2545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@46
    move-result-wide v2

    #@47
    .line 2547
    .local v2, "ident":J
    :try_start_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@49
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4b
    .line 2548
    const/4 v10, 0x0

    #@4c
    .line 2547
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4f
    .line 2550
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@52
    monitor-exit v8

    #@53
    .line 2552
    return-void

    #@54
    .line 2536
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catch_0
    move-exception v0

    #@55
    .line 2537
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v7, "InputMethodManagerService"

    #@58
    const-string/jumbo v9, "Failed to get package infos"

    #@5b
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5e
    monitor-exit v8

    #@5f
    .line 2538
    return-void

    #@60
    .line 2549
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :catchall_0
    move-exception v7

    #@61
    .line 2550
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 2549
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@65
    .line 2530
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catchall_1
    move-exception v7

    #@66
    monitor-exit v8

    #@67
    throw v7

    #@68
    .line 2542
    .restart local v1    # "i":I
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@6a
    goto :goto_0

    #@6b
    .end local v1    # "i":I
    .end local v6    # "packageNum":I
    :cond_5
    monitor-exit v8

    #@6c
    .line 2557
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3514
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 3515
    return v5

    #@8
    .line 3517
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 3518
    if-eqz p1, :cond_1

    #@d
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 3519
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@13
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@1b
    .line 3520
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@1e
    move-result v2

    #@1f
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@22
    move-result v1

    #@23
    .line 3521
    .local v1, "subtypeId":I
    const/4 v2, -0x1

    #@24
    if-eq v1, v2, :cond_1

    #@26
    .line 3522
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@28
    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3523
    const/4 v2, 0x1

    #@2c
    monitor-exit v3

    #@2d
    return v2

    #@2e
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :cond_1
    monitor-exit v3

    #@2f
    .line 3526
    return v5

    #@30
    .line 3517
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/InputMethodManagerService$SessionState;

    #@0
    .prologue
    .line 2658
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2
    if-eq v1, p1, :cond_1

    #@4
    .line 2659
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@a
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 2662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@10
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@12
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@14
    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 2666
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1c
    .line 2667
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1e
    if-eqz v1, :cond_1

    #@20
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@22
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 2670
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@28
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@2a
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2c
    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@2e
    const/4 v3, 0x1

    #@2f
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@32
    .line 2657
    :cond_1
    :goto_1
    return-void

    #@33
    .line 2671
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@35
    .line 2663
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@36
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    .line 1735
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    .line 1737
    .local v0, "uid":I
    const-string/jumbo v1, "InputMethodManagerService"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Ignoring setImeWindowStatus due to an invalid token. uid:"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 1738
    const-string/jumbo v3, " token:"

    #@20
    .line 1737
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1739
    return-void

    #@30
    .line 1742
    .end local v0    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@32
    monitor-enter v2

    #@33
    .line 1743
    :try_start_0
    iput p2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@35
    .line 1744
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@37
    .line 1745
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v2

    #@3b
    .line 1734
    return-void

    #@3c
    .line 1742
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2342
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2343
    return-void

    #@7
    .line 2345
    :cond_0
    const/4 v0, -0x1

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@b
    .line 2341
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2351
    return-void

    #@7
    .line 2353
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2354
    if-eqz p3, :cond_1

    #@c
    .line 2356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@14
    .line 2357
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@17
    move-result v2

    #@18
    .line 2356
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@1b
    move-result v0

    #@1c
    .line 2355
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :goto_0
    monitor-exit v1

    #@20
    .line 2349
    return-void

    #@21
    .line 2359
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 2353
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3208
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 3209
    return v3

    #@8
    .line 3211
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 3212
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@d
    .line 3213
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@10
    .line 3212
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 3215
    new-instance v2, Ljava/lang/SecurityException;

    #@18
    .line 3216
    const-string/jumbo v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1b
    .line 3215
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 3211
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .line 3220
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-wide v0

    #@26
    .line 3222
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    move-result v2

    #@2a
    .line 3224
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    monitor-exit v3

    #@2e
    .line 3222
    return v2

    #@2f
    .line 3223
    :catchall_1
    move-exception v2

    #@30
    .line 3224
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 3223
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3231
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@a
    .line 3232
    .local v2, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_0

    #@c
    .line 3233
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Unknown id: "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v6

    #@28
    .line 3236
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2a
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@2d
    move-result-object v1

    #@2e
    .line 3239
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_3

    #@30
    .line 3240
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v4

    #@34
    .local v4, "pair$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_2

    #@3a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Landroid/util/Pair;

    #@40
    .line 3241
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@42
    check-cast v6, Ljava/lang/String;

    #@44
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_1

    #@4a
    .line 3244
    return v8

    #@4b
    .line 3247
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4d
    invoke-virtual {v6, p1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    #@50
    .line 3249
    return v7

    #@51
    .line 3251
    .end local v4    # "pair$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    .line 3252
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@58
    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_6

    #@5e
    .line 3255
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@60
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 3256
    .local v5, "selId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v6

    #@68
    if-eqz v6, :cond_4

    #@6a
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_5

    #@70
    .line 3261
    :cond_4
    :goto_0
    return v8

    #@71
    .line 3257
    :cond_5
    const-string/jumbo v6, "InputMethodManagerService"

    #@74
    const-string/jumbo v7, "Can\'t find new IME, unsetting the current input method."

    #@77
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 3258
    const-string/jumbo v6, ""

    #@7d
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@80
    goto :goto_0

    #@81
    .line 3265
    .end local v5    # "selId":Ljava/lang/String;
    :cond_6
    return v7
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    #@0
    .prologue
    .line 1935
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 1936
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_0

    #@a
    .line 1937
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v9, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v10, "Unknown id: "

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v9

    #@20
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v8

    #@24
    .line 1940
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@26
    if-eqz v8, :cond_1

    #@28
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@2a
    if-eqz v8, :cond_1

    #@2c
    .line 1943
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getFixedImeApps()Landroid/util/ArraySet;

    #@33
    move-result-object v8

    #@34
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@36
    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@38
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_1

    #@3e
    .line 1944
    return-void

    #@3f
    .line 1949
    :cond_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@41
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_7

    #@47
    .line 1950
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@4a
    move-result v7

    #@4b
    .line 1951
    .local v7, "subtypeCount":I
    if-gtz v7, :cond_2

    #@4d
    .line 1952
    return-void

    #@4e
    .line 1954
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@50
    .line 1956
    .local v6, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_4

    #@52
    if-ge p2, v7, :cond_4

    #@54
    .line 1957
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@57
    move-result-object v5

    #@58
    .line 1963
    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    if-eqz v5, :cond_3

    #@5a
    if-nez v6, :cond_5

    #@5c
    .line 1964
    :cond_3
    const-string/jumbo v8, "InputMethodManagerService"

    #@5f
    new-instance v9, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v10, "Illegal subtype state: old subtype = "

    #@67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    .line 1965
    const-string/jumbo v10, ", new subtype = "

    #@72
    .line 1964
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 1966
    return-void

    #@82
    .line 1961
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@85
    move-result-object v5

    #@86
    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    #@87
    .line 1968
    :cond_5
    if-eq v5, v6, :cond_6

    #@89
    .line 1969
    const/4 v8, 0x1

    #@8a
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@8d
    .line 1970
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@8f
    if-eqz v8, :cond_6

    #@91
    .line 1972
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@93
    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@95
    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@97
    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@9a
    .line 1973
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@9c
    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    .line 1979
    :cond_6
    :goto_1
    return-void

    #@a0
    .line 1974
    :catch_0
    move-exception v0

    #@a1
    .line 1975
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "InputMethodManagerService"

    #@a4
    const-string/jumbo v9, "Failed to call changeInputMethodSubtype"

    #@a7
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    goto :goto_1

    #@ab
    .line 1983
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeCount":I
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ae
    move-result-wide v2

    #@af
    .line 1987
    .local v2, "ident":J
    const/4 v8, 0x0

    #@b0
    :try_start_1
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@b3
    .line 1991
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@b5
    .line 1993
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@b8
    move-result v8

    #@b9
    if-eqz v8, :cond_8

    #@bb
    .line 1994
    new-instance v4, Landroid/content/Intent;

    #@bd
    const-string/jumbo v8, "android.intent.action.INPUT_METHOD_CHANGED"

    #@c0
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c3
    .line 1995
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    #@c5
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@c8
    .line 1996
    const-string/jumbo v8, "input_method_id"

    #@cb
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@ce
    .line 1997
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@d0
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@d2
    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@d5
    .line 1999
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d8
    .line 2001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@db
    .line 1934
    return-void

    #@dc
    .line 2000
    :catchall_0
    move-exception v8

    #@dd
    .line 2001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e0
    .line 2000
    throw v8
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2477
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 2478
    return v7

    #@8
    .line 2480
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 2481
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 2482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v1

    #@15
    .line 2483
    .local v1, "uid":I
    const-string/jumbo v2, "InputMethodManagerService"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Ignoring shouldOfferSwitchingToNextInputMethod due to an invalid token. uid:"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 2484
    const-string/jumbo v5, " token:"

    #@2b
    .line 2483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 2485
    return v7

    #@3c
    .line 2487
    .end local v1    # "uid":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@3e
    .line 2488
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@40
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@48
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4a
    const/4 v6, 0x0

    #@4b
    .line 2487
    invoke-virtual {v4, v6, v2, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    move-result-object v0

    #@4f
    .line 2489
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    #@51
    monitor-exit v3

    #@52
    .line 2490
    return v7

    #@53
    .line 2492
    :cond_2
    const/4 v2, 0x1

    #@54
    monitor-exit v3

    #@55
    return v2

    #@56
    .line 2480
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 2039
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4
    .line 2040
    and-int/lit8 v1, p1, 0x1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2041
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@a
    .line 2043
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 2044
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@10
    .line 2045
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@12
    .line 2048
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@14
    if-nez v1, :cond_2

    #@16
    .line 2049
    return v9

    #@17
    .line 2052
    :cond_2
    const/4 v0, 0x0

    #@18
    .line 2053
    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1a
    if-eqz v1, :cond_6

    #@1c
    .line 2055
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1e
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@20
    .line 2056
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    #@23
    move-result v3

    #@24
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@26
    const/16 v5, 0x3fc

    #@28
    .line 2055
    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@2f
    .line 2058
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@31
    .line 2059
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@33
    if-eqz v1, :cond_3

    #@35
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@37
    if-eqz v1, :cond_5

    #@39
    .line 2066
    :cond_3
    :goto_0
    const/4 v0, 0x1

    #@3a
    .line 2086
    :cond_4
    :goto_1
    return v0

    #@3b
    .line 2061
    :cond_5
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@3d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@3f
    const v3, 0xc000001

    #@42
    .line 2060
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@45
    .line 2064
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@47
    goto :goto_0

    #@48
    .line 2067
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@4a
    if-eqz v1, :cond_4

    #@4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4f
    move-result-wide v2

    #@50
    .line 2068
    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@52
    const-wide/16 v6, 0xbb8

    #@54
    add-long/2addr v4, v6

    #@55
    .line 2067
    cmp-long v1, v2, v4

    #@57
    if-ltz v1, :cond_4

    #@59
    .line 2073
    const/4 v1, 0x3

    #@5a
    new-array v1, v1, [Ljava/lang/Object;

    #@5c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5e
    aput-object v2, v1, v9

    #@60
    .line 2074
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@63
    move-result-wide v2

    #@64
    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@66
    sub-long/2addr v2, v4

    #@67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6a
    move-result-object v2

    #@6b
    aput-object v2, v1, v8

    #@6d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v2

    #@71
    const/4 v3, 0x2

    #@72
    aput-object v2, v1, v3

    #@74
    .line 2073
    const/16 v2, 0x7d00

    #@76
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@79
    .line 2075
    const-string/jumbo v1, "InputMethodManagerService"

    #@7c
    const-string/jumbo v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    #@7f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 2076
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@84
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@87
    .line 2077
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@89
    const v2, 0x40000001    # 2.0000002f

    #@8c
    invoke-direct {p0, v1, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@8f
    goto :goto_1
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2367
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2368
    return-void

    #@7
    .line 2370
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@c
    if-eqz v0, :cond_1

    #@e
    if-nez p1, :cond_3

    #@10
    .line 2373
    :cond_1
    :goto_0
    const-string/jumbo v0, "InputMethodManagerService"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Ignoring showInputMethodAndSubtypeEnablerFromClient of: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2375
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2e
    .line 2376
    const/4 v3, 0x2

    #@2f
    .line 2375
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit v1

    #@37
    .line 2366
    return-void

    #@38
    .line 2372
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v0

    #@40
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result-object v2

    #@44
    if-eq v0, v2, :cond_2

    #@46
    goto :goto_0

    #@47
    .line 2370
    :catchall_0
    move-exception v0

    #@48
    monitor-exit v1

    #@49
    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    #@0
    .prologue
    .line 2323
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2324
    return-void

    #@7
    .line 2326
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@c
    if-eqz v0, :cond_1

    #@e
    if-nez p1, :cond_3

    #@10
    .line 2329
    :cond_1
    :goto_0
    const-string/jumbo v0, "InputMethodManagerService"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Ignoring showInputMethodPickerFromClient of uid "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 2330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@22
    move-result v3

    #@23
    .line 2329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 2330
    const-string/jumbo v3, ": "

    #@2a
    .line 2329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 2335
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@3b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@3d
    .line 2336
    const/4 v3, 0x1

    #@3e
    .line 2335
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v1

    #@46
    .line 2322
    return-void

    #@47
    .line 2328
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@49
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@4b
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v0

    #@4f
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    move-result-object v2

    #@53
    if-eq v0, v2, :cond_2

    #@55
    goto :goto_0

    #@56
    .line 2326
    :catchall_0
    move-exception v0

    #@57
    monitor-exit v1

    #@58
    throw v0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2638
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2639
    return-void

    #@7
    .line 2641
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 2642
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    .line 2643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 2644
    .local v2, "uid":I
    const-string/jumbo v3, "InputMethodManagerService"

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "Ignoring showMySoftInput due to an invalid token. uid:"

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 2645
    const-string/jumbo v6, " token:"

    #@2a
    .line 2644
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@39
    monitor-exit v4

    #@3a
    .line 2646
    return-void

    #@3b
    .line 2648
    .end local v2    # "uid":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result-wide v0

    #@3f
    .line 2650
    .local v0, "ident":J
    const/4 v3, 0x0

    #@40
    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 2652
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 2637
    return-void

    #@48
    .line 2651
    :catchall_0
    move-exception v3

    #@49
    .line 2652
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2651
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 2641
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    #@4e
    monitor-exit v4

    #@4f
    throw v3
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2008
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2009
    return v8

    #@8
    .line 2011
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    .line 2012
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 2014
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 2015
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v4, :cond_1

    #@17
    if-nez p1, :cond_2

    #@19
    .line 2021
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@1b
    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_3

    #@21
    .line 2022
    const-string/jumbo v4, "InputMethodManagerService"

    #@24
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v7, "Ignoring showSoftInput of uid "

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    const-string/jumbo v7, ": "

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@47
    .line 2034
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2023
    return v8

    #@4b
    .line 2016
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4d
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@4f
    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@52
    move-result-object v4

    #@53
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@56
    move-result-object v6

    #@57
    if-ne v4, v6, :cond_1

    #@59
    .line 2031
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5c
    move-result v4

    #@5d
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5e
    .line 2034
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 2031
    return v4

    #@62
    .line 2025
    :catch_0
    move-exception v0

    #@63
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@64
    .line 2034
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 2026
    return v8

    #@68
    .line 2014
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@69
    :try_start_7
    monitor-exit v5

    #@6a
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@6b
    .line 2033
    :catchall_1
    move-exception v4

    #@6c
    .line 2034
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 2033
    throw v4
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    #@0
    .prologue
    .line 1465
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1466
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 1468
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 1469
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v0

    #@f
    .line 1471
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v2

    #@13
    .line 1473
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    monitor-exit v3

    #@17
    .line 1471
    return-object v2

    #@18
    .line 1472
    :catchall_0
    move-exception v2

    #@19
    .line 1473
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1472
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d
    .line 1468
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 1415
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1416
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@9
    return-object v0

    #@a
    .line 1419
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1422
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@10
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@14
    .line 1423
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@16
    move-object v2, v1

    #@17
    .line 1422
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@1a
    return-object v0

    #@1b
    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    #@25
    .line 1427
    .local v7, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v7, :cond_2

    #@27
    .line 1428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "Unknown id: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 1431
    :cond_2
    invoke-virtual {p0, v8, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    #@46
    .line 1433
    new-instance v0, Landroid/content/Intent;

    #@48
    const-string/jumbo v2, "android.view.InputMethod"

    #@4b
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4e
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@50
    .line 1434
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@52
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@59
    .line 1435
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@5b
    const-string/jumbo v2, "android.intent.extra.client_label"

    #@5e
    .line 1436
    const v3, 0x1040429

    #@61
    .line 1435
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@64
    .line 1437
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@66
    const-string/jumbo v2, "android.intent.extra.client_intent"

    #@69
    .line 1438
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@6b
    new-instance v4, Landroid/content/Intent;

    #@6d
    const-string/jumbo v5, "android.settings.INPUT_METHOD_SETTINGS"

    #@70
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@73
    .line 1437
    invoke-static {v3, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@7a
    .line 1439
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@7c
    const v2, 0x60000005

    #@7f
    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_3

    #@85
    .line 1442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@88
    move-result-wide v2

    #@89
    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@8b
    .line 1443
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@8d
    .line 1444
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@93
    .line 1445
    new-instance v0, Landroid/os/Binder;

    #@95
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@98
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@9a
    .line 1447
    :try_start_0
    const-string/jumbo v0, "InputMethodManagerService"

    #@9d
    new-instance v2, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v3, "Adding window token: "

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 1448
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@b8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@ba
    .line 1449
    const/16 v3, 0x7db

    #@bc
    .line 1448
    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    .line 1452
    :goto_0
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@c1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@c3
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@c5
    .line 1453
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@c7
    move-object v2, v1

    #@c8
    .line 1452
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@cb
    return-object v0

    #@cc
    .line 1455
    :cond_3
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@ce
    .line 1456
    const-string/jumbo v0, "InputMethodManagerService"

    #@d1
    new-instance v2, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v3, "Failure connecting to input method service: "

    #@d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v2

    #@dd
    .line 1457
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@df
    .line 1456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 1459
    return-object v1

    #@eb
    .line 1450
    :catch_0
    move-exception v6

    #@ec
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1314
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1315
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@7
    return-object v2

    #@8
    .line 1318
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@a
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    #@14
    .line 1319
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v0, :cond_1

    #@16
    .line 1320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "unknown client "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 1321
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v4

    #@28
    .line 1320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 1325
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@36
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@38
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@3b
    move-result v2

    #@3c
    if-nez v2, :cond_2

    #@3e
    .line 1331
    const-string/jumbo v2, "InputMethodManagerService"

    #@41
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "Starting input on non-focused client "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    iget-object v4, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 1332
    const-string/jumbo v4, " (uid="

    #@56
    .line 1331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 1332
    iget v4, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@5c
    .line 1331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 1332
    const-string/jumbo v4, " pid="

    #@63
    .line 1331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    .line 1332
    iget v4, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@69
    .line 1331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    .line 1332
    const-string/jumbo v4, ")"

    #@70
    .line 1331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7b
    .line 1333
    return-object v5

    #@7c
    .line 1335
    :catch_0
    move-exception v1

    #@7d
    .line 1338
    :cond_2
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@80
    move-result-object v2

    #@81
    return-object v2
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 10
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 1344
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1345
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@9
    return-object v0

    #@a
    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@c
    iget v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@e
    .line 1349
    iget-object v5, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@10
    .line 1348
    invoke-static {v0, v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1350
    const-string/jumbo v0, "InputMethodManagerService"

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Rejecting this client as it reported an invalid package name. uid="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 1351
    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@27
    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1351
    const-string/jumbo v2, " package="

    #@2e
    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 1351
    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@34
    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1352
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@41
    return-object v0

    #@42
    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@44
    if-eq v0, p1, :cond_2

    #@46
    .line 1357
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    #@49
    move-result v0

    #@4a
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    #@4c
    .line 1360
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V

    #@4f
    .line 1365
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 1366
    iget-object v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@55
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@57
    .line 1367
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@59
    if-eqz v0, :cond_4

    #@5b
    move v0, v2

    #@5c
    :goto_0
    const/16 v6, 0xbcc

    #@5e
    .line 1366
    invoke-virtual {v5, v6, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {p0, v4, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@65
    .line 1372
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@67
    add-int/lit8 v0, v0, 0x1

    #@69
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@6b
    .line 1373
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@6d
    if-gtz v0, :cond_3

    #@6f
    iput v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@71
    .line 1374
    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@73
    .line 1375
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@75
    .line 1376
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@77
    .line 1379
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@79
    if-eqz v0, :cond_9

    #@7b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@7d
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@7f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_9

    #@85
    .line 1380
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@87
    if-eqz v0, :cond_6

    #@89
    .line 1384
    and-int/lit16 v0, p4, 0x100

    #@8b
    if-eqz v0, :cond_5

    #@8d
    .line 1383
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    #@90
    move-result-object v0

    #@91
    return-object v0

    #@92
    :cond_4
    move v0, v3

    #@93
    .line 1367
    goto :goto_0

    #@94
    :cond_5
    move v2, v3

    #@95
    .line 1384
    goto :goto_1

    #@96
    .line 1386
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@98
    if-eqz v0, :cond_9

    #@9a
    .line 1387
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@9c
    if-eqz v0, :cond_7

    #@9e
    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@a1
    .line 1391
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@a3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@a5
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@a7
    .line 1392
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@a9
    move-object v2, v1

    #@aa
    .line 1391
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@ad
    return-object v0

    #@ae
    .line 1393
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b1
    move-result-wide v4

    #@b2
    .line 1394
    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@b4
    const-wide/16 v8, 0xbb8

    #@b6
    add-long/2addr v6, v8

    #@b7
    .line 1393
    cmp-long v0, v4, v6

    #@b9
    if-gez v0, :cond_8

    #@bb
    .line 1402
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@bd
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@bf
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@c1
    .line 1403
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@c3
    move-object v2, v1

    #@c4
    .line 1402
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@c7
    return-object v0

    #@c8
    .line 1405
    :cond_8
    const/4 v0, 0x3

    #@c9
    new-array v0, v0, [Ljava/lang/Object;

    #@cb
    .line 1406
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@cd
    aput-object v1, v0, v3

    #@cf
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d2
    move-result-wide v4

    #@d3
    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@d5
    sub-long/2addr v4, v6

    #@d6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d9
    move-result-object v1

    #@da
    aput-object v1, v0, v2

    #@dc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v1

    #@e0
    const/4 v2, 0x2

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 1405
    const/16 v1, 0x7d00

    #@e5
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@e8
    .line 1411
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;

    #@eb
    move-result-object v0

    #@ec
    return-object v0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2382
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v17

    #@4
    if-nez v17, :cond_0

    #@6
    .line 2383
    const/16 v17, 0x0

    #@8
    return v17

    #@9
    .line 2385
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    move-object/from16 v18, v0

    #@f
    monitor-enter v18

    #@10
    .line 2386
    :try_start_0
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14
    move-object/from16 v17, v0

    #@16
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    #@19
    move-result-object v11

    #@1a
    .line 2388
    .local v11, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    #@1c
    .line 2389
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@20
    move-object/from16 v17, v0

    #@22
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@24
    move-object/from16 v19, v0

    #@26
    move-object/from16 v0, v17

    #@28
    move-object/from16 v1, v19

    #@2a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v12

    #@2e
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@30
    .line 2393
    :goto_0
    const/16 v16, 0x0

    #@32
    .line 2394
    .local v16, "targetLastImiId":Ljava/lang/String;
    const/4 v15, -0x1

    #@33
    .line 2395
    .local v15, "subtypeId":I
    if-eqz v11, :cond_2

    #@35
    if-eqz v12, :cond_2

    #@37
    .line 2396
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@3a
    move-result-object v17

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3f
    move-object/from16 v19, v0

    #@41
    move-object/from16 v0, v17

    #@43
    move-object/from16 v1, v19

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v9

    #@49
    .line 2397
    .local v9, "imiIdIsSame":Z
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@4b
    move-object/from16 v17, v0

    #@4d
    check-cast v17, Ljava/lang/String;

    #@4f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@52
    move-result-object v17

    #@53
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v13

    #@57
    .line 2398
    .local v13, "lastSubtypeHash":I
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@5b
    move-object/from16 v17, v0

    #@5d
    if-nez v17, :cond_5

    #@5f
    const/4 v5, -0x1

    #@60
    .line 2402
    .local v5, "currentSubtypeHash":I
    :goto_1
    if-eqz v9, :cond_1

    #@62
    if-eq v13, v5, :cond_2

    #@64
    .line 2403
    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@66
    move-object/from16 v16, v0

    #@68
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    #@6a
    .line 2404
    .local v16, "targetLastImiId":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@6d
    move-result v15

    #@6e
    .line 2408
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@71
    move-result v17

    #@72
    if-eqz v17, :cond_3

    #@74
    .line 2409
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@78
    move-object/from16 v17, v0

    #@7a
    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    #@7d
    move-result v17

    #@7e
    if-eqz v17, :cond_6

    #@80
    .line 2439
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@83
    move-result v17

    #@84
    if-nez v17, :cond_9

    #@86
    .line 2444
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, p1

    #@8a
    move-object/from16 v2, v16

    #@8c
    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    .line 2445
    const/16 v17, 0x1

    #@91
    monitor-exit v18

    #@92
    return v17

    #@93
    .line 2391
    .end local v15    # "subtypeId":I
    :cond_4
    const/4 v12, 0x0

    #@94
    .local v12, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    #@95
    .line 2399
    .end local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v9    # "imiIdIsSame":Z
    .restart local v13    # "lastSubtypeHash":I
    .restart local v15    # "subtypeId":I
    .local v16, "targetLastImiId":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@99
    move-object/from16 v17, v0

    #@9b
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@9e
    move-result v5

    #@9f
    .restart local v5    # "currentSubtypeHash":I
    goto :goto_1

    #@a0
    .line 2413
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@a4
    move-object/from16 v17, v0

    #@a6
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@a9
    move-result-object v6

    #@aa
    .line 2414
    .local v6, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_3

    #@ac
    .line 2415
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@af
    move-result v4

    #@b0
    .line 2416
    .local v4, "N":I
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@b4
    move-object/from16 v17, v0

    #@b6
    if-nez v17, :cond_8

    #@b8
    .line 2417
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@bc
    move-object/from16 v17, v0

    #@be
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@c1
    move-result-object v17

    #@c2
    move-object/from16 v0, v17

    #@c4
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@c6
    move-object/from16 v17, v0

    #@c8
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@cb
    move-result-object v14

    #@cc
    .line 2419
    .local v14, "locale":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    #@cd
    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_3

    #@cf
    .line 2420
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d2
    move-result-object v8

    #@d3
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    #@d5
    .line 2421
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@d8
    move-result v17

    #@d9
    if-lez v17, :cond_7

    #@db
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@de
    move-result v17

    #@df
    if-eqz v17, :cond_7

    #@e1
    .line 2423
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@e5
    move-object/from16 v17, v0

    #@e7
    .line 2424
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@ea
    move-result-object v19

    #@eb
    .line 2425
    const-string/jumbo v20, "keyboard"

    #@ee
    const/16 v21, 0x1

    #@f0
    .line 2423
    move-object/from16 v0, v17

    #@f2
    move-object/from16 v1, v19

    #@f4
    move-object/from16 v2, v20

    #@f6
    move/from16 v3, v21

    #@f8
    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@fb
    move-result-object v10

    #@fc
    .line 2426
    .local v10, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_7

    #@fe
    .line 2427
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@101
    move-result-object v16

    #@102
    .line 2429
    .local v16, "targetLastImiId":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@105
    move-result v17

    #@106
    .line 2428
    move/from16 v0, v17

    #@108
    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@10b
    move-result v15

    #@10c
    .line 2430
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@10f
    move-result-object v17

    #@110
    move-object/from16 v0, v17

    #@112
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v17

    #@116
    if-nez v17, :cond_3

    #@118
    .line 2419
    .end local v10    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@11a
    goto :goto_3

    #@11b
    .line 2418
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@11f
    move-object/from16 v17, v0

    #@121
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@124
    move-result-object v14

    #@125
    .restart local v14    # "locale":Ljava/lang/String;
    goto :goto_2

    #@126
    .line 2447
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v14    # "locale":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    #@128
    monitor-exit v18

    #@129
    return v17

    #@12a
    .line 2385
    .end local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "subtypeId":I
    :catchall_0
    move-exception v17

    #@12b
    monitor-exit v18

    #@12c
    throw v17
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2454
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 2455
    return v6

    #@8
    .line 2457
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 2458
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 2459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v1

    #@15
    .line 2460
    .local v1, "uid":I
    const-string/jumbo v2, "InputMethodManagerService"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Ignoring switchToNextInputMethod due to an invalid token. uid:"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 2461
    const-string/jumbo v5, " token:"

    #@2b
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 2462
    return v6

    #@3c
    .line 2464
    .end local v1    # "uid":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@3e
    .line 2465
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@40
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@48
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4a
    .line 2464
    invoke-virtual {v4, p2, v2, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    move-result-object v0

    #@4e
    .line 2466
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    #@50
    monitor-exit v3

    #@51
    .line 2467
    return v6

    #@52
    .line 2469
    :cond_2
    :try_start_2
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@54
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 2470
    iget v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@5a
    .line 2469
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 2471
    const/4 v2, 0x1

    #@5e
    monitor-exit v3

    #@5f
    return v2

    #@60
    .line 2457
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    #@61
    monitor-exit v3

    #@62
    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 7
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1064
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v4

    #@5
    .line 1068
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@7
    if-nez v1, :cond_2

    #@9
    .line 1069
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@c
    .line 1071
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v5, "keyguard"

    #@11
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/app/KeyguardManager;

    #@17
    .line 1070
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@19
    .line 1073
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1b
    const-string/jumbo v5, "notification"

    #@1e
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    .line 1072
    check-cast v1, Landroid/app/NotificationManager;

    #@24
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@26
    .line 1074
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@28
    .line 1075
    const-string/jumbo v1, "ime"

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-virtual {p1, v1, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    #@2f
    .line 1076
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@31
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@33
    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@35
    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@38
    .line 1077
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@3a
    .line 1078
    const v5, 0x1120007

    #@3d
    .line 1077
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@40
    move-result v1

    #@41
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@43
    .line 1079
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@45
    if-eqz v1, :cond_0

    #@47
    .line 1080
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@49
    .line 1081
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@4b
    .line 1080
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    #@4e
    .line 1083
    :cond_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@50
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@52
    .line 1084
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@54
    if-eqz v1, :cond_3

    #@56
    move v1, v2

    #@57
    .line 1083
    :goto_0
    invoke-virtual {p0, v5, v6, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    #@5a
    .line 1085
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@5c
    if-nez v1, :cond_1

    #@5e
    .line 1086
    const-string/jumbo v1, "InputMethodManagerService"

    #@61
    const-string/jumbo v2, "Reset the default IME as \"Resource\" is ready here."

    #@64
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 1087
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    #@6a
    .line 1088
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@6c
    .line 1089
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@6e
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@71
    move-result-object v2

    #@72
    .line 1090
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@74
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@77
    move-result v3

    #@78
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@7a
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    .line 1088
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    #@81
    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@83
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@86
    move-result-object v1

    #@87
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@89
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8b
    .line 1094
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    :cond_2
    :goto_1
    monitor-exit v4

    #@8f
    .line 1063
    return-void

    #@90
    :cond_3
    move v1, v3

    #@91
    .line 1084
    goto :goto_0

    #@92
    .line 1095
    :catch_0
    move-exception v0

    #@93
    .line 1096
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v1, "InputMethodManagerService"

    #@96
    const-string/jumbo v2, "Unexpected exception"

    #@99
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9c
    goto :goto_1

    #@9d
    .line 1064
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@9e
    monitor-exit v4

    #@9f
    throw v1
.end method

.method unbindCurrentClientLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1245
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1248
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1249
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@c
    .line 1250
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1251
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@12
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@14
    .line 1252
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@16
    const/16 v3, 0x3e8

    #@18
    .line 1251
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@1f
    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@21
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@23
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@25
    .line 1257
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@27
    const/16 v3, 0xbcc

    #@29
    .line 1256
    invoke-virtual {v1, v3, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@30
    .line 1258
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@32
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@34
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@36
    .line 1259
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@38
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    const/16 v4, 0xbb8

    #@3e
    .line 1258
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@45
    .line 1260
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@47
    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@49
    .line 1261
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4b
    .line 1263
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    #@4e
    .line 1244
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked(ZZ)V
    .locals 6
    .param p1, "reportToClient"    # Z
    .param p2, "savePosition"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1527
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1528
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@d
    .line 1529
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@f
    .line 1532
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1533
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@18
    .line 1534
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@1a
    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 1540
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@20
    and-int/lit8 v1, v1, 0x1

    #@22
    if-eqz v1, :cond_2

    #@24
    if-eqz p2, :cond_2

    #@26
    .line 1542
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->saveLastInputMethodWindowForTransition()V

    #@2b
    .line 1544
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@2d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@2f
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 1547
    :goto_0
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@34
    .line 1550
    :cond_3
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@36
    .line 1551
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    #@39
    .line 1553
    if-eqz p1, :cond_4

    #@3b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3d
    if-eqz v1, :cond_4

    #@3f
    .line 1554
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@41
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@43
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@45
    .line 1555
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@47
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@49
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@4b
    const/16 v5, 0xbb8

    #@4d
    .line 1554
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@54
    .line 1526
    :cond_4
    return-void

    #@55
    .line 1545
    :catch_0
    move-exception v0

    #@56
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateCurrentProfileIds()V
    .locals 5

    #@0
    .prologue
    .line 1040
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@b
    move-result v4

    #@c
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    .line 1041
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@13
    move-result v3

    #@14
    new-array v0, v3, [I

    #@16
    .line 1042
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@18
    if-ge v1, v3, :cond_0

    #@1a
    .line 1043
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/content/pm/UserInfo;

    #@20
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    #@22
    aput v3, v0, v1

    #@24
    .line 1042
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1045
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@29
    invoke-virtual {v3, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    #@2c
    .line 1038
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    #@0
    .prologue
    .line 1862
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    #@3
    .line 1863
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    #@6
    .line 1861
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 13
    .param p1, "enabledMayChange"    # Z

    #@0
    .prologue
    .line 1867
    if-eqz p1, :cond_1

    #@2
    .line 1868
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    #@7
    move-result-object v9

    #@8
    .line 1869
    .local v9, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v10, 0x0

    #@9
    .local v10, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@c
    move-result v0

    #@d
    if-ge v10, v0, :cond_1

    #@f
    .line 1872
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v12

    #@13
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@15
    .line 1874
    .local v12, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@17
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1876
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1d
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@20
    move-result v2

    #@21
    .line 1875
    const v3, 0x8000

    #@24
    .line 1874
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@27
    move-result-object v6

    #@28
    .line 1877
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    #@2a
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@2c
    .line 1878
    const/4 v1, 0x4

    #@2d
    .line 1877
    if-ne v0, v1, :cond_0

    #@2f
    .line 1883
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@31
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 1885
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@37
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@3a
    move-result v4

    #@3b
    .line 1886
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1884
    const/4 v2, 0x0

    #@42
    .line 1885
    const/4 v3, 0x1

    #@43
    .line 1883
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@46
    .line 1869
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1896
    .end local v9    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v10    # "i":I
    .end local v12    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4b
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@4e
    move-result-object v11

    #@4f
    .line 1898
    .local v11, "id":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_2

    #@55
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_2

    #@5b
    .line 1899
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5d
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@60
    move-result-object v11

    #@61
    .line 1901
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_3

    #@67
    .line 1903
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@69
    invoke-virtual {v0, v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    #@6c
    move-result v0

    #@6d
    invoke-virtual {p0, v11, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@70
    .line 1909
    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@72
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@75
    .line 1919
    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@77
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@79
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    #@7c
    .line 1866
    return-void

    #@7d
    .line 1904
    :catch_0
    move-exception v8

    #@7e
    .line 1905
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "InputMethodManagerService"

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v2, "Unknown input method from prefs: "

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@98
    .line 1906
    const/4 v0, 0x0

    #@99
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@9b
    .line 1907
    const/4 v0, 0x1

    #@9c
    const/4 v1, 0x0

    #@9d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    #@a0
    goto :goto_2

    #@a1
    .line 1912
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v0, 0x0

    #@a2
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@a4
    .line 1913
    const/4 v0, 0x1

    #@a5
    const/4 v1, 0x0

    #@a6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    #@a9
    goto :goto_3

    #@aa
    .line 1888
    .end local v11    # "id":Ljava/lang/String;
    .restart local v9    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v10    # "i":I
    .restart local v12    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :catch_1
    move-exception v7

    #@ab
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1924
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    #@5
    move-result v1

    #@6
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@8
    .line 1925
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1926
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1927
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@12
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    #@15
    move-result v1

    #@16
    .line 1925
    if-eqz v1, :cond_0

    #@18
    .line 1928
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@1a
    .line 1929
    const v2, 0x102034c

    #@1d
    .line 1928
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/widget/Switch;

    #@23
    .line 1930
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    #@28
    .line 1923
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    #@0
    .prologue
    .line 1632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 1634
    .local v8, "ident":J
    :try_start_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@6
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1635
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v11

    #@11
    .line 1637
    .local v11, "uid":I
    const-string/jumbo v0, "InputMethodManagerService"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Ignoring updateStatusIcon due to an invalid token. uid:"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1638
    const-string/jumbo v2, " token:"

    #@27
    .line 1637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    .line 1667
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1639
    return-void

    #@3b
    .line 1641
    .end local v11    # "uid":I
    :cond_0
    if-nez p3, :cond_2

    #@3d
    .line 1643
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1644
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@43
    const-string/jumbo v1, "ime"

    #@46
    const/4 v2, 0x0

    #@47
    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4b
    .line 1667
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 1631
    return-void

    #@4f
    .line 1646
    :cond_2
    if-eqz p2, :cond_1

    #@51
    .line 1648
    const/4 v6, 0x0

    #@52
    .line 1651
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@57
    move-result-object v10

    #@58
    .line 1653
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@5a
    .line 1654
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5c
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@5f
    move-result v1

    #@60
    .line 1653
    const/4 v2, 0x0

    #@61
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@64
    move-result-object v0

    #@65
    .line 1652
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@68
    move-result-object v6

    #@69
    .line 1658
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@6b
    if-eqz v0, :cond_1

    #@6d
    .line 1659
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@6f
    const-string/jumbo v1, "ime"

    #@72
    .line 1660
    if-eqz v6, :cond_3

    #@74
    .line 1661
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    .line 1659
    :goto_2
    const/4 v4, 0x0

    #@79
    move-object v2, p2

    #@7a
    move/from16 v3, p3

    #@7c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    #@7f
    .line 1662
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@81
    const-string/jumbo v1, "ime"

    #@84
    const/4 v2, 0x1

    #@85
    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@88
    goto :goto_0

    #@89
    .line 1634
    :catchall_0
    move-exception v0

    #@8a
    :try_start_7
    monitor-exit v12

    #@8b
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@8c
    .line 1666
    :catchall_1
    move-exception v0

    #@8d
    .line 1667
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@90
    .line 1666
    throw v0

    #@91
    .line 1661
    :cond_3
    const/4 v5, 0x0

    #@92
    goto :goto_2

    #@93
    .line 1655
    .restart local v6    # "contentDescription":Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    #@94
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 17
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;

    #@0
    .prologue
    .line 2172
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v4

    #@4
    .line 2174
    .local v4, "calledFromValidUser":Z
    const/4 v12, 0x0

    #@5
    .line 2175
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v10

    #@9
    .line 2177
    .local v10, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 2183
    :try_start_1
    move-object/from16 v0, p0

    #@10
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@12
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v15

    #@16
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1c
    .line 2184
    .local v5, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v5, :cond_0

    #@1e
    .line 2185
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v15, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v16, "unknown client "

    #@28
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v15

    #@2c
    .line 2186
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v16

    #@30
    .line 2185
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v15

    #@34
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v15

    #@38
    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 2177
    .end local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :catchall_0
    move-exception v13

    #@3d
    :try_start_2
    monitor-exit v14

    #@3e
    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3f
    .line 2313
    :catchall_1
    move-exception v13

    #@40
    .line 2314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 2313
    throw v13

    #@44
    .line 2190
    .restart local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    #@46
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@48
    iget-object v15, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@4a
    invoke-interface {v13, v15}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@4d
    move-result v13

    #@4e
    if-nez v13, :cond_1

    #@50
    .line 2196
    const-string/jumbo v13, "InputMethodManagerService"

    #@53
    new-instance v15, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v16, "Focus gain on non-focused client "

    #@5b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v15

    #@5f
    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@61
    move-object/from16 v16, v0

    #@63
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v15

    #@67
    .line 2197
    const-string/jumbo v16, " (uid="

    #@6a
    .line 2196
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v15

    #@6e
    .line 2197
    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@70
    move/from16 v16, v0

    #@72
    .line 2196
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v15

    #@76
    .line 2197
    const-string/jumbo v16, " pid="

    #@79
    .line 2196
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v15

    #@7d
    .line 2197
    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@7f
    move/from16 v16, v0

    #@81
    .line 2196
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v15

    #@85
    .line 2197
    const-string/jumbo v16, ")"

    #@88
    .line 2196
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v15

    #@8c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v15

    #@90
    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@94
    .line 2198
    const/4 v13, 0x0

    #@95
    .line 2314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@98
    .line 2198
    return-object v13

    #@99
    .line 2200
    :catch_0
    move-exception v8

    #@9a
    .line 2203
    :cond_1
    if-nez v4, :cond_2

    #@9c
    .line 2204
    :try_start_5
    const-string/jumbo v13, "InputMethodManagerService"

    #@9f
    const-string/jumbo v15, "A background user is requesting window. Hiding IME."

    #@a2
    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 2205
    const-string/jumbo v13, "InputMethodManagerService"

    #@a8
    const-string/jumbo v15, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    #@ab
    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 2207
    const/4 v13, 0x0

    #@af
    const/4 v15, 0x0

    #@b0
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b5
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b6
    .line 2208
    const/4 v13, 0x0

    #@b7
    .line 2314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 2208
    return-object v13

    #@bb
    .line 2211
    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    #@bd
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@bf
    move-object/from16 v0, p2

    #@c1
    if-ne v13, v0, :cond_4

    #@c3
    .line 2212
    const-string/jumbo v13, "InputMethodManagerService"

    #@c6
    new-instance v15, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v16, "Window already focused, ignoring focus gain of: "

    #@ce
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v15

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v15

    #@d8
    .line 2213
    const-string/jumbo v16, " attribute="

    #@db
    .line 2212
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v15

    #@df
    move-object/from16 v0, p6

    #@e1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v15

    #@e5
    .line 2213
    const-string/jumbo v16, ", token = "

    #@e8
    .line 2212
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v15

    #@ec
    move-object/from16 v0, p2

    #@ee
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v15

    #@f2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v15

    #@f6
    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    .line 2214
    if-eqz p6, :cond_3

    #@fb
    .line 2215
    move-object/from16 v0, p0

    #@fd
    move-object/from16 v1, p7

    #@ff
    move-object/from16 v2, p6

    #@101
    move/from16 v3, p3

    #@103
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@106
    move-result-object v13

    #@107
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@108
    .line 2314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10b
    .line 2215
    return-object v13

    #@10c
    :cond_3
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@10d
    .line 2218
    const/4 v13, 0x0

    #@10e
    .line 2314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@111
    .line 2218
    return-object v13

    #@112
    .line 2220
    :cond_4
    :try_start_a
    move-object/from16 v0, p2

    #@114
    move-object/from16 v1, p0

    #@116
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@118
    .line 2230
    move/from16 v0, p4

    #@11a
    and-int/lit16 v13, v0, 0xf0

    #@11c
    .line 2231
    const/16 v15, 0x10

    #@11e
    .line 2230
    if-eq v13, v15, :cond_7

    #@120
    .line 2232
    move-object/from16 v0, p0

    #@122
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@124
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@127
    move-result-object v13

    #@128
    .line 2233
    const/4 v15, 0x3

    #@129
    .line 2232
    invoke-virtual {v13, v15}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    #@12c
    move-result v7

    #@12d
    .line 2235
    :goto_0
    and-int/lit8 v13, p3, 0x2

    #@12f
    if-eqz v13, :cond_8

    #@131
    const/4 v9, 0x1

    #@132
    .line 2241
    .local v9, "isTextEditor":Z
    :goto_1
    const/4 v6, 0x0

    #@133
    .line 2243
    .local v6, "didStart":Z
    and-int/lit8 v13, p4, 0xf

    #@135
    packed-switch v13, :pswitch_data_0

    #@138
    .line 2308
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_5
    :goto_2
    :pswitch_0
    if-nez v6, :cond_6

    #@13a
    if-eqz p6, :cond_6

    #@13c
    .line 2309
    move-object/from16 v0, p0

    #@13e
    move-object/from16 v1, p7

    #@140
    move-object/from16 v2, p6

    #@142
    move/from16 v3, p3

    #@144
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@147
    move-result-object v12

    #@148
    :cond_6
    :try_start_b
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@149
    .line 2314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14c
    .line 2317
    return-object v12

    #@14d
    .line 2230
    .end local v6    # "didStart":Z
    .end local v9    # "isTextEditor":Z
    .restart local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_7
    const/4 v7, 0x1

    #@14e
    .local v7, "doAutoShow":Z
    goto :goto_0

    #@14f
    .line 2235
    .end local v7    # "doAutoShow":Z
    :cond_8
    const/4 v9, 0x0

    #@150
    .restart local v9    # "isTextEditor":Z
    goto :goto_1

    #@151
    .line 2245
    .restart local v6    # "didStart":Z
    :pswitch_1
    if-eqz v9, :cond_a

    #@153
    if-eqz v7, :cond_a

    #@155
    .line 2253
    if-eqz v9, :cond_5

    #@157
    if-eqz v7, :cond_5

    #@159
    move/from16 v0, p4

    #@15b
    and-int/lit16 v13, v0, 0x100

    #@15d
    if-eqz v13, :cond_5

    #@15f
    .line 2263
    if-eqz p6, :cond_9

    #@161
    .line 2264
    :try_start_c
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, p7

    #@165
    move-object/from16 v2, p6

    #@167
    move/from16 v3, p3

    #@169
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@16c
    move-result-object v12

    #@16d
    .line 2266
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v6, 0x1

    #@16e
    .line 2268
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_9
    const/4 v13, 0x1

    #@16f
    const/4 v15, 0x0

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@175
    goto :goto_2

    #@176
    .line 2246
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    :cond_a
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@179
    move-result v13

    #@17a
    if-eqz v13, :cond_5

    #@17c
    .line 2251
    const/4 v13, 0x2

    #@17d
    const/4 v15, 0x0

    #@17e
    move-object/from16 v0, p0

    #@180
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@183
    goto :goto_2

    #@184
    .line 2275
    :pswitch_2
    move/from16 v0, p4

    #@186
    and-int/lit16 v13, v0, 0x100

    #@188
    if-eqz v13, :cond_5

    #@18a
    .line 2278
    const/4 v13, 0x0

    #@18b
    const/4 v15, 0x0

    #@18c
    move-object/from16 v0, p0

    #@18e
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@191
    goto :goto_2

    #@192
    .line 2283
    :pswitch_3
    const/4 v13, 0x0

    #@193
    const/4 v15, 0x0

    #@194
    move-object/from16 v0, p0

    #@196
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@199
    goto :goto_2

    #@19a
    .line 2286
    :pswitch_4
    move/from16 v0, p4

    #@19c
    and-int/lit16 v13, v0, 0x100

    #@19e
    if-eqz v13, :cond_5

    #@1a0
    .line 2289
    if-eqz p6, :cond_b

    #@1a2
    .line 2290
    move-object/from16 v0, p0

    #@1a4
    move-object/from16 v1, p7

    #@1a6
    move-object/from16 v2, p6

    #@1a8
    move/from16 v3, p3

    #@1aa
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@1ad
    move-result-object v12

    #@1ae
    .line 2292
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v6, 0x1

    #@1af
    .line 2294
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_b
    const/4 v13, 0x1

    #@1b0
    const/4 v15, 0x0

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@1b6
    goto :goto_2

    #@1b7
    .line 2299
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    :pswitch_5
    if-eqz p6, :cond_c

    #@1b9
    .line 2300
    move-object/from16 v0, p0

    #@1bb
    move-object/from16 v1, p7

    #@1bd
    move-object/from16 v2, p6

    #@1bf
    move/from16 v3, p3

    #@1c1
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@1c4
    move-result-object v12

    #@1c5
    .line 2302
    .local v12, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v6, 0x1

    #@1c6
    .line 2304
    .end local v12    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_c
    const/4 v13, 0x1

    #@1c7
    const/4 v15, 0x0

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    invoke-virtual {v0, v13, v15}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@1cd
    goto/16 :goto_2

    #@1cf
    .line 2243
    nop

    #@1d0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
