.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$1;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

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

.field static final MSG_SWITCH_IME:I = 0xbea

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private mAccessibilityRequestingNoSoftKeyboard:Z

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

.field mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

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

.field private final mHardKeyboardBehavior:I

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

.field private mLastSystemLocales:Landroid/os/LocaleList;

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

.field private final mSlotIme:Ljava/lang/String;

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/InputMethodManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    #@2
    return p1
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

.method static synthetic -wrap3(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    #@3
    .line 206
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
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@16
    .line 211
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1d
    .line 213
    new-instance v0, Landroid/util/LruCache;

    #@1f
    const/16 v1, 0x14

    #@21
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #@24
    .line 212
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@26
    .line 217
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    #@28
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@2d
    .line 224
    const/4 v0, 0x0

    #@2e
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@30
    .line 290
    new-instance v0, Ljava/util/HashMap;

    #@32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@37
    .line 371
    new-instance v0, Ljava/util/HashMap;

    #@39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@3e
    .line 439
    const/4 v0, 0x1

    #@3f
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@41
    .line 441
    const/4 v0, 0x0

    #@42
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@44
    .line 443
    const/4 v0, 0x0

    #@45
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@47
    .line 472
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@49
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@4c
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@4e
    .line 848
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@54
    .line 849
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@56
    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@5c
    .line 851
    new-instance v0, Landroid/os/Handler;

    #@5e
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #@61
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@63
    .line 853
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@65
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@67
    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    #@6a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@6c
    .line 855
    const-string/jumbo v0, "window"

    #@6f
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@72
    move-result-object v0

    #@73
    .line 854
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@79
    .line 856
    const-class v0, Landroid/view/WindowManagerInternal;

    #@7b
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Landroid/view/WindowManagerInternal;

    #@81
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@83
    .line 857
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@85
    new-instance v1, Lcom/android/server/InputMethodManagerService$2;

    #@87
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@8a
    const/4 v2, 0x0

    #@8b
    .line 862
    const/4 v3, 0x1

    #@8c
    .line 857
    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@8f
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@91
    .line 863
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@93
    const-class v1, Landroid/app/AppOpsManager;

    #@95
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@98
    move-result-object v0

    #@99
    check-cast v0, Landroid/app/AppOpsManager;

    #@9b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@9d
    .line 864
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@9f
    const-class v1, Landroid/os/UserManager;

    #@a1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a4
    move-result-object v0

    #@a5
    check-cast v0, Landroid/os/UserManager;

    #@a7
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    #@a9
    .line 865
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@ab
    const/4 v1, 0x0

    #@ac
    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V

    #@af
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@b1
    .line 866
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b4
    move-result-object v0

    #@b5
    .line 867
    const-string/jumbo v1, "android.software.input_methods"

    #@b8
    .line 866
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@bb
    move-result v0

    #@bc
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    #@be
    .line 868
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@c0
    const v1, 0x104001d

    #@c3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@c9
    .line 869
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@cb
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ce
    move-result-object v0

    #@cf
    .line 870
    const v1, 0x10e00a1

    #@d2
    .line 869
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@d5
    move-result v0

    #@d6
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    #@d8
    .line 872
    new-instance v10, Landroid/os/Bundle;

    #@da
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@dd
    .line 873
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.allowDuringSetup"

    #@e0
    const/4 v1, 0x1

    #@e1
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@e4
    .line 874
    new-instance v0, Landroid/app/Notification$Builder;

    #@e6
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@e8
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@eb
    .line 875
    const v1, 0x10803f6

    #@ee
    .line 874
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@f1
    move-result-object v0

    #@f2
    .line 876
    const-wide/16 v2, 0x0

    #@f4
    .line 874
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@f7
    move-result-object v0

    #@f8
    .line 877
    const/4 v1, 0x1

    #@f9
    .line 874
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@fc
    move-result-object v0

    #@fd
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    #@100
    move-result-object v0

    #@101
    .line 879
    const-string/jumbo v1, "sys"

    #@104
    .line 874
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@107
    move-result-object v0

    #@108
    .line 880
    const v1, 0x1060059

    #@10b
    .line 874
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@10e
    move-result-object v0

    #@10f
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@111
    .line 882
    new-instance v12, Landroid/content/Intent;

    #@113
    const-string/jumbo v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    #@116
    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@119
    .line 883
    .local v12, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@11b
    const/4 v1, 0x0

    #@11c
    const/4 v2, 0x0

    #@11d
    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@120
    move-result-object v0

    #@121
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    #@123
    .line 885
    const/4 v0, 0x0

    #@124
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@126
    .line 887
    new-instance v7, Landroid/content/IntentFilter;

    #@128
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@12b
    .line 888
    .local v7, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@12e
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@131
    .line 889
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@134
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@137
    .line 890
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@13a
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@13d
    .line 891
    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    #@140
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@143
    .line 892
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@145
    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    #@147
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@14a
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@14d
    .line 894
    const/4 v0, 0x0

    #@14e
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    #@150
    .line 895
    const/4 v5, 0x0

    #@151
    .line 897
    .local v5, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@154
    move-result-object v0

    #@155
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@158
    move-result-object v0

    #@159
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15b
    .line 901
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@15d
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@15f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@161
    const/4 v3, 0x0

    #@162
    const/4 v4, 0x1

    #@163
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@166
    .line 904
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@168
    .line 905
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@16a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16d
    move-result-object v2

    #@16e
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@170
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@172
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@174
    if-eqz v6, :cond_1

    #@176
    const/4 v6, 0x0

    #@177
    .line 904
    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    #@17a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@17c
    .line 907
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@17f
    .line 908
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@181
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@183
    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    #@186
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@188
    .line 909
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@18a
    monitor-enter v1

    #@18b
    .line 911
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18d
    .line 910
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@190
    move-result-object v0

    #@191
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@193
    monitor-exit v1

    #@194
    .line 915
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@196
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@199
    move-result-object v8

    #@19a
    .line 919
    .local v8, "defaultImiId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19d
    move-result v0

    #@19e
    if-eqz v0, :cond_2

    #@1a0
    const/4 v0, 0x0

    #@1a1
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@1a3
    .line 921
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1a5
    monitor-enter v1

    #@1a6
    .line 922
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@1a8
    if-eqz v0, :cond_3

    #@1aa
    const/4 v0, 0x0

    #@1ab
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1ae
    monitor-exit v1

    #@1af
    .line 924
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1b1
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    #@1b4
    .line 926
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@1b6
    if-nez v0, :cond_0

    #@1b8
    .line 927
    const-string/jumbo v0, "InputMethodManagerService"

    #@1bb
    const-string/jumbo v1, "No IME selected. Choose the most applicable IME."

    #@1be
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c1
    .line 928
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1c3
    monitor-enter v0

    #@1c4
    .line 929
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1c7
    monitor-exit v0

    #@1c8
    .line 933
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1ca
    monitor-enter v1

    #@1cb
    .line 934
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@1cd
    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    #@1d0
    .line 935
    const/4 v0, 0x1

    #@1d1
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@1d4
    monitor-exit v1

    #@1d5
    .line 940
    new-instance v11, Landroid/content/IntentFilter;

    #@1d7
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@1da
    .line 941
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    #@1dd
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e0
    .line 942
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1e2
    .line 943
    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    #@1e4
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@1e7
    .line 942
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1ea
    .line 847
    return-void

    #@1eb
    .line 898
    .end local v8    # "defaultImiId":Ljava/lang/String;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    #@1ec
    .line 899
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodManagerService"

    #@1ef
    const-string/jumbo v1, "Couldn\'t get current user ID; guessing it\'s 0"

    #@1f2
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 905
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v6, 0x1

    #@1f8
    goto/16 :goto_1

    #@1fa
    .line 909
    :catchall_0
    move-exception v0

    #@1fb
    monitor-exit v1

    #@1fc
    throw v0

    #@1fd
    .line 919
    .restart local v8    # "defaultImiId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    #@1fe
    goto :goto_2

    #@1ff
    .line 922
    :cond_3
    const/4 v0, 0x1

    #@200
    goto :goto_3

    #@201
    .line 921
    :catchall_1
    move-exception v0

    #@202
    monitor-exit v1

    #@203
    throw v0

    #@204
    .line 928
    :catchall_2
    move-exception v1

    #@205
    monitor-exit v0

    #@206
    throw v1

    #@207
    .line 933
    :catchall_3
    move-exception v0

    #@208
    monitor-exit v1

    #@209
    throw v0
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1165
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1166
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
    .line 1167
    const/4 v0, 0x0

    #@2a
    return v0

    #@2b
    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2d
    .line 1170
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
    .line 1169
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method private calledFromValidUser()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1119
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v1

    #@a
    .line 1127
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
    .line 1128
    :cond_0
    return v4

    #@17
    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@19
    .line 1137
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@1c
    .line 1136
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    .line 1143
    return v4

    #@23
    .line 1145
    :cond_2
    const-string/jumbo v2, "InputMethodManagerService"

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "--- IPC called from background users. Ignore. callers="

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 1146
    const/16 v4, 0xa

    #@34
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 1145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1147
    return v5
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1157
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@4
    if-eq v0, p1, :cond_1

    #@6
    .line 1158
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1160
    :cond_1
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    #@0
    .prologue
    .line 3016
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 3015
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    #@9
    move-result-object v0

    #@a
    .line 3017
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    #@c
    .line 3021
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@13
    .line 3022
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 3025
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
    .line 3479
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@5
    move-result-object v5

    #@6
    .line 3480
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    #@7
    .line 3481
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    #@8
    .line 3482
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    #@9
    .line 3485
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
    .line 3486
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 3487
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
    .line 3490
    :cond_1
    const/4 v9, 0x0

    #@28
    .line 3492
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
    .line 3494
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@33
    if-eqz v11, :cond_2

    #@35
    .line 3496
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
    .line 3495
    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@41
    move-result-object v9

    #@42
    .line 3500
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    if-nez v9, :cond_3

    #@44
    .line 3502
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@46
    const/4 v12, 0x0

    #@47
    const/4 v13, 0x1

    #@48
    .line 3501
    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@4b
    move-result-object v9

    #@4c
    .line 3505
    :cond_3
    invoke-static {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    #@4f
    move-result-object v8

    #@50
    .line 3507
    .local v8, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@53
    move-result v11

    #@54
    if-eqz v11, :cond_7

    #@56
    .line 3508
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@59
    move-result-object v10

    #@5a
    .line 3511
    .local v10, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v9, :cond_4

    #@5c
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@5e
    if-eqz v11, :cond_4

    #@60
    .line 3513
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
    .line 3512
    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@6c
    move-result-object v9

    #@6d
    .line 3517
    :cond_4
    if-nez v9, :cond_5

    #@6f
    .line 3519
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@71
    const/4 v12, 0x0

    #@72
    const/4 v13, 0x1

    #@73
    .line 3518
    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@76
    move-result-object v9

    #@77
    .line 3521
    :cond_5
    if-eqz v9, :cond_0

    #@79
    .line 3522
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@7b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v11

    #@7f
    if-eqz v11, :cond_8

    #@81
    .line 3524
    move-object v6, v2

    #@82
    .line 3525
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    move-object v7, v9

    #@83
    .line 3549
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-eqz v6, :cond_9

    #@85
    .line 3550
    new-instance v11, Landroid/util/Pair;

    #@87
    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8a
    return-object v11

    #@8b
    .line 3509
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
    .line 3527
    :cond_8
    if-nez v1, :cond_0

    #@8f
    .line 3529
    move-object v6, v2

    #@90
    .line 3530
    .restart local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    move-object v7, v9

    #@91
    .line 3531
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
    .line 3533
    const/4 v1, 0x1

    #@9e
    goto/16 :goto_0

    #@a0
    .line 3552
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
    .line 1624
    if-eqz p1, :cond_1

    #@3
    .line 1625
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1627
    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@9
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1632
    :goto_0
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@e
    .line 1634
    :cond_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1635
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@14
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@17
    .line 1636
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@19
    .line 1623
    :cond_1
    return-void

    #@1a
    .line 1628
    :catch_0
    move-exception v0

    #@1b
    .line 1629
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputMethodManagerService"

    #@1e
    const-string/jumbo v2, "Session failed to close due to remote exception"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1630
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
    .line 1297
    const/4 v0, 0x0

    #@1
    .line 1298
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1299
    const/4 v0, 0x2

    #@6
    .line 1303
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1300
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1301
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
    .line 3571
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 3572
    return-object v6

    #@8
    .line 3574
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@a
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    #@d
    move-result v3

    #@e
    .line 3575
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
    .line 3576
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    #@1a
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 3577
    :cond_1
    return-object v6

    #@21
    .line 3579
    :cond_2
    if-eqz v3, :cond_3

    #@23
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@25
    if-nez v4, :cond_5

    #@27
    .line 3581
    :cond_3
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@29
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@2b
    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    #@2e
    move-result v2

    #@2f
    .line 3582
    .local v2, "subtypeId":I
    const/4 v4, -0x1

    #@30
    if-ne v2, v4, :cond_7

    #@32
    .line 3587
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@34
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@36
    invoke-virtual {v4, v5, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    .line 3590
    .local v0, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3d
    move-result v4

    #@3e
    if-ne v4, v7, :cond_6

    #@40
    .line 3591
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@46
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@48
    .line 3606
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypeId":I
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4a
    return-object v4

    #@4b
    .line 3580
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
    .line 3592
    .restart local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "subtypeId":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5b
    move-result v4

    #@5c
    if-le v4, v7, :cond_4

    #@5e
    .line 3594
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@60
    .line 3595
    const-string/jumbo v5, "keyboard"

    #@63
    .line 3593
    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@66
    move-result-object v4

    #@67
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@69
    .line 3596
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@6b
    if-nez v4, :cond_4

    #@6d
    .line 3598
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@6f
    .line 3597
    invoke-static {v4, v0, v6, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@72
    move-result-object v4

    #@73
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@75
    goto :goto_0

    #@76
    .line 3603
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
    .line 1286
    const/4 v0, 0x0

    #@1
    .line 1287
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1288
    const/4 v0, 0x3

    #@6
    .line 1293
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1290
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1291
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
    .line 2976
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    .line 2977
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@6
    .line 2978
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
    .line 2981
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
    .line 2982
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@21
    .line 2983
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
    .line 2982
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
    .line 2975
    return-void

    #@33
    :cond_2
    move v1, v0

    #@34
    .line 2978
    goto :goto_0

    #@35
    .line 2976
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v2

    #@37
    throw v0
.end method

.method private handleSwitchInputMethod(Z)V
    .locals 8
    .param p1, "forwardDirection"    # Z

    #@0
    .prologue
    .line 2989
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v4

    #@3
    .line 2990
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@5
    .line 2991
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@7
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@9
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    #@f
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@11
    const/4 v7, 0x0

    #@12
    .line 2990
    invoke-virtual {v5, v7, v3, v6, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 2992
    .local v1, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_0

    #@18
    monitor-exit v4

    #@19
    .line 2993
    return-void

    #@1a
    .line 2995
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@1c
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    iget v5, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@22
    invoke-virtual {p0, v3, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    #@25
    .line 2996
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@27
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@29
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 2997
    .local v0, "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_1

    #@31
    monitor-exit v4

    #@32
    .line 2998
    return-void

    #@33
    .line 3000
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@35
    .line 3001
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@37
    .line 3000
    invoke-static {v3, v0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    #@3a
    move-result-object v2

    #@3b
    .line 3002
    .local v2, "toastText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_2

    #@41
    .line 3003
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    #@43
    if-nez v3, :cond_3

    #@45
    .line 3004
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@47
    .line 3005
    const/4 v5, 0x0

    #@48
    .line 3004
    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@4b
    move-result-object v3

    #@4c
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    #@4e
    .line 3009
    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    #@50
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    :cond_2
    monitor-exit v4

    #@54
    .line 2988
    return-void

    #@55
    .line 3007
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    #@57
    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 2989
    .end local v0    # "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "toastText":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    #@5c
    monitor-exit v4

    #@5d
    throw v3
.end method

.method private static imeWindowStatusToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "imeWindowVis"    # I

    #@0
    .prologue
    .line 3898
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3899
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@6
    .line 3900
    .local v0, "first":Z
    and-int/lit8 v2, p0, 0x1

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 3901
    const-string/jumbo v2, "Active"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 3902
    const/4 v0, 0x0

    #@11
    .line 3904
    :cond_0
    and-int/lit8 v2, p0, 0x2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 3905
    if-nez v0, :cond_1

    #@17
    .line 3906
    const-string/jumbo v2, "|"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 3908
    :cond_1
    const-string/jumbo v2, "Visible"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 3910
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method private isKeyguardLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1780
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
    .line 3154
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3155
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@6
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@9
    move-result v0

    #@a
    .line 3154
    if-eqz v0, :cond_0

    #@c
    .line 3155
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@e
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@11
    move-result v0

    #@12
    .line 3154
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method private notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 1990
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    #@8
    .line 1991
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 1992
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@d
    .line 1988
    :cond_0
    return-void
.end method

.method private resetAllInternalStateLocked(ZZ)V
    .locals 5
    .param p1, "updateOnlyWhenLocaleChanged"    # Z
    .param p2, "resetDefaultEnabledIme"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 971
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 973
    return-void

    #@6
    .line 975
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@8
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@f
    move-result-object v1

    #@10
    .line 976
    .local v1, "newLocales":Landroid/os/LocaleList;
    if-eqz p1, :cond_2

    #@12
    .line 977
    if-eqz v1, :cond_1

    #@14
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    #@16
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 970
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 978
    :cond_2
    if-nez p1, :cond_3

    #@1f
    .line 979
    const/4 v3, 0x0

    #@20
    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@23
    .line 980
    const/4 v3, 0x6

    #@24
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    #@27
    .line 985
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    #@2a
    .line 986
    if-nez p1, :cond_5

    #@2c
    .line 987
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2e
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 988
    .local v2, "selectedImiId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_4

    #@38
    .line 991
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3a
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    #@3d
    .line 997
    .end local v2    # "selectedImiId":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v3, 0x1

    #@3e
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    #@41
    .line 998
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    #@43
    .line 999
    if-nez p1, :cond_1

    #@45
    .line 1001
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    goto :goto_0

    #@49
    .line 1002
    :catch_0
    move-exception v0

    #@4a
    .line 1003
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "InputMethodManagerService"

    #@4d
    const-string/jumbo v4, "Unexpected exception"

    #@50
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 995
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_5
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@56
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    #@59
    goto :goto_1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 955
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@7
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@9
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@f
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 959
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@17
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@19
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@1c
    move-result-object v3

    #@1d
    .line 958
    invoke-static {p1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    #@20
    move-result-object v1

    #@21
    .line 960
    .local v1, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 961
    const-string/jumbo v2, "InputMethodManagerService"

    #@2a
    const-string/jumbo v3, "No default found"

    #@2d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 962
    return-void

    #@31
    .line 956
    .end local v1    # "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_1
    return-void

    #@32
    .line 964
    .restart local v1    # "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@38
    .line 965
    .local v0, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const-string/jumbo v2, "InputMethodManagerService"

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Default found, using "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 966
    const/4 v2, -0x1

    #@57
    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@5a
    .line 953
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3459
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 3460
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    #@9
    .line 3462
    .local v2, "lastSubtypeId":I
    if-eqz v1, :cond_0

    #@b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 3473
    :cond_0
    :goto_0
    const/4 v4, 0x0

    #@12
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@15
    .line 3458
    return-void

    #@16
    .line 3463
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18
    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 3464
    .local v3, "subtypeHashCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1e
    .line 3467
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v4

    #@22
    .line 3466
    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v2

    #@26
    goto :goto_0

    #@27
    .line 3468
    :catch_0
    move-exception v0

    #@28
    .line 3469
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "InputMethodManagerService"

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "HashCode for subtype looks broken: "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_0
.end method

.method private resetStateIfCurrentLocaleChangedLocked()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1010
    invoke-direct {p0, v0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    #@4
    .line 1009
    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 596
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    #@3
    move-result-object v5

    #@4
    .line 598
    .local v5, "prevMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    #@7
    move-result-object v4

    #@8
    .line 601
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
    .line 602
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;

    #@22
    .line 603
    .local v2, "imeId":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Landroid/util/ArraySet;

    #@28
    .line 604
    .local v6, "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    #@2a
    .line 605
    new-instance v6, Landroid/util/ArraySet;

    #@2c
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x2

    #@2d
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    #@30
    .line 606
    .restart local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 608
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
    .line 612
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "imeId":Ljava/lang/String;
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 617
    .local v3, "mergedImesAndSubtypesString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v7

    #@45
    .line 618
    const-string/jumbo v8, "enabled_input_methods"

    #@48
    .line 617
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@4b
    .line 588
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    #@0
    .prologue
    .line 2689
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 2690
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 2688
    return-void

    #@8
    .line 2689
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
    .line 2695
    if-nez p1, :cond_0

    #@2
    .line 2696
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 2697
    const-string/jumbo v3, "android.permission.WRITE_SECURE_SETTINGS"

    #@7
    .line 2696
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2699
    new-instance v2, Ljava/lang/SecurityException;

    #@f
    .line 2700
    const-string/jumbo v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@12
    .line 2699
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 2703
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 2704
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
    .line 2705
    const-string/jumbo v4, " token: "

    #@34
    .line 2704
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
    .line 2706
    return-void

    #@44
    .line 2709
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@47
    move-result-wide v0

    #@48
    .line 2711
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 2713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 2694
    return-void

    #@4f
    .line 2712
    :catchall_0
    move-exception v2

    #@50
    .line 2713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 2712
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
    .line 3421
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@6
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@8
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@b
    .line 3424
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
    .line 3423
    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@16
    .line 3430
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
    .line 3431
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@22
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@24
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@26
    .line 3433
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@28
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@2a
    .line 3432
    const/16 v5, 0xbe0

    #@2c
    .line 3431
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@33
    .line 3437
    :cond_0
    if-eqz p1, :cond_1

    #@35
    if-gez p2, :cond_3

    #@37
    .line 3438
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@39
    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@3c
    .line 3439
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@3e
    .line 3452
    :goto_0
    if-nez p3, :cond_2

    #@40
    .line 3454
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@42
    if-eqz p1, :cond_5

    #@44
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    #@4b
    .line 3419
    :cond_2
    return-void

    #@4c
    .line 3441
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@4f
    move-result v1

    #@50
    if-ge p2, v1, :cond_4

    #@52
    .line 3442
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@55
    move-result-object v0

    #@56
    .line 3443
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@58
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@5b
    move-result v2

    #@5c
    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@5f
    .line 3444
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@61
    goto :goto_0

    #@62
    .line 3446
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@64
    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@67
    .line 3448
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@6a
    move-result-object v1

    #@6b
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@6d
    goto :goto_0

    #@6e
    .line 3454
    :cond_5
    const-string/jumbo v1, ""

    #@71
    goto :goto_1
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 15
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 1720
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@2
    if-nez v12, :cond_0

    #@4
    const/4 v12, 0x0

    #@5
    return v12

    #@6
    .line 1721
    :cond_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@8
    if-eqz v12, :cond_1

    #@a
    const/4 v12, 0x0

    #@b
    return v12

    #@c
    .line 1722
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
    .line 1723
    :cond_2
    and-int/lit8 v12, p1, 0x1

    #@16
    if-nez v12, :cond_3

    #@18
    const/4 v12, 0x0

    #@19
    return v12

    #@1a
    .line 1724
    :cond_3
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@1c
    invoke-virtual {v12}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    #@1f
    move-result v12

    #@20
    if-eqz v12, :cond_4

    #@22
    .line 1725
    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    #@24
    if-nez v12, :cond_5

    #@26
    .line 1730
    const/4 v12, 0x1

    #@27
    return v12

    #@28
    .line 1732
    :cond_4
    and-int/lit8 v12, p1, 0x2

    #@2a
    if-nez v12, :cond_5

    #@2c
    .line 1733
    const/4 v12, 0x0

    #@2d
    return v12

    #@2e
    .line 1736
    :cond_5
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@30
    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@33
    move-result-object v5

    #@34
    .line 1737
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@37
    move-result v0

    #@38
    .line 1738
    .local v0, "N":I
    const/4 v12, 0x2

    #@39
    if-le v0, v12, :cond_6

    #@3b
    const/4 v12, 0x1

    #@3c
    return v12

    #@3d
    .line 1739
    :cond_6
    const/4 v12, 0x1

    #@3e
    if-ge v0, v12, :cond_7

    #@40
    const/4 v12, 0x0

    #@41
    return v12

    #@42
    .line 1740
    :cond_7
    const/4 v7, 0x0

    #@43
    .line 1741
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    #@44
    .line 1742
    .local v1, "auxCount":I
    const/4 v8, 0x0

    #@45
    .line 1743
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    #@46
    .line 1744
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    #@47
    .end local v2    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_b

    #@49
    .line 1745
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v4

    #@4d
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@4f
    .line 1747
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@51
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@53
    const/4 v14, 0x1

    #@54
    invoke-virtual {v12, v13, v4, v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@57
    move-result-object v11

    #@58
    .line 1748
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@5b
    move-result v10

    #@5c
    .line 1749
    .local v10, "subtypeCount":I
    if-nez v10, :cond_9

    #@5e
    .line 1750
    add-int/lit8 v7, v7, 0x1

    #@60
    .line 1744
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_0

    #@63
    .line 1752
    :cond_9
    const/4 v6, 0x0

    #@64
    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_8

    #@66
    .line 1753
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v9

    #@6a
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    #@6c
    .line 1754
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@6f
    move-result v12

    #@70
    if-nez v12, :cond_a

    #@72
    .line 1755
    add-int/lit8 v7, v7, 0x1

    #@74
    .line 1756
    move-object v8, v9

    #@75
    .line 1752
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_1

    #@78
    .line 1758
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@7a
    .line 1759
    move-object v2, v9

    #@7b
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2

    #@7c
    .line 1764
    .end local v2    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_b
    const/4 v12, 0x1

    #@7d
    if-gt v7, v12, :cond_c

    #@7f
    const/4 v12, 0x1

    #@80
    if-le v1, v12, :cond_d

    #@82
    .line 1765
    :cond_c
    const/4 v12, 0x1

    #@83
    return v12

    #@84
    .line 1766
    :cond_d
    const/4 v12, 0x1

    #@85
    if-ne v7, v12, :cond_10

    #@87
    const/4 v12, 0x1

    #@88
    if-ne v1, v12, :cond_10

    #@8a
    .line 1767
    if-eqz v8, :cond_f

    #@8c
    if-eqz v2, :cond_f

    #@8e
    .line 1768
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@95
    move-result-object v13

    #@96
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v12

    #@9a
    if-nez v12, :cond_e

    #@9c
    .line 1769
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@9f
    move-result v12

    #@a0
    .line 1768
    if-nez v12, :cond_e

    #@a2
    .line 1770
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@a5
    move-result v12

    #@a6
    .line 1767
    if-eqz v12, :cond_f

    #@a8
    .line 1771
    :cond_e
    const-string/jumbo v12, "TrySuppressingImeSwitcher"

    #@ab
    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@ae
    move-result v12

    #@af
    .line 1767
    if-eqz v12, :cond_f

    #@b1
    .line 1772
    const/4 v12, 0x0

    #@b2
    return v12

    #@b3
    .line 1774
    :cond_f
    const/4 v12, 0x1

    #@b4
    return v12

    #@b5
    .line 1776
    :cond_10
    const/4 v12, 0x0

    #@b6
    return v12
.end method

.method private showConfigureInputMethods()V
    .locals 4

    #@0
    .prologue
    .line 3146
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3147
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 3150
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@f
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@15
    .line 3145
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3131
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3132
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14200000

    #@a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 3135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 3136
    const-string/jumbo v2, "input_method_id"

    #@16
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 3139
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1b
    monitor-enter v3

    #@1c
    .line 3140
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v1

    #@22
    .local v1, "userId":I
    monitor-exit v3

    #@23
    .line 3142
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@28
    move-result-object v3

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@2d
    .line 3130
    return-void

    #@2e
    .line 3139
    .end local v1    # "userId":I
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.method private showInputMethodMenu(Z)V
    .locals 31
    .param p1, "showAuxSubtypes"    # Z

    #@0
    .prologue
    .line 3161
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 3162
    .local v9, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    #@7
    move-result v19

    #@8
    .line 3164
    .local v19, "isScreenLocked":Z
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@c
    move-object/from16 v26, v0

    #@e
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@11
    move-result-object v21

    #@12
    .line 3165
    .local v21, "lastInputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@16
    move-object/from16 v26, v0

    #@18
    move-object/from16 v0, v26

    #@1a
    move-object/from16 v1, v21

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    #@1f
    move-result v22

    #@20
    .line 3168
    .local v22, "lastInputMethodSubtypeId":I
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@24
    move-object/from16 v27, v0

    #@26
    monitor-enter v27

    #@27
    .line 3170
    :try_start_0
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2b
    move-object/from16 v26, v0

    #@2d
    .line 3171
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@31
    move-object/from16 v28, v0

    #@33
    .line 3170
    move-object/from16 v0, v26

    #@35
    move-object/from16 v1, v28

    #@37
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    #@3a
    move-result-object v17

    #@3b
    .line 3172
    .local v17, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v17, :cond_0

    #@3d
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result v26

    #@41
    if-nez v26, :cond_1

    #@43
    :cond_0
    monitor-exit v27

    #@44
    .line 3173
    return-void

    #@45
    .line 3176
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    #@48
    .line 3179
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@4c
    move-object/from16 v26, v0

    #@4e
    move-object/from16 v0, v26

    #@50
    move/from16 v1, p1

    #@52
    move/from16 v2, v19

    #@54
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    #@57
    move-result-object v16

    #@58
    .line 3182
    .local v16, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/16 v26, -0x1

    #@5a
    move/from16 v0, v22

    #@5c
    move/from16 v1, v26

    #@5e
    if-ne v0, v1, :cond_2

    #@60
    .line 3183
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@63
    move-result-object v11

    #@64
    .line 3184
    .local v11, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v11, :cond_2

    #@66
    .line 3185
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@6a
    move-object/from16 v26, v0

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@70
    move-object/from16 v28, v0

    #@72
    move-object/from16 v0, v26

    #@74
    move-object/from16 v1, v28

    #@76
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v10

    #@7a
    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    #@7c
    .line 3187
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@7f
    move-result v26

    #@80
    .line 3186
    move/from16 v0, v26

    #@82
    invoke-static {v10, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@85
    move-result v22

    #@86
    .line 3191
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@89
    move-result v4

    #@8a
    .line 3192
    .local v4, "N":I
    new-array v0, v4, [Landroid/view/inputmethod/InputMethodInfo;

    #@8c
    move-object/from16 v26, v0

    #@8e
    move-object/from16 v0, v26

    #@90
    move-object/from16 v1, p0

    #@92
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@94
    .line 3193
    new-array v0, v4, [I

    #@96
    move-object/from16 v26, v0

    #@98
    move-object/from16 v0, v26

    #@9a
    move-object/from16 v1, p0

    #@9c
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@9e
    .line 3194
    const/4 v7, 0x0

    #@9f
    .line 3195
    .local v7, "checkedItem":I
    const/4 v15, 0x0

    #@a0
    .local v15, "i":I
    :goto_0
    if-ge v15, v4, :cond_6

    #@a2
    .line 3196
    move-object/from16 v0, v16

    #@a4
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v20

    #@a8
    check-cast v20, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@aa
    .line 3197
    .local v20, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@ae
    move-object/from16 v26, v0

    #@b0
    move-object/from16 v0, v20

    #@b2
    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@b4
    move-object/from16 v28, v0

    #@b6
    aput-object v28, v26, v15

    #@b8
    .line 3198
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@bc
    move-object/from16 v26, v0

    #@be
    move-object/from16 v0, v20

    #@c0
    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@c2
    move/from16 v28, v0

    #@c4
    aput v28, v26, v15

    #@c6
    .line 3199
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@ca
    move-object/from16 v26, v0

    #@cc
    aget-object v26, v26, v15

    #@ce
    invoke-virtual/range {v26 .. v26}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@d1
    move-result-object v26

    #@d2
    move-object/from16 v0, v26

    #@d4
    move-object/from16 v1, v21

    #@d6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v26

    #@da
    if-eqz v26, :cond_4

    #@dc
    .line 3200
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@e0
    move-object/from16 v26, v0

    #@e2
    aget v24, v26, v15

    #@e4
    .line 3201
    .local v24, "subtypeId":I
    const/16 v26, -0x1

    #@e6
    move/from16 v0, v24

    #@e8
    move/from16 v1, v26

    #@ea
    if-eq v0, v1, :cond_3

    #@ec
    .line 3202
    const/16 v26, -0x1

    #@ee
    move/from16 v0, v22

    #@f0
    move/from16 v1, v26

    #@f2
    if-ne v0, v1, :cond_5

    #@f4
    if-nez v24, :cond_5

    #@f6
    .line 3204
    :cond_3
    :goto_1
    move v7, v15

    #@f7
    .line 3195
    .end local v24    # "subtypeId":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@f9
    goto :goto_0

    #@fa
    .line 3203
    .restart local v24    # "subtypeId":I
    :cond_5
    move/from16 v0, v24

    #@fc
    move/from16 v1, v22

    #@fe
    if-ne v0, v1, :cond_4

    #@100
    goto :goto_1

    #@101
    .line 3209
    .end local v20    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v24    # "subtypeId":I
    :cond_6
    new-instance v23, Landroid/view/ContextThemeWrapper;

    #@103
    .line 3210
    const v26, 0x1030223

    #@106
    .line 3209
    move-object/from16 v0, v23

    #@108
    move/from16 v1, v26

    #@10a
    invoke-direct {v0, v9, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@10d
    .line 3212
    .local v23, "settingsContext":Landroid/content/Context;
    new-instance v26, Landroid/app/AlertDialog$Builder;

    #@10f
    move-object/from16 v0, v26

    #@111
    move-object/from16 v1, v23

    #@113
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@116
    move-object/from16 v0, v26

    #@118
    move-object/from16 v1, p0

    #@11a
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@11c
    .line 3213
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@120
    move-object/from16 v26, v0

    #@122
    new-instance v28, Lcom/android/server/InputMethodManagerService$4;

    #@124
    move-object/from16 v0, v28

    #@126
    move-object/from16 v1, p0

    #@128
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@12b
    move-object/from16 v0, v26

    #@12d
    move-object/from16 v1, v28

    #@12f
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@132
    .line 3220
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@136
    move-object/from16 v26, v0

    #@138
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    #@13b
    move-result-object v12

    #@13c
    .line 3222
    .local v12, "dialogContext":Landroid/content/Context;
    sget-object v26, Lcom/android/internal/R$styleable;->DialogPreference:[I

    #@13e
    .line 3221
    const/16 v28, 0x0

    #@140
    .line 3223
    const v29, 0x101005d

    #@143
    const/16 v30, 0x0

    #@145
    .line 3221
    move-object/from16 v0, v28

    #@147
    move-object/from16 v1, v26

    #@149
    move/from16 v2, v29

    #@14b
    move/from16 v3, v30

    #@14d
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@150
    move-result-object v5

    #@151
    .line 3225
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v26, 0x2

    #@153
    .line 3224
    move/from16 v0, v26

    #@155
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@158
    move-result-object v13

    #@159
    .line 3226
    .local v13, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@15c
    .line 3228
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@160
    move-object/from16 v26, v0

    #@162
    move-object/from16 v0, v26

    #@164
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    #@167
    .line 3230
    const-class v26, Landroid/view/LayoutInflater;

    #@169
    move-object/from16 v0, v26

    #@16b
    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@16e
    move-result-object v18

    #@16f
    check-cast v18, Landroid/view/LayoutInflater;

    #@171
    .line 3232
    .local v18, "inflater":Landroid/view/LayoutInflater;
    const v26, 0x109006f

    #@174
    const/16 v28, 0x0

    #@176
    .line 3231
    move-object/from16 v0, v18

    #@178
    move/from16 v1, v26

    #@17a
    move-object/from16 v2, v28

    #@17c
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@17f
    move-result-object v25

    #@180
    .line 3233
    .local v25, "tv":Landroid/view/View;
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@184
    move-object/from16 v26, v0

    #@186
    move-object/from16 v0, v26

    #@188
    move-object/from16 v1, v25

    #@18a
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@18d
    .line 3236
    move-object/from16 v0, v25

    #@18f
    move-object/from16 v1, p0

    #@191
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@193
    .line 3237
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@197
    move-object/from16 v26, v0

    #@199
    .line 3238
    const v28, 0x1020384

    #@19c
    .line 3237
    move-object/from16 v0, v26

    #@19e
    move/from16 v1, v28

    #@1a0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a3
    move-result-object v28

    #@1a4
    .line 3239
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@1a8
    move-object/from16 v26, v0

    #@1aa
    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    #@1ad
    move-result v26

    #@1ae
    if-eqz v26, :cond_7

    #@1b0
    .line 3240
    const/16 v26, 0x0

    #@1b2
    .line 3237
    :goto_2
    move-object/from16 v0, v28

    #@1b4
    move/from16 v1, v26

    #@1b6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1b9
    .line 3241
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@1bd
    move-object/from16 v26, v0

    #@1bf
    .line 3242
    const v28, 0x1020385

    #@1c2
    .line 3241
    move-object/from16 v0, v26

    #@1c4
    move/from16 v1, v28

    #@1c6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1c9
    move-result-object v14

    #@1ca
    check-cast v14, Landroid/widget/Switch;

    #@1cc
    .line 3243
    .local v14, "hardKeySwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    #@1ce
    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@1d0
    move/from16 v26, v0

    #@1d2
    move/from16 v0, v26

    #@1d4
    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setChecked(Z)V

    #@1d7
    .line 3244
    new-instance v26, Lcom/android/server/InputMethodManagerService$5;

    #@1d9
    move-object/from16 v0, v26

    #@1db
    move-object/from16 v1, p0

    #@1dd
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@1e0
    move-object/from16 v0, v26

    #@1e2
    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@1e5
    .line 3254
    new-instance v6, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@1e7
    .line 3255
    const v26, 0x1090070

    #@1ea
    .line 3254
    move/from16 v0, v26

    #@1ec
    move-object/from16 v1, v16

    #@1ee
    invoke-direct {v6, v12, v0, v1, v7}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    #@1f1
    .line 3256
    .local v6, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v8, Lcom/android/server/InputMethodManagerService$6;

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    invoke-direct {v8, v0, v6}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    #@1f8
    .line 3278
    .local v8, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@1fc
    move-object/from16 v26, v0

    #@1fe
    move-object/from16 v0, v26

    #@200
    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@203
    .line 3280
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@207
    move-object/from16 v26, v0

    #@209
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@20c
    move-result-object v26

    #@20d
    move-object/from16 v0, v26

    #@20f
    move-object/from16 v1, p0

    #@211
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@213
    .line 3281
    move-object/from16 v0, p0

    #@215
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@217
    move-object/from16 v26, v0

    #@219
    const/16 v28, 0x1

    #@21b
    move-object/from16 v0, v26

    #@21d
    move/from16 v1, v28

    #@21f
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    #@222
    .line 3282
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@226
    move-object/from16 v26, v0

    #@228
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@22b
    move-result-object v26

    #@22c
    .line 3283
    const/16 v28, 0x7dc

    #@22e
    .line 3282
    move-object/from16 v0, v26

    #@230
    move/from16 v1, v28

    #@232
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@235
    .line 3284
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@239
    move-object/from16 v26, v0

    #@23b
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@23e
    move-result-object v26

    #@23f
    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@242
    move-result-object v26

    #@243
    move-object/from16 v0, v26

    #@245
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@247
    move/from16 v28, v0

    #@249
    or-int/lit8 v28, v28, 0x10

    #@24b
    move/from16 v0, v28

    #@24d
    move-object/from16 v1, v26

    #@24f
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@251
    .line 3286
    move-object/from16 v0, p0

    #@253
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@255
    move-object/from16 v26, v0

    #@257
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@25a
    move-result-object v26

    #@25b
    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@25e
    move-result-object v26

    #@25f
    const-string/jumbo v28, "Select input method"

    #@262
    move-object/from16 v0, v26

    #@264
    move-object/from16 v1, v28

    #@266
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@269
    .line 3287
    move-object/from16 v0, p0

    #@26b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@26d
    move-object/from16 v26, v0

    #@26f
    move-object/from16 v0, p0

    #@271
    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@273
    move/from16 v28, v0

    #@275
    move-object/from16 v0, p0

    #@277
    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@279
    move/from16 v29, v0

    #@27b
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, v26

    #@27f
    move/from16 v2, v28

    #@281
    move/from16 v3, v29

    #@283
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    #@286
    .line 3288
    move-object/from16 v0, p0

    #@288
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@28a
    move-object/from16 v26, v0

    #@28c
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28f
    monitor-exit v27

    #@290
    .line 3158
    return-void

    #@291
    .line 3240
    .end local v6    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v8    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v14    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_7
    const/16 v26, 0x8

    #@293
    goto/16 :goto_2

    #@295
    .line 3168
    .end local v4    # "N":I
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "checkedItem":I
    .end local v12    # "dialogContext":Landroid/content/Context;
    .end local v13    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "i":I
    .end local v16    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v17    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v18    # "inflater":Landroid/view/LayoutInflater;
    .end local v23    # "settingsContext":Landroid/content/Context;
    .end local v25    # "tv":Landroid/view/View;
    :catchall_0
    move-exception v26

    #@296
    monitor-exit v27

    #@297
    throw v26
.end method

.method private startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p4, "missingMethods"    # I
    .param p5, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "controlFlags"    # I

    #@0
    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1500
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 1502
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 1513
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v0

    #@f
    .line 1515
    .local v0, "ident":J
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v2

    #@13
    .line 1518
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    monitor-exit v3

    #@17
    .line 1515
    return-object v2

    #@18
    .line 1517
    :catchall_0
    move-exception v2

    #@19
    .line 1518
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1517
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d
    .line 1502
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2
.end method

.method private switchUserLocked(I)V
    .locals 6
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 1019
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    #@5
    .line 1024
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    #@b
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    const/4 v2, 0x0

    #@12
    .line 1025
    .local v2, "useCopyOnWriteSettings":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14
    invoke-virtual {v3, p1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    #@17
    .line 1026
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@1a
    .line 1028
    new-instance v3, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@1c
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1e
    invoke-direct {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    #@21
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@23
    .line 1029
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@25
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 1039
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v1

    #@2d
    .line 1040
    .local v1, "initialUserSwitch":Z
    const/4 v3, 0x0

    #@2e
    invoke-direct {p0, v3, v1}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    #@31
    .line 1042
    if-eqz v1, :cond_0

    #@33
    .line 1043
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@35
    .line 1044
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@37
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@3a
    move-result-object v4

    #@3b
    .line 1045
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1043
    invoke-static {v3, v4, p1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    #@44
    .line 1014
    :cond_0
    return-void

    #@45
    .line 1024
    .end local v0    # "defaultImiId":Ljava/lang/String;
    .end local v1    # "initialUserSwitch":Z
    .end local v2    # "useCopyOnWriteSettings":Z
    :cond_1
    const/4 v2, 0x1

    #@46
    .restart local v2    # "useCopyOnWriteSettings":Z
    goto :goto_0
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 1802
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1800
    return-void

    #@8
    .line 1801
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    .line 1808
    invoke-direct/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@3
    move-result v12

    #@4
    if-nez v12, :cond_0

    #@6
    .line 1809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v11

    #@a
    .line 1810
    .local v11, "uid":I
    const-string/jumbo v12, "InputMethodManagerService"

    #@d
    new-instance v13, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v14, "Ignoring updateSystemUiLocked due to an invalid token. uid:"

    #@15
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v13

    #@19
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v13

    #@1d
    .line 1811
    const-string/jumbo v14, " token:"

    #@20
    .line 1810
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v13

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v13

    #@2a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v13

    #@2e
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1812
    return-void

    #@32
    .line 1817
    .end local v11    # "uid":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@35
    move-result-wide v6

    #@36
    .line 1820
    .local v6, "ident":J
    if-eqz p2, :cond_1

    #@38
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_1

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    #@42
    if-eqz v12, :cond_4

    #@44
    .line 1824
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@46
    move/from16 v1, p2

    #@48
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    #@4b
    move-result v8

    #@4c
    .line 1825
    .local v8, "needsToShowImeSwitcher":Z
    move-object/from16 v0, p0

    #@4e
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@50
    if-eqz v12, :cond_2

    #@52
    .line 1826
    move-object/from16 v0, p0

    #@54
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@56
    move-object/from16 v0, p1

    #@58
    move/from16 v1, p2

    #@5a
    move/from16 v2, p3

    #@5c
    invoke-virtual {v12, v0, v1, v2, v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    #@5f
    .line 1829
    :cond_2
    move-object/from16 v0, p0

    #@61
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@63
    move-object/from16 v0, p0

    #@65
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@67
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    move-result-object v5

    #@6b
    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    #@6d
    .line 1830
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_6

    #@6f
    if-eqz v8, :cond_6

    #@71
    .line 1832
    move-object/from16 v0, p0

    #@73
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@75
    .line 1833
    const v13, 0x104041b

    #@78
    .line 1832
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7b
    move-result-object v10

    #@7c
    .line 1835
    .local v10, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@7e
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@84
    .line 1834
    invoke-static {v12, v5, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    #@87
    move-result-object v9

    #@88
    .line 1836
    .local v9, "summary":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@8a
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@8c
    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8f
    move-result-object v12

    #@90
    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@93
    move-result-object v12

    #@94
    .line 1838
    move-object/from16 v0, p0

    #@96
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    #@98
    .line 1836
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    .line 1840
    :try_start_1
    move-object/from16 v0, p0

    #@9d
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@9f
    if-eqz v12, :cond_3

    #@a1
    .line 1841
    move-object/from16 v0, p0

    #@a3
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@a5
    invoke-interface {v12}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a8
    move-result v12

    #@a9
    if-eqz v12, :cond_5

    #@ab
    .line 1863
    .end local v9    # "summary":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ae
    .line 1807
    return-void

    #@af
    .line 1821
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :cond_4
    const/16 p2, 0x0

    #@b1
    goto :goto_0

    #@b2
    .line 1845
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v8    # "needsToShowImeSwitcher":Z
    .restart local v9    # "summary":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@b4
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@b6
    .line 1847
    move-object/from16 v0, p0

    #@b8
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@ba
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@bd
    move-result-object v13

    #@be
    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@c0
    .line 1845
    const/4 v15, 0x0

    #@c1
    .line 1846
    const v16, 0x104041b

    #@c4
    .line 1845
    move/from16 v0, v16

    #@c6
    invoke-virtual {v12, v15, v0, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c9
    .line 1848
    const/4 v12, 0x1

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ce
    goto :goto_1

    #@cf
    .line 1850
    :catch_0
    move-exception v4

    #@d0
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@d1
    .line 1853
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v9    # "summary":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    #@d3
    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    #@d5
    if-eqz v12, :cond_3

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@db
    if-eqz v12, :cond_3

    #@dd
    .line 1857
    move-object/from16 v0, p0

    #@df
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@e1
    .line 1858
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@e3
    .line 1857
    const/4 v14, 0x0

    #@e4
    .line 1858
    const v15, 0x104041b

    #@e7
    .line 1857
    invoke-virtual {v12, v14, v15, v13}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@ea
    .line 1859
    const/4 v12, 0x0

    #@eb
    move-object/from16 v0, p0

    #@ed
    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ef
    goto :goto_1

    #@f0
    .line 1862
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :catchall_0
    move-exception v12

    #@f1
    .line 1863
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f4
    .line 1862
    throw v12
.end method

.method private windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .locals 17
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "controlFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I

    #@0
    .prologue
    .line 2250
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v8

    #@4
    .line 2251
    .local v8, "calledFromValidUser":Z
    const/4 v15, 0x0

    #@5
    .line 2252
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v12

    #@9
    .line 2254
    .local v12, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    move-object/from16 v16, v0

    #@f
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@10
    .line 2266
    :try_start_1
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@14
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1e
    .line 2267
    .local v3, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v3, :cond_0

    #@20
    .line 2268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "unknown client "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 2269
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@31
    move-result-object v5

    #@32
    .line 2268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 2254
    .end local v3    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :catchall_0
    move-exception v2

    #@3f
    :try_start_2
    monitor-exit v16

    #@40
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@41
    .line 2397
    :catchall_1
    move-exception v2

    #@42
    .line 2398
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 2397
    throw v2

    #@46
    .line 2273
    .restart local v3    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@4a
    iget-object v4, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@4c
    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_1

    #@52
    .line 2279
    const-string/jumbo v2, "InputMethodManagerService"

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "Focus gain on non-focused client "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    iget-object v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 2280
    const-string/jumbo v5, " (uid="

    #@6a
    .line 2279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    .line 2280
    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@70
    .line 2279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    .line 2280
    const-string/jumbo v5, " pid="

    #@77
    .line 2279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 2280
    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@7d
    .line 2279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    .line 2280
    const-string/jumbo v5, ")"

    #@84
    .line 2279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8f
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@90
    .line 2281
    const/4 v2, 0x0

    #@91
    .line 2398
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    .line 2281
    return-object v2

    #@95
    .line 2283
    :catch_0
    move-exception v11

    #@96
    .line 2286
    :cond_1
    if-nez v8, :cond_2

    #@98
    .line 2287
    :try_start_5
    const-string/jumbo v2, "InputMethodManagerService"

    #@9b
    const-string/jumbo v4, "A background user is requesting window. Hiding IME."

    #@9e
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 2288
    const-string/jumbo v2, "InputMethodManagerService"

    #@a4
    const-string/jumbo v4, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    #@a7
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 2290
    const/4 v2, 0x0

    #@ab
    const/4 v4, 0x0

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b1
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b2
    .line 2291
    const/4 v2, 0x0

    #@b3
    .line 2398
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b6
    .line 2291
    return-object v2

    #@b7
    .line 2294
    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@bb
    move-object/from16 v0, p3

    #@bd
    if-ne v2, v0, :cond_4

    #@bf
    .line 2295
    const-string/jumbo v2, "InputMethodManagerService"

    #@c2
    new-instance v4, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v5, "Window already focused, ignoring focus gain of: "

    #@ca
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    move-object/from16 v0, p2

    #@d0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    .line 2296
    const-string/jumbo v5, " attribute="

    #@d7
    .line 2295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    move-object/from16 v0, p7

    #@dd
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v4

    #@e1
    .line 2296
    const-string/jumbo v5, ", token = "

    #@e4
    .line 2295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v4

    #@e8
    move-object/from16 v0, p3

    #@ea
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v4

    #@ee
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    .line 2297
    if-eqz p7, :cond_3

    #@f7
    move-object/from16 v2, p0

    #@f9
    move-object/from16 v4, p8

    #@fb
    move/from16 v5, p9

    #@fd
    move-object/from16 v6, p7

    #@ff
    move/from16 v7, p4

    #@101
    .line 2298
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@104
    move-result-object v2

    #@105
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@106
    .line 2398
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@109
    .line 2298
    return-object v2

    #@10a
    :cond_3
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@10b
    .line 2301
    const/4 v2, 0x0

    #@10c
    .line 2398
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10f
    .line 2301
    return-object v2

    #@110
    .line 2303
    :cond_4
    :try_start_a
    move-object/from16 v0, p3

    #@112
    move-object/from16 v1, p0

    #@114
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@116
    .line 2304
    move-object/from16 v0, p0

    #@118
    iput-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@11a
    .line 2314
    move/from16 v0, p5

    #@11c
    and-int/lit16 v2, v0, 0xf0

    #@11e
    .line 2315
    const/16 v4, 0x10

    #@120
    .line 2314
    if-eq v2, v4, :cond_7

    #@122
    .line 2316
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@126
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@129
    move-result-object v2

    #@12a
    .line 2317
    const/4 v4, 0x3

    #@12b
    .line 2316
    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    #@12e
    move-result v10

    #@12f
    .line 2319
    :goto_0
    and-int/lit8 v2, p4, 0x2

    #@131
    if-eqz v2, :cond_8

    #@133
    const/4 v14, 0x1

    #@134
    .line 2325
    .local v14, "isTextEditor":Z
    :goto_1
    const/4 v9, 0x0

    #@135
    .line 2327
    .local v9, "didStart":Z
    and-int/lit8 v2, p5, 0xf

    #@137
    packed-switch v2, :pswitch_data_0

    #@13a
    .line 2392
    .end local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_5
    :goto_2
    :pswitch_0
    if-nez v9, :cond_6

    #@13c
    if-eqz p7, :cond_6

    #@13e
    move-object/from16 v2, p0

    #@140
    move-object/from16 v4, p8

    #@142
    move/from16 v5, p9

    #@144
    move-object/from16 v6, p7

    #@146
    move/from16 v7, p4

    #@148
    .line 2393
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@14b
    move-result-object v15

    #@14c
    :cond_6
    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@14d
    .line 2398
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@150
    .line 2401
    return-object v15

    #@151
    .line 2314
    .end local v9    # "didStart":Z
    .end local v14    # "isTextEditor":Z
    .restart local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_7
    const/4 v10, 0x1

    #@152
    .local v10, "doAutoShow":Z
    goto :goto_0

    #@153
    .line 2319
    .end local v10    # "doAutoShow":Z
    :cond_8
    const/4 v14, 0x0

    #@154
    .restart local v14    # "isTextEditor":Z
    goto :goto_1

    #@155
    .line 2329
    .restart local v9    # "didStart":Z
    :pswitch_1
    if-eqz v14, :cond_a

    #@157
    if-eqz v10, :cond_a

    #@159
    .line 2337
    if-eqz v14, :cond_5

    #@15b
    if-eqz v10, :cond_5

    #@15d
    move/from16 v0, p5

    #@15f
    and-int/lit16 v2, v0, 0x100

    #@161
    if-eqz v2, :cond_5

    #@163
    .line 2347
    if-eqz p7, :cond_9

    #@165
    move-object/from16 v2, p0

    #@167
    move-object/from16 v4, p8

    #@169
    move/from16 v5, p9

    #@16b
    move-object/from16 v6, p7

    #@16d
    move/from16 v7, p4

    #@16f
    .line 2348
    :try_start_c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@172
    move-result-object v15

    #@173
    .line 2350
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v9, 0x1

    #@174
    .line 2352
    .end local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_9
    const/4 v2, 0x1

    #@175
    const/4 v4, 0x0

    #@176
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@17b
    goto :goto_2

    #@17c
    .line 2330
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    :cond_a
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@17f
    move-result v2

    #@180
    if-eqz v2, :cond_5

    #@182
    .line 2335
    const/4 v2, 0x2

    #@183
    const/4 v4, 0x0

    #@184
    move-object/from16 v0, p0

    #@186
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@189
    goto :goto_2

    #@18a
    .line 2359
    :pswitch_2
    move/from16 v0, p5

    #@18c
    and-int/lit16 v2, v0, 0x100

    #@18e
    if-eqz v2, :cond_5

    #@190
    .line 2362
    const/4 v2, 0x0

    #@191
    const/4 v4, 0x0

    #@192
    move-object/from16 v0, p0

    #@194
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@197
    goto :goto_2

    #@198
    .line 2367
    :pswitch_3
    const/4 v2, 0x0

    #@199
    const/4 v4, 0x0

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@19f
    goto :goto_2

    #@1a0
    .line 2370
    :pswitch_4
    move/from16 v0, p5

    #@1a2
    and-int/lit16 v2, v0, 0x100

    #@1a4
    if-eqz v2, :cond_5

    #@1a6
    .line 2373
    if-eqz p7, :cond_b

    #@1a8
    move-object/from16 v2, p0

    #@1aa
    move-object/from16 v4, p8

    #@1ac
    move/from16 v5, p9

    #@1ae
    move-object/from16 v6, p7

    #@1b0
    move/from16 v7, p4

    #@1b2
    .line 2374
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@1b5
    move-result-object v15

    #@1b6
    .line 2376
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v9, 0x1

    #@1b7
    .line 2378
    .end local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_b
    const/4 v2, 0x1

    #@1b8
    const/4 v4, 0x0

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@1be
    goto/16 :goto_2

    #@1c0
    .line 2383
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    :pswitch_5
    if-eqz p7, :cond_c

    #@1c2
    move-object/from16 v2, p0

    #@1c4
    move-object/from16 v4, p8

    #@1c6
    move/from16 v5, p9

    #@1c8
    move-object/from16 v6, p7

    #@1ca
    move/from16 v7, p4

    #@1cc
    .line 2384
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@1cf
    move-result-object v15

    #@1d0
    .line 2386
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v9, 0x1

    #@1d1
    .line 2388
    .end local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_c
    const/4 v2, 0x1

    #@1d2
    const/4 v4, 0x0

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@1d8
    goto/16 :goto_2

    #@1da
    .line 2327
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


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    #@0
    .prologue
    .line 1224
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1225
    return-void

    #@7
    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 1228
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
    .line 1223
    return-void

    #@1a
    .line 1227
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .locals 10
    .param p1, "initial"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1307
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1308
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    .line 1309
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@d
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    #@f
    const/16 v5, 0x3f2

    #@11
    .line 1308
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@18
    .line 1310
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@1b
    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1f
    .line 1313
    .local v3, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_3

    #@21
    .line 1314
    iget-object v7, v3, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@23
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@25
    .line 1315
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    #@27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@29
    .line 1316
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@2b
    .line 1315
    const/16 v1, 0x7d0

    #@2d
    .line 1314
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p0, v7, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@34
    .line 1322
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 1324
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    #@3b
    move-result v0

    #@3c
    invoke-virtual {p0, v0, v6}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@3f
    .line 1326
    :cond_1
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    #@41
    iget-object v5, v3, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@43
    .line 1327
    iget-object v0, v3, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@45
    if-eqz v0, :cond_2

    #@47
    iget-object v0, v3, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@49
    invoke-virtual {v0}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    #@4c
    move-result-object v6

    #@4d
    .line 1328
    :cond_2
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@4f
    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@51
    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@53
    .line 1326
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@56
    return-object v4

    #@57
    .line 1318
    :cond_3
    iget-object v7, v3, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@59
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@5b
    .line 1319
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    #@5d
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@5f
    .line 1320
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@61
    .line 1319
    const/16 v1, 0x7da

    #@63
    .line 1318
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {p0, v7, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@6a
    goto :goto_0
.end method

.method buildInputMethodListLocked(Z)V
    .locals 22
    .param p1, "resetDefaultEnabledIme"    # Z

    #@0
    .prologue
    .line 3033
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@4
    move-object/from16 v19, v0

    #@6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    #@9
    .line 3034
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    move-object/from16 v19, v0

    #@f
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    #@12
    .line 3037
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@16
    move-object/from16 v19, v0

    #@18
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v15

    #@1c
    .line 3043
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    #@1e
    const-string/jumbo v20, "android.view.InputMethod"

    #@21
    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24
    .line 3045
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@28
    move-object/from16 v20, v0

    #@2a
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@2d
    move-result v20

    #@2e
    .line 3044
    const v21, 0x8080

    #@31
    .line 3042
    move-object/from16 v0, v19

    #@33
    move/from16 v1, v21

    #@35
    move/from16 v2, v20

    #@37
    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@3a
    move-result-object v17

    #@3b
    .line 3048
    .local v17, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@3f
    move-object/from16 v19, v0

    #@41
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    #@44
    move-result-object v4

    #@45
    .line 3049
    .local v4, "additionalSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v11, 0x0

    #@46
    .local v11, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@49
    move-result v19

    #@4a
    move/from16 v0, v19

    #@4c
    if-ge v11, v0, :cond_1

    #@4e
    .line 3050
    move-object/from16 v0, v17

    #@50
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v16

    #@54
    check-cast v16, Landroid/content/pm/ResolveInfo;

    #@56
    .line 3051
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    #@58
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5a
    move-object/from16 v18, v0

    #@5c
    .line 3052
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    #@5e
    move-object/from16 v0, v18

    #@60
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@62
    move-object/from16 v19, v0

    #@64
    move-object/from16 v0, v18

    #@66
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@68
    move-object/from16 v20, v0

    #@6a
    move-object/from16 v0, v19

    #@6c
    move-object/from16 v1, v20

    #@6e
    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 3053
    .local v5, "compName":Landroid/content/ComponentName;
    const-string/jumbo v19, "android.permission.BIND_INPUT_METHOD"

    #@74
    .line 3054
    move-object/from16 v0, v18

    #@76
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@78
    move-object/from16 v20, v0

    #@7a
    .line 3053
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v19

    #@7e
    if-nez v19, :cond_0

    #@80
    .line 3055
    const-string/jumbo v19, "InputMethodManagerService"

    #@83
    new-instance v20, Ljava/lang/StringBuilder;

    #@85
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v21, "Skipping input method "

    #@8b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v20

    #@8f
    move-object/from16 v0, v20

    #@91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v20

    #@95
    .line 3056
    const-string/jumbo v21, ": it does not require the permission "

    #@98
    .line 3055
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v20

    #@9c
    .line 3057
    const-string/jumbo v21, "android.permission.BIND_INPUT_METHOD"

    #@9f
    .line 3055
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v20

    #@a3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v20

    #@a7
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 3049
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@ac
    goto :goto_0

    #@ad
    .line 3064
    :cond_0
    :try_start_0
    new-instance v14, Landroid/view/inputmethod/InputMethodInfo;

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@b3
    move-object/from16 v19, v0

    #@b5
    move-object/from16 v0, v19

    #@b7
    move-object/from16 v1, v16

    #@b9
    invoke-direct {v14, v0, v1, v4}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    #@bc
    .line 3065
    .local v14, "p":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@c0
    move-object/from16 v19, v0

    #@c2
    move-object/from16 v0, v19

    #@c4
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c7
    .line 3066
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@ca
    move-result-object v12

    #@cb
    .line 3067
    .local v12, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@cf
    move-object/from16 v19, v0

    #@d1
    move-object/from16 v0, v19

    #@d3
    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d6
    goto :goto_1

    #@d7
    .line 3072
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v8

    #@d8
    .line 3073
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "InputMethodManagerService"

    #@db
    new-instance v20, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v21, "Unable to load input method "

    #@e3
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v20

    #@e7
    move-object/from16 v0, v20

    #@e9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v20

    #@ed
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v20

    #@f1
    move-object/from16 v0, v19

    #@f3
    move-object/from16 v1, v20

    #@f5
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f8
    goto :goto_1

    #@f9
    .line 3078
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    if-nez p1, :cond_3

    #@fb
    .line 3079
    const/4 v9, 0x0

    #@fc
    .line 3080
    .local v9, "enabledImeFound":Z
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@100
    move-object/from16 v19, v0

    #@102
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@105
    move-result-object v10

    #@106
    .line 3081
    .local v10, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@109
    move-result v3

    #@10a
    .line 3082
    .local v3, "N":I
    const/4 v11, 0x0

    #@10b
    :goto_2
    if-ge v11, v3, :cond_2

    #@10d
    .line 3083
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@110
    move-result-object v13

    #@111
    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    #@113
    .line 3084
    .local v13, "imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@117
    move-object/from16 v19, v0

    #@119
    move-object/from16 v0, v19

    #@11b
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11e
    move-result v19

    #@11f
    if-eqz v19, :cond_4

    #@121
    .line 3085
    const/4 v9, 0x1

    #@122
    .line 3089
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-nez v9, :cond_3

    #@124
    .line 3090
    const-string/jumbo v19, "InputMethodManagerService"

    #@127
    const-string/jumbo v20, "All the enabled IMEs are gone. Reset default enabled IMEs."

    #@12a
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 3091
    const/16 p1, 0x1

    #@12f
    .line 3092
    .local p1, "resetDefaultEnabledIme":Z
    const-string/jumbo v19, ""

    #@132
    move-object/from16 v0, p0

    #@134
    move-object/from16 v1, v19

    #@136
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@139
    .line 3096
    .end local v3    # "N":I
    .end local v9    # "enabledImeFound":Z
    .end local v10    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local p1    # "resetDefaultEnabledIme":Z
    :cond_3
    if-eqz p1, :cond_5

    #@13b
    .line 3098
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@13f
    move-object/from16 v19, v0

    #@141
    move-object/from16 v0, p0

    #@143
    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@145
    move/from16 v20, v0

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@14b
    move-object/from16 v21, v0

    #@14d
    invoke-static/range {v19 .. v21}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    #@150
    move-result-object v6

    #@151
    .line 3099
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@154
    move-result v3

    #@155
    .line 3100
    .restart local v3    # "N":I
    const/4 v11, 0x0

    #@156
    :goto_3
    if-ge v11, v3, :cond_5

    #@158
    .line 3101
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15b
    move-result-object v13

    #@15c
    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    #@15e
    .line 3105
    .restart local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@161
    move-result-object v19

    #@162
    const/16 v20, 0x1

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, v19

    #@168
    move/from16 v2, v20

    #@16a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    #@16d
    .line 3100
    add-int/lit8 v11, v11, 0x1

    #@16f
    goto :goto_3

    #@170
    .line 3082
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v9    # "enabledImeFound":Z
    .restart local v10    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p1, "resetDefaultEnabledIme":Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@172
    goto :goto_2

    #@173
    .line 3109
    .end local v3    # "N":I
    .end local v9    # "enabledImeFound":Z
    .end local v10    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "resetDefaultEnabledIme":Z
    :cond_5
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@177
    move-object/from16 v19, v0

    #@179
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@17c
    move-result-object v7

    #@17d
    .line 3110
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@180
    move-result v19

    #@181
    if-nez v19, :cond_6

    #@183
    .line 3111
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@187
    move-object/from16 v19, v0

    #@189
    move-object/from16 v0, v19

    #@18b
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@18e
    move-result v19

    #@18f
    if-nez v19, :cond_7

    #@191
    .line 3112
    const-string/jumbo v19, "InputMethodManagerService"

    #@194
    const-string/jumbo v20, "Default IME is uninstalled. Choose new default IME."

    #@197
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19a
    .line 3113
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    #@19d
    move-result v19

    #@19e
    if-eqz v19, :cond_6

    #@1a0
    .line 3114
    const/16 v19, 0x1

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    move/from16 v1, v19

    #@1a6
    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    #@1a9
    .line 3125
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@1ad
    move-object/from16 v19, v0

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1b3
    move-object/from16 v20, v0

    #@1b5
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    #@1b8
    .line 3028
    return-void

    #@1b9
    .line 3118
    :cond_7
    const/16 v19, 0x1

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    move/from16 v1, v19

    #@1bf
    invoke-virtual {v0, v7, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    #@1c2
    goto :goto_4
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    #@0
    .prologue
    .line 1618
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@5
    .line 1619
    const/4 v0, 0x0

    #@6
    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@8
    .line 1620
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@b
    .line 1617
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1642
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1643
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
    .line 1644
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1647
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@21
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@24
    .line 1648
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@26
    .line 1649
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@28
    .line 1651
    .end local v1    # "cs$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1652
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2e
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@30
    const/4 v4, 0x0

    #@31
    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    #@34
    .line 1641
    :cond_2
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2648
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2649
    return-void

    #@7
    .line 2651
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 2653
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 2654
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    .line 2655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v2

    #@18
    .line 2656
    .local v2, "uid":I
    const-string/jumbo v3, "InputMethodManagerService"

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Ignoring clearLastInputMethodWindowForTransition due to an invalid token. uid:"

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 2657
    const-string/jumbo v6, " token:"

    #@2e
    .line 2656
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3e
    .line 2663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@41
    .line 2658
    return-void

    #@42
    .end local v2    # "uid":I
    :cond_1
    :try_start_3
    monitor-exit v4

    #@43
    .line 2661
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@45
    invoke-virtual {v3}, Landroid/view/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@48
    .line 2663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 2647
    return-void

    #@4c
    .line 2653
    :catchall_0
    move-exception v3

    #@4d
    :try_start_4
    monitor-exit v4

    #@4e
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4f
    .line 2662
    :catchall_1
    move-exception v3

    #@50
    .line 2663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 2662
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3915
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v12, "android.permission.DUMP"

    #@5
    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v11

    #@9
    if-eqz v11, :cond_0

    #@b
    .line 3918
    new-instance v11, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v12, "Permission Denial: can\'t dump InputMethodManager from from pid="

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    .line 3919
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v12

    #@1b
    .line 3918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v11

    #@1f
    .line 3920
    const-string/jumbo v12, ", uid="

    #@22
    .line 3918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v11

    #@26
    .line 3920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v12

    #@2a
    .line 3918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v11

    #@2e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 3921
    return-void

    #@38
    .line 3928
    :cond_0
    new-instance v10, Landroid/util/PrintWriterPrinter;

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-direct {v10, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@3f
    .line 3930
    .local v10, "p":Landroid/util/Printer;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@41
    monitor-enter v12

    #@42
    .line 3931
    :try_start_0
    const-string/jumbo v11, "Current Input Method Manager state:"

    #@45
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@48
    .line 3932
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v1

    #@4e
    .line 3933
    .local v1, "N":I
    const-string/jumbo v11, "  Input Methods:"

    #@51
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@54
    .line 3934
    const/4 v7, 0x0

    #@55
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    #@57
    .line 3935
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v8

    #@5d
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    #@5f
    .line 3936
    .local v8, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v13, "  InputMethod #"

    #@67
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v11

    #@6b
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v11

    #@6f
    const-string/jumbo v13, ":"

    #@72
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@7d
    .line 3937
    const-string/jumbo v11, "    "

    #@80
    invoke-virtual {v8, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@83
    .line 3934
    add-int/lit8 v7, v7, 0x1

    #@85
    goto :goto_0

    #@86
    .line 3939
    .end local v8    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const-string/jumbo v11, "  Clients:"

    #@89
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@8c
    .line 3940
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@8e
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@91
    move-result-object v11

    #@92
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v3

    #@96
    .local v3, "ci$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v11

    #@9a
    if-eqz v11, :cond_2

    #@9c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v2

    #@a0
    check-cast v2, Lcom/android/server/InputMethodManagerService$ClientState;

    #@a2
    .line 3941
    .local v2, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v11, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v13, "  Client "

    #@aa
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v11

    #@b2
    const-string/jumbo v13, ":"

    #@b5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v11

    #@bd
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@c0
    .line 3942
    new-instance v11, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v13, "    client="

    #@c8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v11

    #@cc
    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@ce
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v11

    #@d2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v11

    #@d6
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@d9
    .line 3943
    new-instance v11, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v13, "    inputContext="

    #@e1
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v11

    #@e5
    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    #@e7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v11

    #@eb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v11

    #@ef
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@f2
    .line 3944
    new-instance v11, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v13, "    sessionRequested="

    #@fa
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v11

    #@fe
    iget-boolean v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@100
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@103
    move-result-object v11

    #@104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v11

    #@108
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@10b
    .line 3945
    new-instance v11, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v13, "    curSession="

    #@113
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v11

    #@117
    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@119
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v11

    #@11d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v11

    #@121
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@124
    goto/16 :goto_1

    #@126
    .line 3930
    .end local v1    # "N":I
    .end local v2    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v3    # "ci$iterator":Ljava/util/Iterator;
    .end local v7    # "i":I
    :catchall_0
    move-exception v11

    #@127
    monitor-exit v12

    #@128
    throw v11

    #@129
    .line 3947
    .restart local v1    # "N":I
    .restart local v3    # "ci$iterator":Ljava/util/Iterator;
    .restart local v7    # "i":I
    :cond_2
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v13, "  mCurMethodId="

    #@131
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v11

    #@135
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@137
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v11

    #@13b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v11

    #@13f
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@142
    .line 3948
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@144
    .line 3949
    .local v4, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v11, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v13, "  mCurClient="

    #@14c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v11

    #@150
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v11

    #@154
    const-string/jumbo v13, " mCurSeq="

    #@157
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v11

    #@15b
    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@15d
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@160
    move-result-object v11

    #@161
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v11

    #@165
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@168
    .line 3950
    new-instance v11, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v13, "  mCurFocusedWindow="

    #@170
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v11

    #@174
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@176
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v11

    #@17a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v11

    #@17e
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@181
    .line 3951
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@183
    .line 3952
    .local v6, "focusedWindowClient":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v11, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v13, "  mCurFocusedWindowClient="

    #@18b
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v11

    #@18f
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v11

    #@193
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v11

    #@197
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@19a
    .line 3953
    new-instance v11, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v13, "  mCurId="

    #@1a2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v11

    #@1a6
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@1a8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v11

    #@1ac
    const-string/jumbo v13, " mHaveConnect="

    #@1af
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v11

    #@1b3
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@1b5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v11

    #@1b9
    .line 3954
    const-string/jumbo v13, " mBoundToMethod="

    #@1bc
    .line 3953
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v11

    #@1c0
    .line 3954
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@1c2
    .line 3953
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v11

    #@1c6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v11

    #@1ca
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1cd
    .line 3955
    new-instance v11, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    const-string/jumbo v13, "  mCurToken="

    #@1d5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v11

    #@1d9
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1db
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v11

    #@1df
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e2
    move-result-object v11

    #@1e3
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1e6
    .line 3956
    new-instance v11, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v13, "  mCurIntent="

    #@1ee
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v11

    #@1f2
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@1f4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v11

    #@1f8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v11

    #@1fc
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1ff
    .line 3957
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@201
    .line 3958
    .local v9, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v11, Ljava/lang/StringBuilder;

    #@203
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    const-string/jumbo v13, "  mCurMethod="

    #@209
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v11

    #@20d
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@20f
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v11

    #@213
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@216
    move-result-object v11

    #@217
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@21a
    .line 3959
    new-instance v11, Ljava/lang/StringBuilder;

    #@21c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@21f
    const-string/jumbo v13, "  mEnabledSession="

    #@222
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v11

    #@226
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@228
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v11

    #@22c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22f
    move-result-object v11

    #@230
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@233
    .line 3960
    new-instance v11, Ljava/lang/StringBuilder;

    #@235
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@238
    const-string/jumbo v13, "  mImeWindowVis="

    #@23b
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v11

    #@23f
    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@241
    invoke-static {v13}, Lcom/android/server/InputMethodManagerService;->imeWindowStatusToString(I)Ljava/lang/String;

    #@244
    move-result-object v13

    #@245
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v11

    #@249
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v11

    #@24d
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@250
    .line 3961
    new-instance v11, Ljava/lang/StringBuilder;

    #@252
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@255
    const-string/jumbo v13, "  mShowRequested="

    #@258
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v11

    #@25c
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@25e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@261
    move-result-object v11

    #@262
    .line 3962
    const-string/jumbo v13, " mShowExplicitlyRequested="

    #@265
    .line 3961
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v11

    #@269
    .line 3962
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@26b
    .line 3961
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v11

    #@26f
    .line 3963
    const-string/jumbo v13, " mShowForced="

    #@272
    .line 3961
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v11

    #@276
    .line 3963
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@278
    .line 3961
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v11

    #@27c
    .line 3964
    const-string/jumbo v13, " mInputShown="

    #@27f
    .line 3961
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v11

    #@283
    .line 3964
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@285
    .line 3961
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@288
    move-result-object v11

    #@289
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28c
    move-result-object v11

    #@28d
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@290
    .line 3965
    new-instance v11, Ljava/lang/StringBuilder;

    #@292
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@295
    const-string/jumbo v13, "  mCurUserActionNotificationSequenceNumber="

    #@298
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v11

    #@29c
    .line 3966
    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@29e
    .line 3965
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v11

    #@2a2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v11

    #@2a6
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2a9
    .line 3967
    new-instance v11, Ljava/lang/StringBuilder;

    #@2ab
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2ae
    const-string/jumbo v13, "  mSystemReady="

    #@2b1
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v11

    #@2b5
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@2b7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v11

    #@2bb
    const-string/jumbo v13, " mInteractive="

    #@2be
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v11

    #@2c2
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@2c4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v11

    #@2c8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v11

    #@2cc
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2cf
    .line 3968
    new-instance v11, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    const-string/jumbo v13, "  mSettingsObserver="

    #@2d7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v11

    #@2db
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@2dd
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v11

    #@2e1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e4
    move-result-object v11

    #@2e5
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2e8
    .line 3969
    const-string/jumbo v11, "  mSwitchingController:"

    #@2eb
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2ee
    .line 3970
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@2f0
    invoke-virtual {v11, v10}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    #@2f3
    .line 3971
    const-string/jumbo v11, "  mSettings:"

    #@2f6
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f9
    .line 3972
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2fb
    const-string/jumbo v13, "    "

    #@2fe
    invoke-virtual {v11, v10, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@301
    monitor-exit v12

    #@302
    .line 3975
    const-string/jumbo v11, " "

    #@305
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@308
    .line 3976
    if-eqz v4, :cond_4

    #@30a
    .line 3977
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@30d
    .line 3979
    :try_start_2
    iget-object v11, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@30f
    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@312
    move-result-object v11

    #@313
    move-object/from16 v0, p3

    #@315
    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@318
    .line 3987
    :goto_2
    if-eqz v6, :cond_3

    #@31a
    if-eq v4, v6, :cond_3

    #@31c
    .line 3988
    const-string/jumbo v11, " "

    #@31f
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@322
    .line 3989
    const-string/jumbo v11, "Warning: Current input method client doesn\'t match the last focused. window."

    #@325
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@328
    .line 3991
    const-string/jumbo v11, "Dumping input method client in the last focused window just in case."

    #@32b
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@32e
    .line 3992
    const-string/jumbo v11, " "

    #@331
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@334
    .line 3993
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@337
    .line 3995
    :try_start_3
    iget-object v11, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@339
    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@33c
    move-result-object v11

    #@33d
    move-object/from16 v0, p3

    #@33f
    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@342
    .line 4001
    :cond_3
    :goto_3
    const-string/jumbo v11, " "

    #@345
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@348
    .line 4002
    if-eqz v9, :cond_5

    #@34a
    .line 4003
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@34d
    .line 4005
    :try_start_4
    invoke-interface {v9}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    #@350
    move-result-object v11

    #@351
    move-object/from16 v0, p3

    #@353
    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    #@356
    .line 3914
    :goto_4
    return-void

    #@357
    .line 3980
    :catch_0
    move-exception v5

    #@358
    .line 3981
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    #@35a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@35d
    const-string/jumbo v12, "Input method client dead: "

    #@360
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@363
    move-result-object v11

    #@364
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v11

    #@368
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36b
    move-result-object v11

    #@36c
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@36f
    goto :goto_2

    #@370
    .line 3984
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v11, "No input method client."

    #@373
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@376
    goto :goto_2

    #@377
    .line 3996
    :catch_1
    move-exception v5

    #@378
    .line 3997
    .restart local v5    # "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    #@37a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@37d
    const-string/jumbo v12, "Input method client in focused window dead: "

    #@380
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v11

    #@384
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@387
    move-result-object v11

    #@388
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38b
    move-result-object v11

    #@38c
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@38f
    goto :goto_3

    #@390
    .line 4006
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    #@391
    .line 4007
    .restart local v5    # "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    #@393
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@396
    const-string/jumbo v12, "Input method service dead: "

    #@399
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v11

    #@39d
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v11

    #@3a1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a4
    move-result-object v11

    #@3a5
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3a8
    goto :goto_4

    #@3a9
    .line 4010
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string/jumbo v11, "No input method service."

    #@3ac
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3af
    goto :goto_4
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1253
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/os/Binder;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1254
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1252
    :goto_0
    return-void

    #@e
    .line 1256
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    #@11
    .line 1257
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    #@14
    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    #@0
    .prologue
    .line 1524
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    #@0
    .prologue
    .line 3562
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3563
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 3565
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v0

    #@b
    .line 3566
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
    .line 3565
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
    .line 1187
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 1190
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
    .line 1203
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1206
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v2

    #@e
    .line 1208
    if-nez p1, :cond_1

    #@10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1209
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
    .line 1213
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    if-nez v0, :cond_2

    #@20
    .line 1214
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
    .line 1211
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
    .line 1216
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@31
    .line 1217
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@33
    .line 1216
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
    .line 1206
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
    .line 1179
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
    .line 2643
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

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
    .line 2580
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 2581
    return-object v8

    #@8
    .line 2583
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v6

    #@b
    .line 2584
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@d
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    #@10
    move-result-object v1

    #@11
    .line 2586
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
    .line 2587
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
    .line 2586
    if-eqz v5, :cond_2

    #@27
    :cond_1
    monitor-exit v6

    #@28
    .line 2587
    return-object v8

    #@29
    .line 2588
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
    .line 2589
    .local v2, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3

    #@35
    monitor-exit v6

    #@36
    return-object v8

    #@37
    .line 2591
    :cond_3
    :try_start_2
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@39
    check-cast v5, Ljava/lang/String;

    #@3b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3e
    move-result v3

    #@3f
    .line 2593
    .local v3, "lastSubtypeHash":I
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@42
    move-result v4

    #@43
    .line 2594
    .local v4, "lastSubtypeId":I
    if-ltz v4, :cond_4

    #@45
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    move-result v5

    #@49
    if-lt v4, v5, :cond_5

    #@4b
    :cond_4
    monitor-exit v6

    #@4c
    .line 2595
    return-object v8

    #@4d
    .line 2597
    :cond_5
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    move-result-object v5

    #@51
    monitor-exit v6

    #@52
    return-object v5

    #@53
    .line 2598
    .end local v3    # "lastSubtypeHash":I
    .end local v4    # "lastSubtypeId":I
    :catch_0
    move-exception v0

    #@54
    .local v0, "e":Ljava/lang/NumberFormatException;
    monitor-exit v6

    #@55
    .line 2599
    return-object v8

    #@56
    .line 2583
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 8

    #@0
    .prologue
    .line 3613
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v7

    #@3
    .line 3614
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3615
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@a
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 3621
    const-string/jumbo v6, "voice"

    #@13
    .line 3620
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    #@16
    move-result-object v2

    #@17
    .line 3622
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v2, :cond_0

    #@19
    .line 3623
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 3624
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@20
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v7

    #@24
    .line 3626
    return-object v3

    #@25
    .line 3628
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
    .line 3629
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 3630
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
    .line 3631
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    goto :goto_0

    #@5a
    .line 3613
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
    .line 3634
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2782
    iget v11, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v11, :sswitch_data_0

    #@5
    .line 2972
    const/4 v11, 0x0

    #@6
    return v11

    #@7
    .line 2785
    :sswitch_0
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@9
    packed-switch v11, :pswitch_data_0

    #@c
    .line 2799
    const-string/jumbo v11, "InputMethodManagerService"

    #@f
    new-instance v12, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v13, "Unknown subtype picker mode = "

    #@17
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v12

    #@1b
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@1d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v12

    #@21
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v12

    #@25
    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 2800
    const/4 v11, 0x0

    #@29
    return v11

    #@2a
    .line 2790
    :pswitch_0
    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@2c
    .line 2802
    :goto_0
    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    #@2f
    .line 2803
    const/4 v11, 0x1

    #@30
    return v11

    #@31
    .line 2793
    :pswitch_1
    const/4 v10, 0x1

    #@32
    .line 2794
    .local v10, "showAuxSubtypes":Z
    goto :goto_0

    #@33
    .line 2796
    .end local v10    # "showAuxSubtypes":Z
    :pswitch_2
    const/4 v10, 0x0

    #@34
    .line 2797
    .restart local v10    # "showAuxSubtypes":Z
    goto :goto_0

    #@35
    .line 2806
    .end local v10    # "showAuxSubtypes":Z
    :sswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v11, Ljava/lang/String;

    #@39
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    #@3c
    .line 2807
    const/4 v11, 0x1

    #@3d
    return v11

    #@3e
    .line 2810
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    #@41
    .line 2811
    const/4 v11, 0x1

    #@42
    return v11

    #@43
    .line 2817
    :sswitch_3
    :try_start_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45
    check-cast v11, Lcom/android/internal/view/IInputMethod;

    #@47
    invoke-interface {v11}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    #@4a
    .line 2821
    :goto_1
    const/4 v11, 0x1

    #@4b
    return v11

    #@4c
    .line 2823
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@50
    .line 2825
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@52
    check-cast v11, Lcom/android/internal/view/IInputMethod;

    #@54
    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@56
    check-cast v12, Landroid/view/inputmethod/InputBinding;

    #@58
    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a

    #@5b
    .line 2828
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@5e
    .line 2829
    const/4 v11, 0x1

    #@5f
    return v11

    #@60
    .line 2831
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@64
    .line 2835
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@66
    check-cast v11, Lcom/android/internal/view/IInputMethod;

    #@68
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@6a
    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6c
    check-cast v12, Landroid/os/ResultReceiver;

    #@6e
    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    #@71
    .line 2838
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@74
    .line 2839
    const/4 v11, 0x1

    #@75
    return v11

    #@76
    .line 2841
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@7a
    .line 2845
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@7c
    check-cast v11, Lcom/android/internal/view/IInputMethod;

    #@7e
    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@80
    check-cast v12, Landroid/os/ResultReceiver;

    #@82
    const/4 v13, 0x0

    #@83
    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    #@86
    .line 2848
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@89
    .line 2849
    const/4 v11, 0x1

    #@8a
    return v11

    #@8b
    .line 2851
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@8d
    monitor-enter v11

    #@8e
    .line 2852
    const/4 v12, 0x0

    #@8f
    const/4 v13, 0x0

    #@90
    :try_start_4
    invoke-virtual {p0, v12, v13}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@93
    monitor-exit v11

    #@94
    .line 2854
    const/4 v11, 0x1

    #@95
    return v11

    #@96
    .line 2851
    :catchall_0
    move-exception v12

    #@97
    monitor-exit v11

    #@98
    throw v12

    #@99
    .line 2856
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9b
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@9d
    .line 2859
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@9f
    check-cast v11, Lcom/android/internal/view/IInputMethod;

    #@a1
    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a3
    check-cast v12, Landroid/os/IBinder;

    #@a5
    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7

    #@a8
    .line 2862
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ab
    .line 2863
    const/4 v11, 0x1

    #@ac
    return v11

    #@ad
    .line 2865
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@af
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@b1
    .line 2866
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b3
    check-cast v5, Lcom/android/internal/view/IInputMethod;

    #@b5
    .line 2867
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@b7
    check-cast v1, Landroid/view/InputChannel;

    #@b9
    .line 2869
    .local v1, "channel":Landroid/view/InputChannel;
    :try_start_6
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@bb
    check-cast v11, Lcom/android/internal/view/IInputSessionCallback;

    #@bd
    invoke-interface {v5, v1, v11}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@c0
    .line 2874
    if-eqz v1, :cond_0

    #@c2
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@c5
    move-result v11

    #@c6
    if-eqz v11, :cond_0

    #@c8
    .line 2875
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@cb
    .line 2878
    :cond_0
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ce
    .line 2879
    const/4 v11, 0x1

    #@cf
    return v11

    #@d0
    .line 2870
    :catch_0
    move-exception v4

    #@d1
    .line 2874
    .local v4, "e":Landroid/os/RemoteException;
    if-eqz v1, :cond_0

    #@d3
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@d6
    move-result v11

    #@d7
    if-eqz v11, :cond_0

    #@d9
    .line 2875
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@dc
    goto :goto_6

    #@dd
    .line 2871
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v11

    #@de
    .line 2874
    if-eqz v1, :cond_1

    #@e0
    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@e3
    move-result v12

    #@e4
    if-eqz v12, :cond_1

    #@e6
    .line 2875
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@e9
    .line 2871
    :cond_1
    throw v11

    #@ea
    .line 2884
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "channel":Landroid/view/InputChannel;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :sswitch_a
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@ec
    .line 2885
    .local v6, "missingMethods":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ee
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@f0
    .line 2887
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@f2
    check-cast v9, Lcom/android/server/InputMethodManagerService$SessionState;

    #@f4
    .line 2888
    .local v9, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@f7
    .line 2889
    iget-object v13, v9, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@f9
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@fb
    check-cast v11, Lcom/android/internal/view/IInputContext;

    #@fd
    .line 2890
    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@ff
    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    #@101
    .line 2889
    invoke-interface {v13, v11, v6, v12}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    #@104
    .line 2893
    .end local v9    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@107
    .line 2894
    const/4 v11, 0x1

    #@108
    return v11

    #@109
    .line 2897
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "missingMethods":I
    :sswitch_b
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@10b
    .line 2898
    .restart local v6    # "missingMethods":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10d
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@10f
    .line 2900
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@111
    check-cast v9, Lcom/android/server/InputMethodManagerService$SessionState;

    #@113
    .line 2901
    .restart local v9    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@116
    .line 2902
    iget-object v13, v9, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@118
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@11a
    check-cast v11, Lcom/android/internal/view/IInputContext;

    #@11c
    .line 2903
    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@11e
    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    #@120
    .line 2902
    invoke-interface {v13, v11, v6, v12}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    #@123
    .line 2906
    .end local v9    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@126
    .line 2907
    const/4 v11, 0x1

    #@127
    return v11

    #@128
    .line 2914
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "missingMethods":I
    :sswitch_c
    :try_start_9
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12a
    check-cast v11, Lcom/android/internal/view/IInputMethodClient;

    #@12c
    iget v12, p1, Landroid/os/Message;->arg1:I

    #@12e
    iget v13, p1, Landroid/os/Message;->arg2:I

    #@130
    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    #@133
    .line 2918
    :goto_9
    const/4 v11, 0x1

    #@134
    return v11

    #@135
    .line 2920
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@137
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@139
    .line 2921
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13b
    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    #@13d
    .line 2922
    .local v2, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@13f
    check-cast v7, Lcom/android/internal/view/InputBindResult;

    #@141
    .line 2924
    .local v7, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_a
    invoke-interface {v2, v7}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@144
    .line 2930
    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@146
    if-eqz v11, :cond_2

    #@148
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@14b
    move-result v11

    #@14c
    if-eqz v11, :cond_2

    #@14e
    .line 2931
    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@150
    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    #@153
    .line 2934
    :cond_2
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@156
    .line 2935
    const/4 v11, 0x1

    #@157
    return v11

    #@158
    .line 2925
    :catch_1
    move-exception v4

    #@159
    .line 2926
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v11, "InputMethodManagerService"

    #@15c
    new-instance v12, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v13, "Client died receiving input method "

    #@164
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v12

    #@168
    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@16a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v12

    #@16e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v12

    #@172
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@175
    .line 2930
    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@177
    if-eqz v11, :cond_2

    #@179
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@17c
    move-result v11

    #@17d
    if-eqz v11, :cond_2

    #@17f
    .line 2931
    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@181
    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    #@184
    goto :goto_a

    #@185
    .line 2927
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v11

    #@186
    .line 2930
    iget-object v12, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@188
    if-eqz v12, :cond_3

    #@18a
    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@18d
    move-result v12

    #@18e
    if-eqz v12, :cond_3

    #@190
    .line 2931
    iget-object v12, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@192
    invoke-virtual {v12}, Landroid/view/InputChannel;->dispose()V

    #@195
    .line 2927
    :cond_3
    throw v11

    #@196
    .line 2939
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_e
    :try_start_c
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@198
    check-cast v11, Lcom/android/server/InputMethodManagerService$ClientState;

    #@19a
    iget-object v12, v11, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@19c
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@19e
    if-eqz v11, :cond_4

    #@1a0
    const/4 v11, 0x1

    #@1a1
    :goto_b
    invoke-interface {v12, v11}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    #@1a4
    .line 2945
    :goto_c
    const/4 v11, 0x1

    #@1a5
    return v11

    #@1a6
    .line 2939
    :cond_4
    const/4 v11, 0x0

    #@1a7
    goto :goto_b

    #@1a8
    .line 2940
    :catch_2
    move-exception v4

    #@1a9
    .line 2941
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "InputMethodManagerService"

    #@1ac
    new-instance v11, Ljava/lang/StringBuilder;

    #@1ae
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1b1
    const-string/jumbo v13, "Got RemoteException sending setActive(false) notification to pid "

    #@1b4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v13

    #@1b8
    .line 2942
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ba
    check-cast v11, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1bc
    iget v11, v11, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@1be
    .line 2941
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v11

    #@1c2
    .line 2942
    const-string/jumbo v13, " uid "

    #@1c5
    .line 2941
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v13

    #@1c9
    .line 2943
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cb
    check-cast v11, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1cd
    iget v11, v11, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@1cf
    .line 2941
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v11

    #@1d3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v11

    #@1d7
    invoke-static {v12, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1da
    goto :goto_c

    #@1db
    .line 2947
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_f
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@1dd
    if-eqz v11, :cond_5

    #@1df
    const/4 v11, 0x1

    #@1e0
    :goto_d
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    #@1e3
    .line 2948
    const/4 v11, 0x1

    #@1e4
    return v11

    #@1e5
    .line 2947
    :cond_5
    const/4 v11, 0x0

    #@1e6
    goto :goto_d

    #@1e7
    .line 2950
    :sswitch_10
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@1e9
    if-eqz v11, :cond_6

    #@1eb
    const/4 v11, 0x1

    #@1ec
    :goto_e
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    #@1ef
    .line 2951
    const/4 v11, 0x1

    #@1f0
    return v11

    #@1f1
    .line 2950
    :cond_6
    const/4 v11, 0x0

    #@1f2
    goto :goto_e

    #@1f3
    .line 2953
    :sswitch_11
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@1f5
    .line 2954
    .local v8, "sequenceNumber":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f7
    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1f9
    .line 2956
    .local v3, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_d
    iget-object v11, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1fb
    invoke-interface {v11, v8}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    #@1fe
    .line 2964
    :goto_f
    const/4 v11, 0x1

    #@1ff
    return v11

    #@200
    .line 2957
    :catch_3
    move-exception v4

    #@201
    .line 2958
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "InputMethodManagerService"

    #@204
    new-instance v12, Ljava/lang/StringBuilder;

    #@206
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@209
    const-string/jumbo v13, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    #@20c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v12

    #@210
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@213
    move-result-object v12

    #@214
    .line 2960
    const-string/jumbo v13, ") notification to pid "

    #@217
    .line 2958
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v12

    #@21b
    .line 2961
    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@21d
    .line 2958
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@220
    move-result-object v12

    #@221
    .line 2961
    const-string/jumbo v13, " uid "

    #@224
    .line 2958
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v12

    #@228
    .line 2962
    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@22a
    .line 2958
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v12

    #@22e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@231
    move-result-object v12

    #@232
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@235
    goto :goto_f

    #@236
    .line 2969
    .end local v3    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "sequenceNumber":I
    :sswitch_12
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@238
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@23a
    const/4 v13, 0x1

    #@23b
    if-ne v11, v13, :cond_7

    #@23d
    const/4 v11, 0x1

    #@23e
    :goto_10
    invoke-virtual {v12, v11}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    #@241
    .line 2970
    const/4 v11, 0x1

    #@242
    return v11

    #@243
    .line 2969
    :cond_7
    const/4 v11, 0x0

    #@244
    goto :goto_10

    #@245
    .line 2915
    :catch_4
    move-exception v4

    #@246
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@248
    .line 2904
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v6    # "missingMethods":I
    :catch_5
    move-exception v4

    #@249
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    #@24b
    .line 2891
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_6
    move-exception v4

    #@24c
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@24e
    .line 2860
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "missingMethods":I
    :catch_7
    move-exception v4

    #@24f
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@251
    .line 2846
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_8
    move-exception v4

    #@252
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    #@254
    .line 2836
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v4

    #@255
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@257
    .line 2826
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v4

    #@258
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@25a
    .line 2818
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v4

    #@25b
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@25d
    .line 2782
    nop

    #@25e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3f2 -> :sswitch_4
        0x3fc -> :sswitch_5
        0x406 -> :sswitch_6
        0x40b -> :sswitch_7
        0x410 -> :sswitch_8
        0x41a -> :sswitch_9
        0x7d0 -> :sswitch_a
        0x7da -> :sswitch_b
        0xbb8 -> :sswitch_c
        0xbc2 -> :sswitch_d
        0xbcc -> :sswitch_e
        0xbd6 -> :sswitch_f
        0xbe0 -> :sswitch_11
        0xbea -> :sswitch_10
        0xfa0 -> :sswitch_12
    .end sparse-switch

    #@2ac
    .line 2785
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
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2186
    and-int/lit8 v3, p1, 0x1

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 2187
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@8
    if-nez v3, :cond_0

    #@a
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@c
    .line 2186
    if-eqz v3, :cond_1

    #@e
    .line 2189
    :cond_0
    return v2

    #@f
    .line 2191
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@11
    if-eqz v3, :cond_2

    #@13
    and-int/lit8 v3, p1, 0x2

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 2193
    return v2

    #@18
    .line 2204
    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1a
    if-eqz v3, :cond_6

    #@1c
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 2205
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@22
    and-int/lit8 v3, v3, 0x1

    #@24
    if-eqz v3, :cond_5

    #@26
    .line 2207
    .local v1, "shouldHideSoftInput":Z
    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    #@28
    .line 2212
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2c
    .line 2213
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2e
    const/16 v6, 0x406

    #@30
    .line 2212
    invoke-virtual {v4, v6, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@37
    .line 2214
    const/4 v0, 0x1

    #@38
    .line 2218
    .local v0, "res":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@3a
    if-eqz v3, :cond_4

    #@3c
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@3e
    if-eqz v3, :cond_4

    #@40
    .line 2219
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@42
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@44
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@47
    .line 2220
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@49
    .line 2222
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@4b
    .line 2223
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4d
    .line 2224
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@4f
    .line 2225
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@51
    .line 2226
    return v0

    #@52
    .end local v0    # "res":Z
    .end local v1    # "shouldHideSoftInput":Z
    :cond_5
    move v1, v2

    #@53
    .line 2205
    goto :goto_0

    #@54
    :cond_6
    move v1, v2

    #@55
    .line 2204
    goto :goto_0

    #@56
    .line 2216
    .restart local v1    # "shouldHideSoftInput":Z
    :cond_7
    const/4 v0, 0x0

    #@57
    .restart local v0    # "res":Z
    goto :goto_1
.end method

.method hideInputMethodMenu()V
    .locals 2

    #@0
    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 3334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 3332
    return-void

    #@8
    .line 3333
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
    .line 3341
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3342
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@a
    .line 3343
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@c
    .line 3346
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@e
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@10
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@12
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@15
    .line 3347
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@17
    .line 3348
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@19
    .line 3338
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2719
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2720
    return-void

    #@7
    .line 2722
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 2723
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    .line 2724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 2725
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
    .line 2726
    const-string/jumbo v6, " token:"

    #@2a
    .line 2725
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
    .line 2727
    return-void

    #@3b
    .line 2729
    .end local v2    # "uid":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result-wide v0

    #@3f
    .line 2731
    .local v0, "ident":J
    const/4 v3, 0x0

    #@40
    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 2733
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 2718
    return-void

    #@48
    .line 2732
    :catchall_0
    move-exception v3

    #@49
    .line 2733
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2732
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 2722
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
    .line 2154
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2155
    return v7

    #@8
    .line 2157
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    .line 2158
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 2160
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 2161
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v4, :cond_1

    #@17
    if-nez p1, :cond_2

    #@19
    .line 2167
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
    .line 2181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 2170
    return v7

    #@26
    .line 2162
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
    .line 2178
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
    .line 2181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 2178
    return v4

    #@3d
    .line 2172
    :catch_0
    move-exception v0

    #@3e
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3f
    .line 2181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 2173
    return v7

    #@43
    .line 2160
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
    .line 2180
    :catchall_1
    move-exception v4

    #@47
    .line 2181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2180
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
    .line 1885
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1886
    return v8

    #@8
    .line 1888
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v7

    #@b
    .line 1889
    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@d
    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    #@13
    .line 1891
    .local v5, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_3

    #@15
    .line 1892
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 1893
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
    .line 1894
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1895
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    #@26
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@29
    .line 1898
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 1899
    const-string/jumbo v6, "android.text.style.SUGGESTION_PICKED"

    #@33
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@36
    .line 1900
    const-string/jumbo v6, "before"

    #@39
    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 1901
    const-string/jumbo v6, "after"

    #@3f
    aget-object v8, v4, p3

    #@41
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@44
    .line 1902
    const-string/jumbo v6, "hashcode"

    #@47
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    #@4a
    move-result v8

    #@4b
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4e
    .line 1903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@51
    move-result-wide v2

    #@52
    .line 1905
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
    .line 1907
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    .line 1909
    const/4 v6, 0x1

    #@5d
    monitor-exit v7

    #@5e
    return v6

    #@5f
    .line 1906
    :catchall_0
    move-exception v6

    #@60
    .line 1907
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1906
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@64
    .line 1888
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
    .line 1912
    return v8
.end method

.method public notifyUserAction(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    #@0
    .prologue
    .line 2672
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2673
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v1, p1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 2679
    return-void

    #@9
    .line 2681
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
    .line 2682
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    #@15
    .line 2683
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
    .line 2668
    return-void

    #@1e
    .line 2672
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
    .line 1529
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1530
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
    .line 1531
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@19
    .line 1532
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1533
    const-string/jumbo v0, "InputMethodManagerService"

    #@20
    const-string/jumbo v2, "Service connected without a token!"

    #@23
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1534
    const/4 v0, 0x0

    #@27
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 1535
    return-void

    #@2c
    .line 1538
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2e
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@30
    .line 1539
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@32
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@34
    const/16 v5, 0x410

    #@36
    .line 1538
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@3d
    .line 1540
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1541
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@43
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@46
    .line 1542
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@48
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    :cond_1
    monitor-exit v1

    #@4c
    .line 1528
    return-void

    #@4d
    .line 1529
    :catchall_0
    move-exception v0

    #@4e
    monitor-exit v1

    #@4f
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1658
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1661
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1662
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
    .line 1661
    if-eqz v0, :cond_0

    #@17
    .line 1663
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    #@1a
    .line 1666
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@20
    .line 1667
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@22
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@24
    .line 1668
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@27
    .line 1669
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1670
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@2d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@31
    .line 1672
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@33
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@35
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@37
    .line 1671
    const/16 v5, 0xbb8

    #@39
    const/4 v6, 0x3

    #@3a
    .line 1670
    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_0
    monitor-exit v1

    #@42
    .line 1657
    return-void

    #@43
    .line 1658
    :catchall_0
    move-exception v0

    #@44
    monitor-exit v1

    #@45
    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 1550
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@5
    if-eqz v1, :cond_1

    #@7
    if-eqz p1, :cond_1

    #@9
    .line 1552
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
    .line 1553
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1554
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1e
    .line 1555
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
    .line 1557
    const/4 v1, 0x1

    #@2a
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    #@2d
    move-result-object v0

    #@2e
    .line 1558
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 1559
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@34
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@36
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@38
    .line 1560
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    const/16 v5, 0xbc2

    #@3e
    .line 1559
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
    .line 1562
    return-void

    #@47
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1
    monitor-exit v2

    #@48
    .line 1568
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    #@4b
    .line 1549
    return-void

    #@4c
    .line 1550
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1
.end method

.method onSwitchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 843
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 841
    return-void

    #@8
    .line 842
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
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
    .line 1061
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 1062
    :catch_0
    move-exception v0

    #@6
    .line 1065
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1066
    const-string/jumbo v1, "InputMethodManagerService"

    #@d
    const-string/jumbo v2, "Input Method Manager Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 1068
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 826
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 827
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@7
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    .line 831
    .local v0, "currentUserId":I
    if-eq p1, v0, :cond_0

    #@d
    monitor-exit v3

    #@e
    .line 832
    return-void

    #@f
    .line 834
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@11
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@13
    if-eqz v5, :cond_1

    #@15
    :goto_0
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    #@18
    .line 836
    const/4 v1, 0x0

    #@19
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    #@1c
    .line 837
    const/4 v1, 0x1

    #@1d
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v3

    #@21
    .line 825
    return-void

    #@22
    :cond_1
    move v1, v2

    #@23
    .line 834
    goto :goto_0

    #@24
    .line 826
    .end local v0    # "currentUserId":I
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v3

    #@26
    throw v1
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 6
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    #@0
    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1870
    return-void

    #@7
    .line 1872
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 1873
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
    .line 1874
    .local v0, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@16
    if-ge v1, v3, :cond_2

    #@18
    .line 1875
    aget-object v2, p1, v1

    #@1a
    .line 1876
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
    .line 1877
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@26
    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1874
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_2
    monitor-exit v4

    #@2d
    .line 1868
    return-void

    #@2e
    .line 1872
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
    .line 1235
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1236
    return-void

    #@7
    .line 1238
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v2

    #@a
    .line 1239
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
    .line 1240
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_2

    #@18
    .line 1241
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1b
    .line 1242
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    if-ne v1, v0, :cond_1

    #@1f
    .line 1243
    const/4 v1, 0x0

    #@20
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@22
    .line 1245
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@24
    if-ne v1, v0, :cond_2

    #@26
    .line 1246
    const/4 v1, 0x0

    #@27
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_2
    monitor-exit v2

    #@2a
    .line 1234
    return-void

    #@2b
    .line 1238
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 8
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1607
    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1609
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@c
    move-result-object v0

    #@d
    .line 1610
    .local v0, "channels":[Landroid/view/InputChannel;
    iput-boolean v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@f
    .line 1611
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@11
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@13
    .line 1612
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@15
    aget-object v4, v0, v4

    #@17
    .line 1613
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
    .line 1612
    const/16 v6, 0x41a

    #@23
    .line 1611
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@2a
    .line 1606
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .locals 1
    .param p1, "unbindClientReason"    # I

    #@0
    .prologue
    .line 1601
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    .line 1602
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    #@7
    .line 1603
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    #@a
    .line 1600
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 10
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2606
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v7

    #@4
    if-nez v7, :cond_0

    #@6
    .line 2607
    return-void

    #@7
    .line 2611
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
    .line 2612
    :cond_2
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v8

    #@13
    .line 2613
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@15
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    .line 2614
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_3

    #@1d
    monitor-exit v8

    #@1e
    return-void

    #@1f
    .line 2617
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@24
    move-result v9

    #@25
    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    move-result-object v5

    #@29
    .line 2622
    .local v5, "packageInfos":[Ljava/lang/String;
    if-eqz v5, :cond_5

    #@2b
    .line 2623
    :try_start_2
    array-length v6, v5

    #@2c
    .line 2624
    .local v6, "packageNum":I
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_5

    #@2f
    .line 2625
    aget-object v7, v5, v1

    #@31
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_4

    #@3b
    .line 2626
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@3d
    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    #@40
    .line 2627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    move-result-wide v2

    #@44
    .line 2629
    .local v2, "ident":J
    const/4 v7, 0x0

    #@45
    :try_start_3
    invoke-virtual {p0, v7}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .line 2631
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4b
    monitor-exit v8

    #@4c
    .line 2633
    return-void

    #@4d
    .line 2618
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catch_0
    move-exception v0

    #@4e
    .line 2619
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v7, "InputMethodManagerService"

    #@51
    const-string/jumbo v9, "Failed to get package infos"

    #@54
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@57
    monitor-exit v8

    #@58
    .line 2620
    return-void

    #@59
    .line 2630
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :catchall_0
    move-exception v7

    #@5a
    .line 2631
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    .line 2630
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@5e
    .line 2612
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catchall_1
    move-exception v7

    #@5f
    monitor-exit v8

    #@60
    throw v7

    #@61
    .line 2624
    .restart local v1    # "i":I
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .end local v1    # "i":I
    .end local v6    # "packageNum":I
    :cond_5
    monitor-exit v8

    #@65
    .line 2638
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3641
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 3642
    return v5

    #@8
    .line 3644
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 3645
    if-eqz p1, :cond_1

    #@d
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 3646
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
    .line 3647
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@1e
    move-result v2

    #@1f
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@22
    move-result v1

    #@23
    .line 3648
    .local v1, "subtypeId":I
    const/4 v2, -0x1

    #@24
    if-eq v1, v2, :cond_1

    #@26
    .line 3649
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@28
    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3650
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
    .line 3653
    return v5

    #@30
    .line 3644
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
    .line 2760
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2
    if-eq v1, p1, :cond_1

    #@4
    .line 2761
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
    .line 2764
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
    .line 2768
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1c
    .line 2769
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
    .line 2772
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
    .line 2759
    :cond_1
    :goto_1
    return-void

    #@33
    .line 2773
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@35
    .line 2765
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
    .line 1786
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1787
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    .line 1788
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
    .line 1789
    const-string/jumbo v3, " token:"

    #@20
    .line 1788
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
    .line 1790
    return-void

    #@30
    .line 1793
    .end local v0    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@32
    monitor-enter v2

    #@33
    .line 1794
    :try_start_0
    iput p2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@35
    .line 1795
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@37
    .line 1796
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v2

    #@3b
    .line 1785
    return-void

    #@3c
    .line 1793
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
    .line 2426
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2427
    return-void

    #@7
    .line 2429
    :cond_0
    const/4 v0, -0x1

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@b
    .line 2425
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2434
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2435
    return-void

    #@7
    .line 2437
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2438
    if-eqz p3, :cond_1

    #@c
    .line 2440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@14
    .line 2441
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@17
    move-result v2

    #@18
    .line 2440
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@1b
    move-result v0

    #@1c
    .line 2439
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :goto_0
    monitor-exit v1

    #@20
    .line 2433
    return-void

    #@21
    .line 2443
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 2437
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
    .line 3356
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 3357
    return v3

    #@8
    .line 3359
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 3360
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@d
    .line 3361
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@10
    .line 3360
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 3363
    new-instance v2, Ljava/lang/SecurityException;

    #@18
    .line 3364
    const-string/jumbo v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1b
    .line 3363
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 3359
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .line 3368
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-wide v0

    #@26
    .line 3370
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    move-result v2

    #@2a
    .line 3372
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    monitor-exit v3

    #@2e
    .line 3370
    return v2

    #@2f
    .line 3371
    :catchall_1
    move-exception v2

    #@30
    .line 3372
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 3371
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
    .line 3379
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@a
    .line 3380
    .local v2, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_0

    #@c
    .line 3381
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
    .line 3384
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2a
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@2d
    move-result-object v1

    #@2e
    .line 3387
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_3

    #@30
    .line 3388
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
    .line 3389
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
    .line 3392
    return v8

    #@4b
    .line 3395
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4d
    invoke-virtual {v6, p1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    #@50
    .line 3397
    return v7

    #@51
    .line 3399
    .end local v4    # "pair$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    .line 3400
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@58
    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_6

    #@5e
    .line 3403
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@60
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 3404
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
    .line 3409
    :cond_4
    :goto_0
    return v8

    #@71
    .line 3405
    :cond_5
    const-string/jumbo v6, "InputMethodManagerService"

    #@74
    const-string/jumbo v7, "Can\'t find new IME, unsetting the current input method."

    #@77
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 3406
    const-string/jumbo v6, ""

    #@7d
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@80
    goto :goto_0

    #@81
    .line 3413
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
    .line 1997
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 1998
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_0

    #@a
    .line 1999
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
    .line 2003
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_7

    #@2c
    .line 2004
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@2f
    move-result v7

    #@30
    .line 2005
    .local v7, "subtypeCount":I
    if-gtz v7, :cond_1

    #@32
    .line 2006
    return-void

    #@33
    .line 2008
    :cond_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@35
    .line 2010
    .local v6, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_3

    #@37
    if-ge p2, v7, :cond_3

    #@39
    .line 2011
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@3c
    move-result-object v5

    #@3d
    .line 2017
    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    if-eqz v5, :cond_2

    #@3f
    if-nez v6, :cond_4

    #@41
    .line 2018
    :cond_2
    const-string/jumbo v8, "InputMethodManagerService"

    #@44
    new-instance v9, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v10, "Illegal subtype state: old subtype = "

    #@4c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    .line 2019
    const-string/jumbo v10, ", new subtype = "

    #@57
    .line 2018
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 2020
    return-void

    #@67
    .line 2015
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@6a
    move-result-object v5

    #@6b
    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    #@6c
    .line 2022
    :cond_4
    if-eq v5, v6, :cond_6

    #@6e
    .line 2023
    const/4 v8, 0x1

    #@6f
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@72
    .line 2024
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@74
    if-eqz v8, :cond_5

    #@76
    .line 2026
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@78
    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@7a
    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@7c
    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@7f
    .line 2027
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@81
    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 2033
    :cond_5
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@86
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@89
    move-result v8

    #@8a
    invoke-direct {p0, v8, v1, v5}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@8d
    .line 2035
    :cond_6
    return-void

    #@8e
    .line 2028
    :catch_0
    move-exception v0

    #@8f
    .line 2029
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "InputMethodManagerService"

    #@92
    const-string/jumbo v9, "Failed to call changeInputMethodSubtype"

    #@95
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 2030
    return-void

    #@99
    .line 2039
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeCount":I
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9c
    move-result-wide v2

    #@9d
    .line 2043
    .local v2, "ident":J
    const/4 v8, 0x0

    #@9e
    :try_start_1
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@a1
    .line 2047
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@a3
    .line 2049
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@a6
    move-result v8

    #@a7
    if-eqz v8, :cond_8

    #@a9
    .line 2050
    new-instance v4, Landroid/content/Intent;

    #@ab
    const-string/jumbo v8, "android.intent.action.INPUT_METHOD_CHANGED"

    #@ae
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b1
    .line 2051
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    #@b3
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@b6
    .line 2052
    const-string/jumbo v8, "input_method_id"

    #@b9
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@bc
    .line 2053
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@be
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@c0
    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@c3
    .line 2055
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    const/4 v8, 0x2

    #@c4
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c7
    .line 2057
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ca
    .line 2060
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@cc
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@cf
    move-result v8

    #@d0
    .line 2061
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@d3
    move-result-object v9

    #@d4
    .line 2060
    invoke-direct {p0, v8, v1, v9}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@d7
    .line 1996
    return-void

    #@d8
    .line 2056
    :catchall_0
    move-exception v8

    #@d9
    .line 2057
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@dc
    .line 2056
    throw v8
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2558
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2559
    return v8

    #@9
    .line 2561
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    monitor-enter v3

    #@c
    .line 2562
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 2563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    .line 2564
    .local v1, "uid":I
    const-string/jumbo v2, "InputMethodManagerService"

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Ignoring shouldOfferSwitchingToNextInputMethod due to an invalid token. uid:"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 2565
    const-string/jumbo v5, " token:"

    #@2c
    .line 2564
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit v3

    #@3c
    .line 2566
    return v8

    #@3d
    .line 2568
    .end local v1    # "uid":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@3f
    .line 2569
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@41
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@43
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@49
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4b
    const/4 v6, 0x0

    #@4c
    .line 2570
    const/4 v7, 0x1

    #@4d
    .line 2568
    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v0

    #@51
    .line 2571
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    #@53
    monitor-exit v3

    #@54
    .line 2572
    return v8

    #@55
    :cond_2
    monitor-exit v3

    #@56
    .line 2574
    return v9

    #@57
    .line 2561
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    #@58
    monitor-exit v3

    #@59
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
    .line 2098
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4
    .line 2099
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2100
    return v9

    #@9
    .line 2103
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 2104
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@f
    .line 2105
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@11
    .line 2110
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@13
    if-nez v1, :cond_3

    #@15
    .line 2111
    return v9

    #@16
    .line 2106
    :cond_2
    and-int/lit8 v1, p1, 0x1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 2107
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@1c
    goto :goto_0

    #@1d
    .line 2114
    :cond_3
    const/4 v0, 0x0

    #@1e
    .line 2115
    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@20
    if-eqz v1, :cond_7

    #@22
    .line 2117
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@24
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@26
    .line 2118
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    #@29
    move-result v3

    #@2a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2c
    const/16 v5, 0x3fc

    #@2e
    .line 2117
    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@35
    .line 2120
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@37
    .line 2121
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@39
    if-eqz v1, :cond_4

    #@3b
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@3d
    if-eqz v1, :cond_6

    #@3f
    .line 2128
    :cond_4
    :goto_1
    const/4 v0, 0x1

    #@40
    .line 2148
    :cond_5
    :goto_2
    return v0

    #@41
    .line 2123
    :cond_6
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@43
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@45
    const v3, 0xc000001

    #@48
    .line 2122
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@4b
    .line 2126
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@4d
    goto :goto_1

    #@4e
    .line 2129
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@50
    if-eqz v1, :cond_5

    #@52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@55
    move-result-wide v2

    #@56
    .line 2130
    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@58
    const-wide/16 v6, 0xbb8

    #@5a
    add-long/2addr v4, v6

    #@5b
    .line 2129
    cmp-long v1, v2, v4

    #@5d
    if-ltz v1, :cond_5

    #@5f
    .line 2135
    const/4 v1, 0x3

    #@60
    new-array v1, v1, [Ljava/lang/Object;

    #@62
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@64
    aput-object v2, v1, v9

    #@66
    .line 2136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@69
    move-result-wide v2

    #@6a
    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@6c
    sub-long/2addr v2, v4

    #@6d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@70
    move-result-object v2

    #@71
    aput-object v2, v1, v8

    #@73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76
    move-result-object v2

    #@77
    const/4 v3, 0x2

    #@78
    aput-object v2, v1, v3

    #@7a
    .line 2135
    const/16 v2, 0x7d00

    #@7c
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@7f
    .line 2137
    const-string/jumbo v1, "InputMethodManagerService"

    #@82
    const-string/jumbo v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    #@85
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 2138
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8a
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@8d
    .line 2139
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@8f
    const v2, 0x40000001    # 2.0000002f

    #@92
    invoke-direct {p0, v1, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@95
    goto :goto_2
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2451
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2452
    return-void

    #@7
    .line 2454
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    .line 2456
    const/4 v3, 0x2

    #@f
    .line 2455
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 2450
    return-void

    #@18
    .line 2454
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    #@0
    .prologue
    .line 2407
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2408
    return-void

    #@7
    .line 2410
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@c
    if-eqz v0, :cond_1

    #@e
    if-nez p1, :cond_3

    #@10
    .line 2413
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
    .line 2414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@22
    move-result v3

    #@23
    .line 2413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 2414
    const-string/jumbo v3, ": "

    #@2a
    .line 2413
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
    .line 2419
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@3b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@3d
    .line 2420
    const/4 v3, 0x1

    #@3e
    .line 2419
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
    .line 2406
    return-void

    #@47
    .line 2412
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
    .line 2410
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
    .line 2740
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2741
    return-void

    #@7
    .line 2743
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 2744
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    .line 2745
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 2746
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
    .line 2747
    const-string/jumbo v6, " token:"

    #@2a
    .line 2746
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
    .line 2748
    return-void

    #@3b
    .line 2750
    .end local v2    # "uid":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result-wide v0

    #@3f
    .line 2752
    .local v0, "ident":J
    const/4 v3, 0x0

    #@40
    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 2754
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 2739
    return-void

    #@48
    .line 2753
    :catchall_0
    move-exception v3

    #@49
    .line 2754
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2753
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 2743
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
    .line 2067
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2068
    return v8

    #@8
    .line 2070
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    .line 2071
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 2073
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 2074
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v4, :cond_1

    #@17
    if-nez p1, :cond_2

    #@19
    .line 2080
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
    .line 2081
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
    .line 2093
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2082
    return v8

    #@4b
    .line 2075
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
    .line 2090
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
    .line 2093
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 2090
    return v4

    #@62
    .line 2084
    :catch_0
    move-exception v0

    #@63
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@64
    .line 2093
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 2085
    return v8

    #@68
    .line 2073
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
    .line 2092
    :catchall_1
    move-exception v4

    #@6c
    .line 2093
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 2092
    throw v4
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
    .line 1447
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1448
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@9
    return-object v0

    #@a
    .line 1451
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1454
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@10
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@14
    .line 1455
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@16
    move-object v2, v1

    #@17
    .line 1454
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@1a
    return-object v0

    #@1b
    .line 1458
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
    .line 1459
    .local v7, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v7, :cond_2

    #@27
    .line 1460
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
    .line 1463
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    #@46
    .line 1465
    new-instance v0, Landroid/content/Intent;

    #@48
    const-string/jumbo v2, "android.view.InputMethod"

    #@4b
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4e
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@50
    .line 1466
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@52
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@59
    .line 1467
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@5b
    const-string/jumbo v2, "android.intent.extra.client_label"

    #@5e
    .line 1468
    const v3, 0x1040462

    #@61
    .line 1467
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@64
    .line 1469
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@66
    const-string/jumbo v2, "android.intent.extra.client_intent"

    #@69
    .line 1470
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@6b
    new-instance v4, Landroid/content/Intent;

    #@6d
    const-string/jumbo v5, "android.settings.INPUT_METHOD_SETTINGS"

    #@70
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@73
    .line 1469
    invoke-static {v3, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@7a
    .line 1471
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
    .line 1474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@88
    move-result-wide v2

    #@89
    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@8b
    .line 1475
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@8d
    .line 1476
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@93
    .line 1477
    new-instance v0, Landroid/os/Binder;

    #@95
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@98
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@9a
    .line 1479
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
    .line 1480
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@b8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@ba
    .line 1481
    const/16 v3, 0x7db

    #@bc
    .line 1480
    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    .line 1484
    :goto_0
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@c1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@c3
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@c5
    .line 1485
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@c7
    move-object v2, v1

    #@c8
    .line 1484
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@cb
    return-object v0

    #@cc
    .line 1487
    :cond_3
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@ce
    .line 1488
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
    .line 1489
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@df
    .line 1488
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
    .line 1491
    return-object v1

    #@eb
    .line 1482
    :catch_0
    move-exception v6

    #@ec
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 7
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p4, "missingMethods"    # I
    .param p5, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "controlFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1337
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1338
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@7
    return-object v0

    #@8
    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@a
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    #@14
    .line 1342
    .local v1, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v1, :cond_1

    #@16
    .line 1343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "unknown client "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 1344
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v3

    #@28
    .line 1343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1347
    :cond_1
    if-nez p5, :cond_2

    #@36
    .line 1348
    const-string/jumbo v0, "InputMethodManagerService"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Ignoring startInput with null EditorInfo. uid="

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 1349
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@47
    .line 1348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 1349
    const-string/jumbo v3, " pid="

    #@4e
    .line 1348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    .line 1349
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@54
    .line 1348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 1350
    return-object v4

    #@60
    .line 1354
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@62
    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@64
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@67
    move-result v0

    #@68
    if-nez v0, :cond_3

    #@6a
    .line 1360
    const-string/jumbo v0, "InputMethodManagerService"

    #@6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v3, "Starting input on non-focused client "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    .line 1361
    const-string/jumbo v3, " (uid="

    #@82
    .line 1360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 1361
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@88
    .line 1360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 1361
    const-string/jumbo v3, " pid="

    #@8f
    .line 1360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    .line 1361
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@95
    .line 1360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    .line 1361
    const-string/jumbo v3, ")"

    #@9c
    .line 1360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    .line 1362
    return-object v4

    #@a8
    .line 1364
    :catch_0
    move-exception v6

    #@a9
    :cond_3
    move-object v0, p0

    #@aa
    move-object v2, p3

    #@ab
    move v3, p4

    #@ac
    move-object v4, p5

    #@ad
    move v5, p6

    #@ae
    .line 1367
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@b1
    move-result-object v0

    #@b2
    return-object v0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .locals 7
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "controlFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I

    #@0
    .prologue
    .line 2235
    if-eqz p3, :cond_0

    #@2
    .line 2236
    invoke-direct/range {p0 .. p9}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    :cond_0
    move-object v0, p0

    #@8
    move v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p8

    #@b
    move/from16 v4, p9

    #@d
    move-object v5, p7

    #@e
    move v6, p4

    #@f
    .line 2239
    invoke-direct/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 10
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"    # I
    .param p4, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p5, "controlFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 1375
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1376
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@9
    return-object v0

    #@a
    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@c
    iget v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@e
    .line 1380
    iget-object v5, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@10
    .line 1379
    invoke-static {v0, v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1381
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
    .line 1382
    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@27
    .line 1381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1382
    const-string/jumbo v2, " package="

    #@2e
    .line 1381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 1382
    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@34
    .line 1381
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
    .line 1383
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@41
    return-object v0

    #@42
    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@44
    if-eq v0, p1, :cond_2

    #@46
    .line 1388
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    #@49
    move-result v0

    #@4a
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    #@4c
    .line 1391
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    #@4f
    .line 1396
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 1397
    iget-object v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@55
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@57
    .line 1398
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@59
    if-eqz v0, :cond_4

    #@5b
    move v0, v2

    #@5c
    :goto_0
    const/16 v6, 0xbcc

    #@5e
    .line 1397
    invoke-virtual {v5, v6, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {p0, v4, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@65
    .line 1403
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@67
    add-int/lit8 v0, v0, 0x1

    #@69
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@6b
    .line 1404
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@6d
    if-gtz v0, :cond_3

    #@6f
    iput v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@71
    .line 1405
    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@73
    .line 1406
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@75
    .line 1407
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    #@77
    .line 1408
    iput-object p4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@79
    .line 1411
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@7b
    if-eqz v0, :cond_9

    #@7d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@7f
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@81
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_9

    #@87
    .line 1412
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@89
    if-eqz v0, :cond_6

    #@8b
    .line 1416
    and-int/lit16 v0, p5, 0x100

    #@8d
    if-eqz v0, :cond_5

    #@8f
    .line 1415
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    #@92
    move-result-object v0

    #@93
    return-object v0

    #@94
    :cond_4
    move v0, v3

    #@95
    .line 1398
    goto :goto_0

    #@96
    :cond_5
    move v2, v3

    #@97
    .line 1416
    goto :goto_1

    #@98
    .line 1418
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@9a
    if-eqz v0, :cond_9

    #@9c
    .line 1419
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@9e
    if-eqz v0, :cond_7

    #@a0
    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@a3
    .line 1423
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@a5
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@a7
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@a9
    .line 1424
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@ab
    move-object v2, v1

    #@ac
    .line 1423
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@af
    return-object v0

    #@b0
    .line 1425
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b3
    move-result-wide v4

    #@b4
    .line 1426
    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@b6
    const-wide/16 v8, 0xbb8

    #@b8
    add-long/2addr v6, v8

    #@b9
    .line 1425
    cmp-long v0, v4, v6

    #@bb
    if-gez v0, :cond_8

    #@bd
    .line 1434
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@bf
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@c1
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@c3
    .line 1435
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@c5
    move-object v2, v1

    #@c6
    .line 1434
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@c9
    return-object v0

    #@ca
    .line 1437
    :cond_8
    const/4 v0, 0x3

    #@cb
    new-array v0, v0, [Ljava/lang/Object;

    #@cd
    .line 1438
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@cf
    aput-object v1, v0, v3

    #@d1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d4
    move-result-wide v4

    #@d5
    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@d7
    sub-long/2addr v4, v6

    #@d8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@db
    move-result-object v1

    #@dc
    aput-object v1, v0, v2

    #@de
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e1
    move-result-object v1

    #@e2
    const/4 v2, 0x2

    #@e3
    aput-object v1, v0, v2

    #@e5
    .line 1437
    const/16 v1, 0x7d00

    #@e7
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@ea
    .line 1443
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;

    #@ed
    move-result-object v0

    #@ee
    return-object v0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2462
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v17

    #@4
    if-nez v17, :cond_0

    #@6
    .line 2463
    const/16 v17, 0x0

    #@8
    return v17

    #@9
    .line 2465
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    move-object/from16 v18, v0

    #@f
    monitor-enter v18

    #@10
    .line 2466
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
    .line 2468
    .local v11, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    #@1c
    .line 2469
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
    .line 2473
    :goto_0
    const/16 v16, 0x0

    #@32
    .line 2474
    .local v16, "targetLastImiId":Ljava/lang/String;
    const/4 v15, -0x1

    #@33
    .line 2475
    .local v15, "subtypeId":I
    if-eqz v11, :cond_2

    #@35
    if-eqz v12, :cond_2

    #@37
    .line 2476
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
    .line 2477
    .local v9, "imiIdIsSame":Z
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@4b
    move-object/from16 v17, v0

    #@4d
    check-cast v17, Ljava/lang/String;

    #@4f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@52
    move-result v13

    #@53
    .line 2478
    .local v13, "lastSubtypeHash":I
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@57
    move-object/from16 v17, v0

    #@59
    if-nez v17, :cond_5

    #@5b
    const/4 v5, -0x1

    #@5c
    .line 2482
    .local v5, "currentSubtypeHash":I
    :goto_1
    if-eqz v9, :cond_1

    #@5e
    if-eq v13, v5, :cond_2

    #@60
    .line 2483
    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@62
    move-object/from16 v16, v0

    #@64
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    #@66
    .line 2484
    .local v16, "targetLastImiId":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@69
    move-result v15

    #@6a
    .line 2488
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6d
    move-result v17

    #@6e
    if-eqz v17, :cond_3

    #@70
    .line 2489
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@74
    move-object/from16 v17, v0

    #@76
    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    #@79
    move-result v17

    #@7a
    if-eqz v17, :cond_6

    #@7c
    .line 2519
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7f
    move-result v17

    #@80
    if-nez v17, :cond_9

    #@82
    .line 2524
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p1

    #@86
    move-object/from16 v2, v16

    #@88
    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8b
    .line 2525
    const/16 v17, 0x1

    #@8d
    monitor-exit v18

    #@8e
    return v17

    #@8f
    .line 2471
    .end local v15    # "subtypeId":I
    :cond_4
    const/4 v12, 0x0

    #@90
    .local v12, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    #@91
    .line 2479
    .end local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v9    # "imiIdIsSame":Z
    .restart local v13    # "lastSubtypeHash":I
    .restart local v15    # "subtypeId":I
    .local v16, "targetLastImiId":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@95
    move-object/from16 v17, v0

    #@97
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@9a
    move-result v5

    #@9b
    .restart local v5    # "currentSubtypeHash":I
    goto :goto_1

    #@9c
    .line 2493
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@a0
    move-object/from16 v17, v0

    #@a2
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@a5
    move-result-object v6

    #@a6
    .line 2494
    .local v6, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_3

    #@a8
    .line 2495
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@ab
    move-result v4

    #@ac
    .line 2496
    .local v4, "N":I
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@b0
    move-object/from16 v17, v0

    #@b2
    if-nez v17, :cond_8

    #@b4
    .line 2497
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@b8
    move-object/from16 v17, v0

    #@ba
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@bd
    move-result-object v17

    #@be
    move-object/from16 v0, v17

    #@c0
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@c2
    move-object/from16 v17, v0

    #@c4
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@c7
    move-result-object v14

    #@c8
    .line 2499
    .local v14, "locale":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    #@c9
    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_3

    #@cb
    .line 2500
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ce
    move-result-object v8

    #@cf
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    #@d1
    .line 2501
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@d4
    move-result v17

    #@d5
    if-lez v17, :cond_7

    #@d7
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@da
    move-result v17

    #@db
    if-eqz v17, :cond_7

    #@dd
    .line 2503
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@e1
    move-object/from16 v17, v0

    #@e3
    .line 2504
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@e6
    move-result-object v19

    #@e7
    .line 2505
    const-string/jumbo v20, "keyboard"

    #@ea
    const/16 v21, 0x1

    #@ec
    .line 2503
    move-object/from16 v0, v17

    #@ee
    move-object/from16 v1, v19

    #@f0
    move-object/from16 v2, v20

    #@f2
    move/from16 v3, v21

    #@f4
    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@f7
    move-result-object v10

    #@f8
    .line 2506
    .local v10, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_7

    #@fa
    .line 2507
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@fd
    move-result-object v16

    #@fe
    .line 2509
    .local v16, "targetLastImiId":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@101
    move-result v17

    #@102
    .line 2508
    move/from16 v0, v17

    #@104
    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@107
    move-result v15

    #@108
    .line 2510
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@10b
    move-result-object v17

    #@10c
    move-object/from16 v0, v17

    #@10e
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v17

    #@112
    if-nez v17, :cond_3

    #@114
    .line 2499
    .end local v10    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@116
    goto :goto_3

    #@117
    .line 2498
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@11b
    move-object/from16 v17, v0

    #@11d
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@120
    move-result-object v14

    #@121
    .restart local v14    # "locale":Ljava/lang/String;
    goto :goto_2

    #@122
    .line 2527
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v14    # "locale":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    #@124
    monitor-exit v18

    #@125
    return v17

    #@126
    .line 2465
    .end local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "subtypeId":I
    :catchall_0
    move-exception v17

    #@127
    monitor-exit v18

    #@128
    throw v17
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2534
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2535
    return v7

    #@9
    .line 2537
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    monitor-enter v3

    #@c
    .line 2538
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 2539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    .line 2540
    .local v1, "uid":I
    const-string/jumbo v2, "InputMethodManagerService"

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Ignoring switchToNextInputMethod due to an invalid token. uid:"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 2541
    const-string/jumbo v5, " token:"

    #@2c
    .line 2540
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit v3

    #@3c
    .line 2542
    return v7

    #@3d
    .line 2544
    .end local v1    # "uid":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@3f
    .line 2545
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@41
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@43
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@49
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4b
    .line 2546
    const/4 v6, 0x1

    #@4c
    .line 2544
    invoke-virtual {v4, p2, v2, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    move-result-object v0

    #@50
    .line 2547
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    #@52
    monitor-exit v3

    #@53
    .line 2548
    return v7

    #@54
    .line 2550
    :cond_2
    :try_start_2
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@56
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 2551
    iget v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@5c
    .line 2550
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit v3

    #@60
    .line 2552
    return v8

    #@61
    .line 2537
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    #@62
    monitor-exit v3

    #@63
    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 8
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1073
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v5

    #@5
    .line 1077
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@7
    if-nez v2, :cond_3

    #@9
    .line 1078
    const/4 v2, 0x1

    #@a
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@c
    .line 1079
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@e
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@11
    move-result v0

    #@12
    .line 1080
    .local v0, "currentUserId":I
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14
    .line 1081
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    #@16
    invoke-virtual {v2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_4

    #@1c
    move v2, v3

    #@1d
    .line 1080
    :goto_0
    invoke-virtual {v6, v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    #@20
    .line 1082
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@22
    const-class v6, Landroid/app/KeyguardManager;

    #@24
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/app/KeyguardManager;

    #@2a
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2c
    .line 1083
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2e
    const-class v6, Landroid/app/NotificationManager;

    #@30
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/app/NotificationManager;

    #@36
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@38
    .line 1084
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3a
    .line 1085
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3c
    if-eqz v2, :cond_0

    #@3e
    .line 1086
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@40
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@42
    const/4 v7, 0x0

    #@43
    invoke-virtual {v2, v6, v7}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    #@46
    .line 1088
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@48
    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@4a
    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@4c
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@4f
    .line 1089
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@51
    .line 1090
    const v6, 0x1120006

    #@54
    .line 1089
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@57
    move-result v2

    #@58
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@5a
    .line 1091
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@5c
    if-eqz v2, :cond_1

    #@5e
    .line 1092
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@60
    .line 1093
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@62
    .line 1092
    invoke-virtual {v2, v6}, Landroid/view/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    #@65
    .line 1095
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@67
    if-eqz v2, :cond_5

    #@69
    move v2, v3

    #@6a
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    #@6d
    .line 1096
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@6f
    if-nez v2, :cond_2

    #@71
    .line 1097
    const-string/jumbo v2, "InputMethodManagerService"

    #@74
    const-string/jumbo v3, "Reset the default IME as \"Resource\" is ready here."

    #@77
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 1098
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    #@7d
    .line 1099
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@7f
    .line 1100
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@81
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@84
    move-result-object v3

    #@85
    .line 1101
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@87
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@8a
    move-result v4

    #@8b
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8d
    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@90
    move-result-object v6

    #@91
    .line 1099
    invoke-static {v2, v3, v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    #@94
    .line 1103
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@96
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@9d
    move-result-object v2

    #@9e
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    .line 1105
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    .end local v0    # "currentUserId":I
    :cond_3
    :goto_2
    monitor-exit v5

    #@a4
    .line 1072
    return-void

    #@a5
    .restart local v0    # "currentUserId":I
    :cond_4
    move v2, v4

    #@a6
    .line 1081
    goto/16 :goto_0

    #@a8
    :cond_5
    move v2, v4

    #@a9
    .line 1095
    goto :goto_1

    #@aa
    .line 1106
    :catch_0
    move-exception v1

    #@ab
    .line 1107
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "InputMethodManagerService"

    #@ae
    const-string/jumbo v3, "Unexpected exception"

    #@b1
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b4
    goto :goto_2

    #@b5
    .line 1073
    .end local v0    # "currentUserId":I
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    #@b6
    monitor-exit v5

    #@b7
    throw v2
.end method

.method unbindCurrentClientLocked(I)V
    .locals 7
    .param p1, "unbindClientReason"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1263
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1266
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1267
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@c
    .line 1268
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1269
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@12
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@14
    .line 1270
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@16
    const/16 v3, 0x3e8

    #@18
    .line 1269
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@1f
    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@21
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@23
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@25
    .line 1275
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@27
    const/16 v3, 0xbcc

    #@29
    .line 1274
    invoke-virtual {v1, v3, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@30
    .line 1276
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@32
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@34
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@36
    .line 1277
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@38
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    const/16 v4, 0xbb8

    #@3e
    .line 1276
    invoke-virtual {v1, v4, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@45
    .line 1278
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@47
    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@49
    .line 1279
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4b
    .line 1281
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    #@4e
    .line 1262
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked(Z)V
    .locals 5
    .param p1, "savePosition"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1572
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1573
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@d
    .line 1574
    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@f
    .line 1577
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1578
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@18
    .line 1579
    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@1a
    .line 1582
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 1585
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@20
    and-int/lit8 v1, v1, 0x1

    #@22
    if-eqz v1, :cond_2

    #@24
    if-eqz p1, :cond_2

    #@26
    .line 1587
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@28
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    #@2b
    .line 1589
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@2d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@2f
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 1592
    :goto_0
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@34
    .line 1595
    :cond_3
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@36
    .line 1596
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    #@39
    .line 1571
    return-void

    #@3a
    .line 1590
    :catch_0
    move-exception v0

    #@3b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateCurrentProfileIds()V
    .locals 3

    #@0
    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    .line 1054
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    #@4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    #@d
    move-result-object v1

    #@e
    .line 1053
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    #@11
    .line 1052
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    #@0
    .prologue
    .line 1916
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    #@3
    .line 1917
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    #@6
    .line 1915
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 14
    .param p1, "enabledMayChange"    # Z

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    .line 1921
    if-eqz p1, :cond_1

    #@3
    .line 1922
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@8
    move-result-object v9

    #@9
    .line 1923
    .local v9, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v10, 0x0

    #@a
    .local v10, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@d
    move-result v0

    #@e
    if-ge v10, v0, :cond_1

    #@10
    .line 1926
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v12

    #@14
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@16
    .line 1928
    .local v12, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@18
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1930
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@21
    move-result v2

    #@22
    .line 1929
    const v3, 0x8000

    #@25
    .line 1928
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v6

    #@29
    .line 1931
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    #@2b
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@2d
    if-ne v0, v13, :cond_0

    #@2f
    .line 1937
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@31
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 1939
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@37
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@3a
    move-result v4

    #@3b
    .line 1940
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1938
    const/4 v2, 0x0

    #@42
    .line 1939
    const/4 v3, 0x1

    #@43
    .line 1937
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@46
    .line 1923
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1950
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
    .line 1952
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
    .line 1953
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5d
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@60
    move-result-object v11

    #@61
    .line 1955
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_3

    #@67
    .line 1957
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
    .line 1962
    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@72
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@75
    .line 1971
    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@77
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@79
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    #@7c
    .line 1920
    return-void

    #@7d
    .line 1958
    :catch_0
    move-exception v8

    #@7e
    .line 1959
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
    .line 1960
    const/4 v0, 0x5

    #@99
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    #@9c
    goto :goto_2

    #@9d
    .line 1965
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-virtual {p0, v13}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    #@a0
    goto :goto_3

    #@a1
    .line 1942
    .end local v11    # "id":Ljava/lang/String;
    .restart local v9    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v10    # "i":I
    .restart local v12    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :catch_1
    move-exception v7

    #@a2
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1976
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    #@5
    move-result v1

    #@6
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@8
    .line 1977
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1978
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1979
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@12
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    #@15
    move-result v1

    #@16
    .line 1977
    if-eqz v1, :cond_0

    #@18
    .line 1980
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@1a
    .line 1981
    const v2, 0x1020385

    #@1d
    .line 1980
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/widget/Switch;

    #@23
    .line 1982
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    #@28
    .line 1975
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
    .line 1680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 1682
    .local v8, "ident":J
    :try_start_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@6
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1683
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v11

    #@11
    .line 1685
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
    .line 1686
    const-string/jumbo v2, " token:"

    #@27
    .line 1685
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
    .line 1715
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1687
    return-void

    #@3b
    .line 1689
    .end local v11    # "uid":I
    :cond_0
    if-nez p3, :cond_2

    #@3d
    .line 1691
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1692
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@43
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@45
    const/4 v2, 0x0

    #@46
    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4a
    .line 1715
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1679
    return-void

    #@4e
    .line 1694
    :cond_2
    if-eqz p2, :cond_1

    #@50
    .line 1696
    const/4 v6, 0x0

    #@51
    .line 1699
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@56
    move-result-object v10

    #@57
    .line 1701
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@59
    .line 1702
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5b
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@5e
    move-result v1

    #@5f
    .line 1701
    const/4 v2, 0x0

    #@60
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@63
    move-result-object v0

    #@64
    .line 1700
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@67
    move-result-object v6

    #@68
    .line 1706
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@6a
    if-eqz v0, :cond_1

    #@6c
    .line 1707
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@6e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@70
    .line 1708
    if-eqz v6, :cond_3

    #@72
    .line 1709
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 1707
    :goto_2
    const/4 v4, 0x0

    #@77
    move-object v2, p2

    #@78
    move/from16 v3, p3

    #@7a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    #@7d
    .line 1710
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@7f
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@81
    const/4 v2, 0x1

    #@82
    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 1682
    :catchall_0
    move-exception v0

    #@87
    :try_start_7
    monitor-exit v12

    #@88
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@89
    .line 1714
    :catchall_1
    move-exception v0

    #@8a
    .line 1715
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8d
    .line 1714
    throw v0

    #@8e
    .line 1709
    :cond_3
    const/4 v5, 0x0

    #@8f
    goto :goto_2

    #@90
    .line 1703
    .restart local v6    # "contentDescription":Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    #@91
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
