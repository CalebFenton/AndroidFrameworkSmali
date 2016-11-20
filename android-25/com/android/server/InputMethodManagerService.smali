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

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

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
    .line 851
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    #@3
    .line 210
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
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@16
    .line 215
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1d
    .line 217
    new-instance v0, Landroid/util/LruCache;

    #@1f
    const/16 v1, 0x14

    #@21
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #@24
    .line 216
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@26
    .line 221
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    #@28
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@2d
    .line 228
    const/4 v0, 0x0

    #@2e
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@30
    .line 294
    new-instance v0, Ljava/util/HashMap;

    #@32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    #@37
    .line 375
    new-instance v0, Ljava/util/HashMap;

    #@39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@3e
    .line 443
    const/4 v0, 0x1

    #@3f
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@41
    .line 445
    const/4 v0, 0x0

    #@42
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@44
    .line 447
    const/4 v0, 0x0

    #@45
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@47
    .line 476
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@49
    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@4c
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    #@4e
    .line 852
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@54
    .line 853
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@56
    .line 854
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@5c
    .line 855
    new-instance v0, Landroid/os/Handler;

    #@5e
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #@61
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@63
    .line 857
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@65
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@67
    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    #@6a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@6c
    .line 859
    const-string/jumbo v0, "window"

    #@6f
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@72
    move-result-object v0

    #@73
    .line 858
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@79
    .line 860
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
    .line 861
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@85
    new-instance v1, Lcom/android/server/InputMethodManagerService$2;

    #@87
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@8a
    const/4 v2, 0x0

    #@8b
    .line 866
    const/4 v3, 0x1

    #@8c
    .line 861
    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@8f
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@91
    .line 867
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
    .line 868
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
    .line 869
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@ab
    const/4 v1, 0x0

    #@ac
    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V

    #@af
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@b1
    .line 870
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b4
    move-result-object v0

    #@b5
    .line 871
    const-string/jumbo v1, "android.software.input_methods"

    #@b8
    .line 870
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@bb
    move-result v0

    #@bc
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    #@be
    .line 872
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
    .line 873
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@cb
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ce
    move-result-object v0

    #@cf
    .line 874
    const v1, 0x10e00a7

    #@d2
    .line 873
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@d5
    move-result v0

    #@d6
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    #@d8
    .line 876
    new-instance v10, Landroid/os/Bundle;

    #@da
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@dd
    .line 877
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.allowDuringSetup"

    #@e0
    const/4 v1, 0x1

    #@e1
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@e4
    .line 878
    new-instance v0, Landroid/app/Notification$Builder;

    #@e6
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@e8
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@eb
    .line 879
    const v1, 0x108040b

    #@ee
    .line 878
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@f1
    move-result-object v0

    #@f2
    .line 880
    const-wide/16 v2, 0x0

    #@f4
    .line 878
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@f7
    move-result-object v0

    #@f8
    .line 881
    const/4 v1, 0x1

    #@f9
    .line 878
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@fc
    move-result-object v0

    #@fd
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    #@100
    move-result-object v0

    #@101
    .line 883
    const-string/jumbo v1, "sys"

    #@104
    .line 878
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@107
    move-result-object v0

    #@108
    .line 884
    const v1, 0x106005b

    #@10b
    .line 878
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@10e
    move-result-object v0

    #@10f
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    #@111
    .line 886
    new-instance v12, Landroid/content/Intent;

    #@113
    const-string/jumbo v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    #@116
    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@119
    .line 887
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
    .line 889
    const/4 v0, 0x0

    #@124
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@126
    .line 891
    new-instance v7, Landroid/content/IntentFilter;

    #@128
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@12b
    .line 892
    .local v7, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@12e
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@131
    .line 893
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@134
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@137
    .line 894
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@13a
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@13d
    .line 895
    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    #@140
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@143
    .line 896
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@145
    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    #@147
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@14a
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@14d
    .line 898
    const/4 v0, 0x0

    #@14e
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    #@150
    .line 899
    const/4 v5, 0x0

    #@151
    .line 901
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
    .line 905
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
    .line 908
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@168
    .line 909
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
    .line 908
    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    #@17a
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@17c
    .line 911
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@17f
    .line 912
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@181
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@183
    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    #@186
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@188
    .line 913
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@18a
    monitor-enter v1

    #@18b
    .line 915
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18d
    .line 914
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
    .line 919
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@196
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@199
    move-result-object v8

    #@19a
    .line 923
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
    .line 925
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1a5
    monitor-enter v1

    #@1a6
    .line 926
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
    .line 928
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1b1
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    #@1b4
    .line 930
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@1b6
    if-nez v0, :cond_0

    #@1b8
    .line 931
    const-string/jumbo v0, "InputMethodManagerService"

    #@1bb
    const-string/jumbo v1, "No IME selected. Choose the most applicable IME."

    #@1be
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c1
    .line 932
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1c3
    monitor-enter v0

    #@1c4
    .line 933
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1c7
    monitor-exit v0

    #@1c8
    .line 937
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1ca
    monitor-enter v1

    #@1cb
    .line 938
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@1cd
    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    #@1d0
    .line 939
    const/4 v0, 0x1

    #@1d1
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@1d4
    monitor-exit v1

    #@1d5
    .line 944
    new-instance v11, Landroid/content/IntentFilter;

    #@1d7
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@1da
    .line 945
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    #@1dd
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e0
    .line 946
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@1e2
    .line 947
    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    #@1e4
    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    #@1e7
    .line 946
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1ea
    .line 851
    return-void

    #@1eb
    .line 902
    .end local v8    # "defaultImiId":Ljava/lang/String;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    #@1ec
    .line 903
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodManagerService"

    #@1ef
    const-string/jumbo v1, "Couldn\'t get current user ID; guessing it\'s 0"

    #@1f2
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 909
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v6, 0x1

    #@1f8
    goto/16 :goto_1

    #@1fa
    .line 913
    :catchall_0
    move-exception v0

    #@1fb
    monitor-exit v1

    #@1fc
    throw v0

    #@1fd
    .line 923
    .restart local v8    # "defaultImiId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    #@1fe
    goto :goto_2

    #@1ff
    .line 926
    :cond_3
    const/4 v0, 0x1

    #@200
    goto :goto_3

    #@201
    .line 925
    :catchall_1
    move-exception v0

    #@202
    monitor-exit v1

    #@203
    throw v0

    #@204
    .line 932
    :catchall_2
    move-exception v1

    #@205
    monitor-exit v0

    #@206
    throw v1

    #@207
    .line 937
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
    .line 1169
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1170
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
    .line 1171
    const/4 v0, 0x0

    #@2a
    return v0

    #@2b
    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@2d
    .line 1174
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
    .line 1173
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
    .line 1122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1123
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v1

    #@a
    .line 1131
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
    .line 1132
    :cond_0
    return v4

    #@17
    .line 1140
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@19
    .line 1141
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@1c
    .line 1140
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    .line 1147
    return v4

    #@23
    .line 1149
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
    .line 1150
    const/16 v4, 0xa

    #@34
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 1149
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
    .line 1151
    return v5
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1161
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@4
    if-eq v0, p1, :cond_1

    #@6
    .line 1162
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1164
    :cond_1
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    #@0
    .prologue
    .line 3024
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 3023
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    #@9
    move-result-object v0

    #@a
    .line 3025
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    #@c
    .line 3029
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@13
    .line 3030
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 3033
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
    .line 3487
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@5
    move-result-object v5

    #@6
    .line 3488
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    #@7
    .line 3489
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    #@8
    .line 3490
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    #@9
    .line 3493
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
    .line 3494
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 3495
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
    .line 3498
    :cond_1
    const/4 v9, 0x0

    #@28
    .line 3500
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
    .line 3502
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@33
    if-eqz v11, :cond_2

    #@35
    .line 3504
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
    .line 3503
    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@41
    move-result-object v9

    #@42
    .line 3508
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    if-nez v9, :cond_3

    #@44
    .line 3510
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@46
    const/4 v12, 0x0

    #@47
    const/4 v13, 0x1

    #@48
    .line 3509
    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@4b
    move-result-object v9

    #@4c
    .line 3513
    :cond_3
    invoke-static {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    #@4f
    move-result-object v8

    #@50
    .line 3515
    .local v8, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@53
    move-result v11

    #@54
    if-eqz v11, :cond_7

    #@56
    .line 3516
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@59
    move-result-object v10

    #@5a
    .line 3519
    .local v10, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v9, :cond_4

    #@5c
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@5e
    if-eqz v11, :cond_4

    #@60
    .line 3521
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
    .line 3520
    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@6c
    move-result-object v9

    #@6d
    .line 3525
    :cond_4
    if-nez v9, :cond_5

    #@6f
    .line 3527
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@71
    const/4 v12, 0x0

    #@72
    const/4 v13, 0x1

    #@73
    .line 3526
    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@76
    move-result-object v9

    #@77
    .line 3529
    :cond_5
    if-eqz v9, :cond_0

    #@79
    .line 3530
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@7b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v11

    #@7f
    if-eqz v11, :cond_8

    #@81
    .line 3532
    move-object v6, v2

    #@82
    .line 3533
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    move-object v7, v9

    #@83
    .line 3557
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-eqz v6, :cond_9

    #@85
    .line 3558
    new-instance v11, Landroid/util/Pair;

    #@87
    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8a
    return-object v11

    #@8b
    .line 3517
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
    .line 3535
    :cond_8
    if-nez v1, :cond_0

    #@8f
    .line 3537
    move-object v6, v2

    #@90
    .line 3538
    .restart local v6    # "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    move-object v7, v9

    #@91
    .line 3539
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
    .line 3541
    const/4 v1, 0x1

    #@9e
    goto/16 :goto_0

    #@a0
    .line 3560
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
    .line 1628
    if-eqz p1, :cond_1

    #@3
    .line 1629
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1631
    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@9
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1636
    :goto_0
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@e
    .line 1638
    :cond_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1639
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@14
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@17
    .line 1640
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@19
    .line 1627
    :cond_1
    return-void

    #@1a
    .line 1632
    :catch_0
    move-exception v0

    #@1b
    .line 1633
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputMethodManagerService"

    #@1e
    const-string/jumbo v2, "Session failed to close due to remote exception"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1634
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
    .line 1301
    const/4 v0, 0x0

    #@1
    .line 1302
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1303
    const/4 v0, 0x2

    #@6
    .line 1307
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1304
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1305
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
    .line 3579
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 3580
    return-object v6

    #@8
    .line 3582
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@a
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    #@d
    move-result v3

    #@e
    .line 3583
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
    .line 3584
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    #@1a
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 3585
    :cond_1
    return-object v6

    #@21
    .line 3587
    :cond_2
    if-eqz v3, :cond_3

    #@23
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@25
    if-nez v4, :cond_5

    #@27
    .line 3589
    :cond_3
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@29
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@2b
    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    #@2e
    move-result v2

    #@2f
    .line 3590
    .local v2, "subtypeId":I
    const/4 v4, -0x1

    #@30
    if-ne v2, v4, :cond_7

    #@32
    .line 3595
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@34
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@36
    invoke-virtual {v4, v5, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    .line 3598
    .local v0, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3d
    move-result v4

    #@3e
    if-ne v4, v7, :cond_6

    #@40
    .line 3599
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@46
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@48
    .line 3614
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypeId":I
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@4a
    return-object v4

    #@4b
    .line 3588
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
    .line 3600
    .restart local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "subtypeId":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5b
    move-result v4

    #@5c
    if-le v4, v7, :cond_4

    #@5e
    .line 3602
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@60
    .line 3603
    const-string/jumbo v5, "keyboard"

    #@63
    .line 3601
    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@66
    move-result-object v4

    #@67
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@69
    .line 3604
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@6b
    if-nez v4, :cond_4

    #@6d
    .line 3606
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@6f
    .line 3605
    invoke-static {v4, v0, v6, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@72
    move-result-object v4

    #@73
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@75
    goto :goto_0

    #@76
    .line 3611
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
    .line 1290
    const/4 v0, 0x0

    #@1
    .line 1291
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1292
    const/4 v0, 0x3

    #@6
    .line 1297
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1294
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1295
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
    .line 2984
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    .line 2985
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@6
    .line 2986
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
    .line 2989
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
    .line 2990
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@21
    .line 2991
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
    .line 2990
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
    .line 2983
    return-void

    #@33
    :cond_2
    move v1, v0

    #@34
    .line 2986
    goto :goto_0

    #@35
    .line 2984
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
    .line 2997
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v4

    #@3
    .line 2998
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@5
    .line 2999
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
    .line 2998
    invoke-virtual {v5, v7, v3, v6, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 3000
    .local v1, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_0

    #@18
    monitor-exit v4

    #@19
    .line 3001
    return-void

    #@1a
    .line 3003
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
    .line 3004
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
    .line 3005
    .local v0, "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_1

    #@31
    monitor-exit v4

    #@32
    .line 3006
    return-void

    #@33
    .line 3008
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@35
    .line 3009
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@37
    .line 3008
    invoke-static {v3, v0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    #@3a
    move-result-object v2

    #@3b
    .line 3010
    .local v2, "toastText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_2

    #@41
    .line 3011
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    #@43
    if-nez v3, :cond_3

    #@45
    .line 3012
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@47
    .line 3013
    const/4 v5, 0x0

    #@48
    .line 3012
    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@4b
    move-result-object v3

    #@4c
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    #@4e
    .line 3017
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
    .line 2996
    return-void

    #@55
    .line 3015
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
    .line 2997
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
    .line 3906
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3907
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@6
    .line 3908
    .local v0, "first":Z
    and-int/lit8 v2, p0, 0x1

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 3909
    const-string/jumbo v2, "Active"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 3910
    const/4 v0, 0x0

    #@11
    .line 3912
    :cond_0
    and-int/lit8 v2, p0, 0x2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 3913
    if-nez v0, :cond_1

    #@17
    .line 3914
    const-string/jumbo v2, "|"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 3916
    :cond_1
    const-string/jumbo v2, "Visible"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 3918
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
    .line 1784
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
    .line 3162
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3163
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@6
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    #@9
    move-result v0

    #@a
    .line 3162
    if-eqz v0, :cond_0

    #@c
    .line 3163
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@e
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@11
    move-result v0

    #@12
    .line 3162
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
    .line 1994
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    #@8
    .line 1995
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 1996
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@d
    .line 1992
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
    .line 975
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 977
    return-void

    #@6
    .line 979
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
    .line 980
    .local v1, "newLocales":Landroid/os/LocaleList;
    if-eqz p1, :cond_2

    #@12
    .line 981
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
    .line 974
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 982
    :cond_2
    if-nez p1, :cond_3

    #@1f
    .line 983
    const/4 v3, 0x0

    #@20
    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@23
    .line 984
    const/4 v3, 0x6

    #@24
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    #@27
    .line 989
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    #@2a
    .line 990
    if-nez p1, :cond_5

    #@2c
    .line 991
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2e
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 992
    .local v2, "selectedImiId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_4

    #@38
    .line 995
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3a
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    #@3d
    .line 1001
    .end local v2    # "selectedImiId":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v3, 0x1

    #@3e
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    #@41
    .line 1002
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    #@43
    .line 1003
    if-nez p1, :cond_1

    #@45
    .line 1005
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    goto :goto_0

    #@49
    .line 1006
    :catch_0
    move-exception v0

    #@4a
    .line 1007
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "InputMethodManagerService"

    #@4d
    const-string/jumbo v4, "Unexpected exception"

    #@50
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 999
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
    .line 959
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
    .line 963
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@17
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@19
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@1c
    move-result-object v3

    #@1d
    .line 962
    invoke-static {p1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    #@20
    move-result-object v1

    #@21
    .line 964
    .local v1, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 965
    const-string/jumbo v2, "InputMethodManagerService"

    #@2a
    const-string/jumbo v3, "No default found"

    #@2d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 966
    return-void

    #@31
    .line 960
    .end local v1    # "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_1
    return-void

    #@32
    .line 968
    .restart local v1    # "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@38
    .line 969
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
    .line 970
    const/4 v2, -0x1

    #@57
    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@5a
    .line 957
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3467
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 3468
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    #@9
    .line 3470
    .local v2, "lastSubtypeId":I
    if-eqz v1, :cond_0

    #@b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 3481
    :cond_0
    :goto_0
    const/4 v4, 0x0

    #@12
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@15
    .line 3466
    return-void

    #@16
    .line 3471
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@18
    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 3472
    .local v3, "subtypeHashCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1e
    .line 3475
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v4

    #@22
    .line 3474
    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v2

    #@26
    goto :goto_0

    #@27
    .line 3476
    :catch_0
    move-exception v0

    #@28
    .line 3477
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
    .line 1014
    invoke-direct {p0, v0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    #@4
    .line 1013
    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    #@3
    move-result-object v5

    #@4
    .line 602
    .local v5, "prevMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    #@7
    move-result-object v4

    #@8
    .line 605
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
    .line 606
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;

    #@22
    .line 607
    .local v2, "imeId":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Landroid/util/ArraySet;

    #@28
    .line 608
    .local v6, "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    #@2a
    .line 609
    new-instance v6, Landroid/util/ArraySet;

    #@2c
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x2

    #@2d
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    #@30
    .line 610
    .restart local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 612
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
    .line 616
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "imeId":Ljava/lang/String;
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 621
    .local v3, "mergedImesAndSubtypesString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v7

    #@45
    .line 622
    const-string/jumbo v8, "enabled_input_methods"

    #@48
    .line 621
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@4b
    .line 592
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    #@0
    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 2694
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 2692
    return-void

    #@8
    .line 2693
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
    .line 2699
    if-nez p1, :cond_0

    #@2
    .line 2700
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 2701
    const-string/jumbo v3, "android.permission.WRITE_SECURE_SETTINGS"

    #@7
    .line 2700
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2703
    new-instance v2, Ljava/lang/SecurityException;

    #@f
    .line 2704
    const-string/jumbo v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@12
    .line 2703
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 2707
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 2708
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
    .line 2709
    const-string/jumbo v4, " token: "

    #@34
    .line 2708
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
    .line 2710
    return-void

    #@44
    .line 2713
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@47
    move-result-wide v0

    #@48
    .line 2715
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 2717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 2698
    return-void

    #@4f
    .line 2716
    :catchall_0
    move-exception v2

    #@50
    .line 2717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 2716
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
    .line 3429
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@6
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@8
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@b
    .line 3432
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
    .line 3431
    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@16
    .line 3438
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
    .line 3439
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@22
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@24
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@26
    .line 3441
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@28
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@2a
    .line 3440
    const/16 v5, 0xbe0

    #@2c
    .line 3439
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@33
    .line 3445
    :cond_0
    if-eqz p1, :cond_1

    #@35
    if-gez p2, :cond_3

    #@37
    .line 3446
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@39
    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@3c
    .line 3447
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@3e
    .line 3460
    :goto_0
    if-nez p3, :cond_2

    #@40
    .line 3462
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
    .line 3427
    :cond_2
    return-void

    #@4c
    .line 3449
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@4f
    move-result v1

    #@50
    if-ge p2, v1, :cond_4

    #@52
    .line 3450
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@55
    move-result-object v0

    #@56
    .line 3451
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@58
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@5b
    move-result v2

    #@5c
    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@5f
    .line 3452
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@61
    goto :goto_0

    #@62
    .line 3454
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@64
    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    #@67
    .line 3456
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@6a
    move-result-object v1

    #@6b
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@6d
    goto :goto_0

    #@6e
    .line 3462
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
    .line 1724
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@2
    if-nez v12, :cond_0

    #@4
    const/4 v12, 0x0

    #@5
    return v12

    #@6
    .line 1725
    :cond_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@8
    if-eqz v12, :cond_1

    #@a
    const/4 v12, 0x0

    #@b
    return v12

    #@c
    .line 1726
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
    .line 1727
    :cond_2
    and-int/lit8 v12, p1, 0x1

    #@16
    if-nez v12, :cond_3

    #@18
    const/4 v12, 0x0

    #@19
    return v12

    #@1a
    .line 1728
    :cond_3
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@1c
    invoke-virtual {v12}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    #@1f
    move-result v12

    #@20
    if-eqz v12, :cond_4

    #@22
    .line 1729
    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    #@24
    if-nez v12, :cond_5

    #@26
    .line 1734
    const/4 v12, 0x1

    #@27
    return v12

    #@28
    .line 1736
    :cond_4
    and-int/lit8 v12, p1, 0x2

    #@2a
    if-nez v12, :cond_5

    #@2c
    .line 1737
    const/4 v12, 0x0

    #@2d
    return v12

    #@2e
    .line 1740
    :cond_5
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@30
    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@33
    move-result-object v5

    #@34
    .line 1741
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@37
    move-result v0

    #@38
    .line 1742
    .local v0, "N":I
    const/4 v12, 0x2

    #@39
    if-le v0, v12, :cond_6

    #@3b
    const/4 v12, 0x1

    #@3c
    return v12

    #@3d
    .line 1743
    :cond_6
    const/4 v12, 0x1

    #@3e
    if-ge v0, v12, :cond_7

    #@40
    const/4 v12, 0x0

    #@41
    return v12

    #@42
    .line 1744
    :cond_7
    const/4 v7, 0x0

    #@43
    .line 1745
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    #@44
    .line 1746
    .local v1, "auxCount":I
    const/4 v8, 0x0

    #@45
    .line 1747
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    #@46
    .line 1748
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    #@47
    .end local v2    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_b

    #@49
    .line 1749
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v4

    #@4d
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@4f
    .line 1751
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
    .line 1752
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@5b
    move-result v10

    #@5c
    .line 1753
    .local v10, "subtypeCount":I
    if-nez v10, :cond_9

    #@5e
    .line 1754
    add-int/lit8 v7, v7, 0x1

    #@60
    .line 1748
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_0

    #@63
    .line 1756
    :cond_9
    const/4 v6, 0x0

    #@64
    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_8

    #@66
    .line 1757
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v9

    #@6a
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    #@6c
    .line 1758
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@6f
    move-result v12

    #@70
    if-nez v12, :cond_a

    #@72
    .line 1759
    add-int/lit8 v7, v7, 0x1

    #@74
    .line 1760
    move-object v8, v9

    #@75
    .line 1756
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_1

    #@78
    .line 1762
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@7a
    .line 1763
    move-object v2, v9

    #@7b
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2

    #@7c
    .line 1768
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
    .line 1769
    :cond_c
    const/4 v12, 0x1

    #@83
    return v12

    #@84
    .line 1770
    :cond_d
    const/4 v12, 0x1

    #@85
    if-ne v7, v12, :cond_10

    #@87
    const/4 v12, 0x1

    #@88
    if-ne v1, v12, :cond_10

    #@8a
    .line 1771
    if-eqz v8, :cond_f

    #@8c
    if-eqz v2, :cond_f

    #@8e
    .line 1772
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
    .line 1773
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@9f
    move-result v12

    #@a0
    .line 1772
    if-nez v12, :cond_e

    #@a2
    .line 1774
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@a5
    move-result v12

    #@a6
    .line 1771
    if-eqz v12, :cond_f

    #@a8
    .line 1775
    :cond_e
    const-string/jumbo v12, "TrySuppressingImeSwitcher"

    #@ab
    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@ae
    move-result v12

    #@af
    .line 1771
    if-eqz v12, :cond_f

    #@b1
    .line 1776
    const/4 v12, 0x0

    #@b2
    return v12

    #@b3
    .line 1778
    :cond_f
    const/4 v12, 0x1

    #@b4
    return v12

    #@b5
    .line 1780
    :cond_10
    const/4 v12, 0x0

    #@b6
    return v12
.end method

.method private showConfigureInputMethods()V
    .locals 4

    #@0
    .prologue
    .line 3154
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3155
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 3158
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@f
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@15
    .line 3153
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3139
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3140
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14200000

    #@a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 3143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 3144
    const-string/jumbo v2, "input_method_id"

    #@16
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 3147
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1b
    monitor-enter v3

    #@1c
    .line 3148
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
    .line 3150
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
    .line 3138
    return-void

    #@2e
    .line 3147
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
    .line 3169
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 3170
    .local v9, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    #@7
    move-result v19

    #@8
    .line 3172
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
    .line 3173
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
    .line 3176
    .local v22, "lastInputMethodSubtypeId":I
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@24
    move-object/from16 v27, v0

    #@26
    monitor-enter v27

    #@27
    .line 3178
    :try_start_0
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2b
    move-object/from16 v26, v0

    #@2d
    .line 3179
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@31
    move-object/from16 v28, v0

    #@33
    .line 3178
    move-object/from16 v0, v26

    #@35
    move-object/from16 v1, v28

    #@37
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    #@3a
    move-result-object v17

    #@3b
    .line 3180
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
    .line 3181
    return-void

    #@45
    .line 3184
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    #@48
    .line 3187
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
    .line 3190
    .local v16, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/16 v26, -0x1

    #@5a
    move/from16 v0, v22

    #@5c
    move/from16 v1, v26

    #@5e
    if-ne v0, v1, :cond_2

    #@60
    .line 3191
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@63
    move-result-object v11

    #@64
    .line 3192
    .local v11, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v11, :cond_2

    #@66
    .line 3193
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
    .line 3195
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@7f
    move-result v26

    #@80
    .line 3194
    move/from16 v0, v26

    #@82
    invoke-static {v10, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@85
    move-result v22

    #@86
    .line 3199
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@89
    move-result v4

    #@8a
    .line 3200
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
    .line 3201
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
    .line 3202
    const/4 v7, 0x0

    #@9f
    .line 3203
    .local v7, "checkedItem":I
    const/4 v15, 0x0

    #@a0
    .local v15, "i":I
    :goto_0
    if-ge v15, v4, :cond_6

    #@a2
    .line 3204
    move-object/from16 v0, v16

    #@a4
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v20

    #@a8
    check-cast v20, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@aa
    .line 3205
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
    .line 3206
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
    .line 3207
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
    .line 3208
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    #@e0
    move-object/from16 v26, v0

    #@e2
    aget v24, v26, v15

    #@e4
    .line 3209
    .local v24, "subtypeId":I
    const/16 v26, -0x1

    #@e6
    move/from16 v0, v24

    #@e8
    move/from16 v1, v26

    #@ea
    if-eq v0, v1, :cond_3

    #@ec
    .line 3210
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
    .line 3212
    :cond_3
    :goto_1
    move v7, v15

    #@f7
    .line 3203
    .end local v24    # "subtypeId":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@f9
    goto :goto_0

    #@fa
    .line 3211
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
    .line 3217
    .end local v20    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v24    # "subtypeId":I
    :cond_6
    new-instance v23, Landroid/view/ContextThemeWrapper;

    #@103
    .line 3218
    const v26, 0x1030223

    #@106
    .line 3217
    move-object/from16 v0, v23

    #@108
    move/from16 v1, v26

    #@10a
    invoke-direct {v0, v9, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@10d
    .line 3220
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
    .line 3221
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
    .line 3228
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
    .line 3230
    .local v12, "dialogContext":Landroid/content/Context;
    sget-object v26, Lcom/android/internal/R$styleable;->DialogPreference:[I

    #@13e
    .line 3229
    const/16 v28, 0x0

    #@140
    .line 3231
    const v29, 0x101005d

    #@143
    const/16 v30, 0x0

    #@145
    .line 3229
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
    .line 3233
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v26, 0x2

    #@153
    .line 3232
    move/from16 v0, v26

    #@155
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@158
    move-result-object v13

    #@159
    .line 3234
    .local v13, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@15c
    .line 3236
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
    .line 3238
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
    .line 3240
    .local v18, "inflater":Landroid/view/LayoutInflater;
    const v26, 0x109006f

    #@174
    const/16 v28, 0x0

    #@176
    .line 3239
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
    .line 3241
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
    .line 3244
    move-object/from16 v0, v25

    #@18f
    move-object/from16 v1, p0

    #@191
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@193
    .line 3245
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@197
    move-object/from16 v26, v0

    #@199
    .line 3246
    const v28, 0x102038a

    #@19c
    .line 3245
    move-object/from16 v0, v26

    #@19e
    move/from16 v1, v28

    #@1a0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a3
    move-result-object v28

    #@1a4
    .line 3247
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
    .line 3248
    const/16 v26, 0x0

    #@1b2
    .line 3245
    :goto_2
    move-object/from16 v0, v28

    #@1b4
    move/from16 v1, v26

    #@1b6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1b9
    .line 3249
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@1bd
    move-object/from16 v26, v0

    #@1bf
    .line 3250
    const v28, 0x102038b

    #@1c2
    .line 3249
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
    .line 3251
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
    .line 3252
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
    .line 3262
    new-instance v6, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    #@1e7
    .line 3263
    const v26, 0x1090070

    #@1ea
    .line 3262
    move/from16 v0, v26

    #@1ec
    move-object/from16 v1, v16

    #@1ee
    invoke-direct {v6, v12, v0, v1, v7}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    #@1f1
    .line 3264
    .local v6, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v8, Lcom/android/server/InputMethodManagerService$6;

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    invoke-direct {v8, v0, v6}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    #@1f8
    .line 3286
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
    .line 3288
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
    .line 3289
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
    .line 3290
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
    .line 3291
    const/16 v28, 0x7dc

    #@22e
    .line 3290
    move-object/from16 v0, v26

    #@230
    move/from16 v1, v28

    #@232
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@235
    .line 3292
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
    .line 3294
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
    .line 3295
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
    .line 3296
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
    .line 3166
    return-void

    #@291
    .line 3248
    .end local v6    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v8    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v14    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_7
    const/16 v26, 0x8

    #@293
    goto/16 :goto_2

    #@295
    .line 3176
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
    .line 1503
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1504
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 1506
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 1517
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v0

    #@f
    .line 1519
    .local v0, "ident":J
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v2

    #@13
    .line 1522
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    monitor-exit v3

    #@17
    .line 1519
    return-object v2

    #@18
    .line 1521
    :catchall_0
    move-exception v2

    #@19
    .line 1522
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1521
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d
    .line 1506
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
    .line 1023
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    #@5
    .line 1028
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
    .line 1029
    .local v2, "useCopyOnWriteSettings":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14
    invoke-virtual {v3, p1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    #@17
    .line 1030
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@1a
    .line 1032
    new-instance v3, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@1c
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@1e
    invoke-direct {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    #@21
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@23
    .line 1033
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@25
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 1043
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v1

    #@2d
    .line 1044
    .local v1, "initialUserSwitch":Z
    const/4 v3, 0x0

    #@2e
    invoke-direct {p0, v3, v1}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    #@31
    .line 1046
    if-eqz v1, :cond_0

    #@33
    .line 1047
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@35
    .line 1048
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@37
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@3a
    move-result-object v4

    #@3b
    .line 1049
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1047
    invoke-static {v3, v4, p1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    #@44
    .line 1018
    :cond_0
    return-void

    #@45
    .line 1028
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
    .line 1805
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 1806
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1804
    return-void

    #@8
    .line 1805
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
    .line 1812
    invoke-direct/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@3
    move-result v12

    #@4
    if-nez v12, :cond_0

    #@6
    .line 1813
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v11

    #@a
    .line 1814
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
    .line 1815
    const-string/jumbo v14, " token:"

    #@20
    .line 1814
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
    .line 1816
    return-void

    #@32
    .line 1821
    .end local v11    # "uid":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@35
    move-result-wide v6

    #@36
    .line 1824
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
    .line 1828
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
    .line 1829
    .local v8, "needsToShowImeSwitcher":Z
    move-object/from16 v0, p0

    #@4e
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@50
    if-eqz v12, :cond_2

    #@52
    .line 1830
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
    .line 1833
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
    .line 1834
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_6

    #@6f
    if-eqz v8, :cond_6

    #@71
    .line 1836
    move-object/from16 v0, p0

    #@73
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@75
    .line 1837
    const v13, 0x1040429

    #@78
    .line 1836
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7b
    move-result-object v10

    #@7c
    .line 1839
    .local v10, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@7e
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@84
    .line 1838
    invoke-static {v12, v5, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    #@87
    move-result-object v9

    #@88
    .line 1840
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
    .line 1842
    move-object/from16 v0, p0

    #@96
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    #@98
    .line 1840
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    .line 1844
    :try_start_1
    move-object/from16 v0, p0

    #@9d
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@9f
    if-eqz v12, :cond_3

    #@a1
    .line 1845
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
    .line 1867
    .end local v9    # "summary":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ae
    .line 1811
    return-void

    #@af
    .line 1825
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :cond_4
    const/16 p2, 0x0

    #@b1
    goto :goto_0

    #@b2
    .line 1849
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
    .line 1851
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
    .line 1849
    const/4 v15, 0x0

    #@c1
    .line 1850
    const v16, 0x1040429

    #@c4
    .line 1849
    move/from16 v0, v16

    #@c6
    invoke-virtual {v12, v15, v0, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c9
    .line 1852
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
    .line 1854
    :catch_0
    move-exception v4

    #@d0
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@d1
    .line 1857
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
    .line 1861
    move-object/from16 v0, p0

    #@df
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@e1
    .line 1862
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@e3
    .line 1861
    const/4 v14, 0x0

    #@e4
    .line 1862
    const v15, 0x1040429

    #@e7
    .line 1861
    invoke-virtual {v12, v14, v15, v13}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@ea
    .line 1863
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
    .line 1866
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :catchall_0
    move-exception v12

    #@f1
    .line 1867
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f4
    .line 1866
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
    .line 2254
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v8

    #@4
    .line 2255
    .local v8, "calledFromValidUser":Z
    const/4 v15, 0x0

    #@5
    .line 2256
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v12

    #@9
    .line 2258
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
    .line 2270
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
    .line 2271
    .local v3, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v3, :cond_0

    #@20
    .line 2272
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
    .line 2273
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@31
    move-result-object v5

    #@32
    .line 2272
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
    .line 2258
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
    .line 2401
    :catchall_1
    move-exception v2

    #@42
    .line 2402
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 2401
    throw v2

    #@46
    .line 2277
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
    .line 2283
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
    .line 2284
    const-string/jumbo v5, " (uid="

    #@6a
    .line 2283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    .line 2284
    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@70
    .line 2283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    .line 2284
    const-string/jumbo v5, " pid="

    #@77
    .line 2283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 2284
    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@7d
    .line 2283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    .line 2284
    const-string/jumbo v5, ")"

    #@84
    .line 2283
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
    .line 2285
    const/4 v2, 0x0

    #@91
    .line 2402
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    .line 2285
    return-object v2

    #@95
    .line 2287
    :catch_0
    move-exception v11

    #@96
    .line 2290
    :cond_1
    if-nez v8, :cond_2

    #@98
    .line 2291
    :try_start_5
    const-string/jumbo v2, "InputMethodManagerService"

    #@9b
    const-string/jumbo v4, "A background user is requesting window. Hiding IME."

    #@9e
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 2292
    const-string/jumbo v2, "InputMethodManagerService"

    #@a4
    const-string/jumbo v4, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    #@a7
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 2294
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
    .line 2295
    const/4 v2, 0x0

    #@b3
    .line 2402
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b6
    .line 2295
    return-object v2

    #@b7
    .line 2298
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
    .line 2299
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
    .line 2300
    const-string/jumbo v5, " attribute="

    #@d7
    .line 2299
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
    .line 2300
    const-string/jumbo v5, ", token = "

    #@e4
    .line 2299
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
    .line 2301
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
    .line 2302
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
    .line 2402
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@109
    .line 2302
    return-object v2

    #@10a
    :cond_3
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@10b
    .line 2305
    const/4 v2, 0x0

    #@10c
    .line 2402
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10f
    .line 2305
    return-object v2

    #@110
    .line 2307
    :cond_4
    :try_start_a
    move-object/from16 v0, p3

    #@112
    move-object/from16 v1, p0

    #@114
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    #@116
    .line 2308
    move-object/from16 v0, p0

    #@118
    iput-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@11a
    .line 2318
    move/from16 v0, p5

    #@11c
    and-int/lit16 v2, v0, 0xf0

    #@11e
    .line 2319
    const/16 v4, 0x10

    #@120
    .line 2318
    if-eq v2, v4, :cond_7

    #@122
    .line 2320
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@126
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@129
    move-result-object v2

    #@12a
    .line 2321
    const/4 v4, 0x3

    #@12b
    .line 2320
    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    #@12e
    move-result v10

    #@12f
    .line 2323
    :goto_0
    and-int/lit8 v2, p4, 0x2

    #@131
    if-eqz v2, :cond_8

    #@133
    const/4 v14, 0x1

    #@134
    .line 2329
    .local v14, "isTextEditor":Z
    :goto_1
    const/4 v9, 0x0

    #@135
    .line 2331
    .local v9, "didStart":Z
    and-int/lit8 v2, p5, 0xf

    #@137
    packed-switch v2, :pswitch_data_0

    #@13a
    .line 2396
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
    .line 2397
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
    .line 2402
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@150
    .line 2405
    return-object v15

    #@151
    .line 2318
    .end local v9    # "didStart":Z
    .end local v14    # "isTextEditor":Z
    .restart local v15    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_7
    const/4 v10, 0x1

    #@152
    .local v10, "doAutoShow":Z
    goto :goto_0

    #@153
    .line 2323
    .end local v10    # "doAutoShow":Z
    :cond_8
    const/4 v14, 0x0

    #@154
    .restart local v14    # "isTextEditor":Z
    goto :goto_1

    #@155
    .line 2333
    .restart local v9    # "didStart":Z
    :pswitch_1
    if-eqz v14, :cond_a

    #@157
    if-eqz v10, :cond_a

    #@159
    .line 2341
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
    .line 2351
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
    .line 2352
    :try_start_c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@172
    move-result-object v15

    #@173
    .line 2354
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v9, 0x1

    #@174
    .line 2356
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
    .line 2334
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    :cond_a
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@17f
    move-result v2

    #@180
    if-eqz v2, :cond_5

    #@182
    .line 2339
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
    .line 2363
    :pswitch_2
    move/from16 v0, p5

    #@18c
    and-int/lit16 v2, v0, 0x100

    #@18e
    if-eqz v2, :cond_5

    #@190
    .line 2366
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
    .line 2371
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
    .line 2374
    :pswitch_4
    move/from16 v0, p5

    #@1a2
    and-int/lit16 v2, v0, 0x100

    #@1a4
    if-eqz v2, :cond_5

    #@1a6
    .line 2377
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
    .line 2378
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@1b5
    move-result-object v15

    #@1b6
    .line 2380
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v9, 0x1

    #@1b7
    .line 2382
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
    .line 2387
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
    .line 2388
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@1cf
    move-result-object v15

    #@1d0
    .line 2390
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v9, 0x1

    #@1d1
    .line 2392
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
    .line 2331
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
    .line 1228
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1229
    return-void

    #@7
    .line 1231
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 1232
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
    .line 1227
    return-void

    #@1a
    .line 1231
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
    .line 1311
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1312
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    .line 1313
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@d
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    #@f
    const/16 v5, 0x3f2

    #@11
    .line 1312
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@18
    .line 1314
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@1b
    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1f
    .line 1317
    .local v3, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_3

    #@21
    .line 1318
    iget-object v7, v3, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@23
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@25
    .line 1319
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    #@27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@29
    .line 1320
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@2b
    .line 1319
    const/16 v1, 0x7d0

    #@2d
    .line 1318
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p0, v7, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@34
    .line 1326
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 1328
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    #@3b
    move-result v0

    #@3c
    invoke-virtual {p0, v0, v6}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    #@3f
    .line 1330
    :cond_1
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    #@41
    iget-object v5, v3, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@43
    .line 1331
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
    .line 1332
    :cond_2
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@4f
    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@51
    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@53
    .line 1330
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@56
    return-object v4

    #@57
    .line 1322
    :cond_3
    iget-object v7, v3, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@59
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@5b
    .line 1323
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    #@5d
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@5f
    .line 1324
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@61
    .line 1323
    const/16 v1, 0x7da

    #@63
    .line 1322
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
    .line 3041
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@4
    move-object/from16 v19, v0

    #@6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    #@9
    .line 3042
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    move-object/from16 v19, v0

    #@f
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    #@12
    .line 3045
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
    .line 3051
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    #@1e
    const-string/jumbo v20, "android.view.InputMethod"

    #@21
    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24
    .line 3053
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
    .line 3052
    const v21, 0x8080

    #@31
    .line 3050
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
    .line 3056
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
    .line 3057
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
    .line 3058
    move-object/from16 v0, v17

    #@50
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v16

    #@54
    check-cast v16, Landroid/content/pm/ResolveInfo;

    #@56
    .line 3059
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    #@58
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5a
    move-object/from16 v18, v0

    #@5c
    .line 3060
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
    .line 3061
    .local v5, "compName":Landroid/content/ComponentName;
    const-string/jumbo v19, "android.permission.BIND_INPUT_METHOD"

    #@74
    .line 3062
    move-object/from16 v0, v18

    #@76
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@78
    move-object/from16 v20, v0

    #@7a
    .line 3061
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v19

    #@7e
    if-nez v19, :cond_0

    #@80
    .line 3063
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
    .line 3064
    const-string/jumbo v21, ": it does not require the permission "

    #@98
    .line 3063
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v20

    #@9c
    .line 3065
    const-string/jumbo v21, "android.permission.BIND_INPUT_METHOD"

    #@9f
    .line 3063
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
    .line 3057
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@ac
    goto :goto_0

    #@ad
    .line 3072
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
    .line 3073
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
    .line 3074
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@ca
    move-result-object v12

    #@cb
    .line 3075
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
    .line 3080
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v8

    #@d8
    .line 3081
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
    .line 3086
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    if-nez p1, :cond_3

    #@fb
    .line 3087
    const/4 v9, 0x0

    #@fc
    .line 3088
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
    .line 3089
    .local v10, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@109
    move-result v3

    #@10a
    .line 3090
    .local v3, "N":I
    const/4 v11, 0x0

    #@10b
    :goto_2
    if-ge v11, v3, :cond_2

    #@10d
    .line 3091
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@110
    move-result-object v13

    #@111
    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    #@113
    .line 3092
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
    .line 3093
    const/4 v9, 0x1

    #@122
    .line 3097
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-nez v9, :cond_3

    #@124
    .line 3098
    const-string/jumbo v19, "InputMethodManagerService"

    #@127
    const-string/jumbo v20, "All the enabled IMEs are gone. Reset default enabled IMEs."

    #@12a
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 3099
    const/16 p1, 0x1

    #@12f
    .line 3100
    .local p1, "resetDefaultEnabledIme":Z
    const-string/jumbo v19, ""

    #@132
    move-object/from16 v0, p0

    #@134
    move-object/from16 v1, v19

    #@136
    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@139
    .line 3104
    .end local v3    # "N":I
    .end local v9    # "enabledImeFound":Z
    .end local v10    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local p1    # "resetDefaultEnabledIme":Z
    :cond_3
    if-eqz p1, :cond_5

    #@13b
    .line 3106
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
    .line 3107
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@154
    move-result v3

    #@155
    .line 3108
    .restart local v3    # "N":I
    const/4 v11, 0x0

    #@156
    :goto_3
    if-ge v11, v3, :cond_5

    #@158
    .line 3109
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15b
    move-result-object v13

    #@15c
    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    #@15e
    .line 3113
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
    .line 3108
    add-int/lit8 v11, v11, 0x1

    #@16f
    goto :goto_3

    #@170
    .line 3090
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v9    # "enabledImeFound":Z
    .restart local v10    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p1, "resetDefaultEnabledIme":Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@172
    goto :goto_2

    #@173
    .line 3117
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
    .line 3118
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@180
    move-result v19

    #@181
    if-nez v19, :cond_6

    #@183
    .line 3119
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
    .line 3120
    const-string/jumbo v19, "InputMethodManagerService"

    #@194
    const-string/jumbo v20, "Default IME is uninstalled. Choose new default IME."

    #@197
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19a
    .line 3121
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    #@19d
    move-result v19

    #@19e
    if-eqz v19, :cond_6

    #@1a0
    .line 3122
    const/16 v19, 0x1

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    move/from16 v1, v19

    #@1a6
    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    #@1a9
    .line 3133
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
    .line 3036
    return-void

    #@1b9
    .line 3126
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
    .line 1622
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@5
    .line 1623
    const/4 v0, 0x0

    #@6
    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@8
    .line 1624
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@b
    .line 1621
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1646
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1647
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
    .line 1648
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1651
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@21
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@24
    .line 1652
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@26
    .line 1653
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@28
    .line 1655
    .end local v1    # "cs$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1656
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2e
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@30
    const/4 v4, 0x0

    #@31
    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    #@34
    .line 1645
    :cond_2
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2652
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2653
    return-void

    #@7
    .line 2655
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 2657
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 2658
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    .line 2659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v2

    #@18
    .line 2660
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
    .line 2661
    const-string/jumbo v6, " token:"

    #@2e
    .line 2660
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
    .line 2667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@41
    .line 2662
    return-void

    #@42
    .end local v2    # "uid":I
    :cond_1
    :try_start_3
    monitor-exit v4

    #@43
    .line 2665
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@45
    invoke-virtual {v3}, Landroid/view/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@48
    .line 2667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 2651
    return-void

    #@4c
    .line 2657
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
    .line 2666
    :catchall_1
    move-exception v3

    #@50
    .line 2667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 2666
    throw v3
.end method

.method public createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3924
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3925
    return-object v8

    #@8
    .line 3928
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 3929
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v1, "token"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 3931
    :cond_1
    if-nez p3, :cond_2

    #@15
    .line 3932
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v1, "packageName"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 3934
    :cond_2
    if-nez p2, :cond_3

    #@20
    .line 3935
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    const-string/jumbo v1, "contentUri"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 3937
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 3938
    .local v6, "contentUriScheme":Ljava/lang/String;
    const-string/jumbo v0, "content"

    #@30
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_4

    #@36
    .line 3939
    new-instance v0, Ljava/security/InvalidParameterException;

    #@38
    const-string/jumbo v1, "contentUri must have content scheme"

    #@3b
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 3942
    :cond_4
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@41
    monitor-enter v7

    #@42
    .line 3943
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v2

    #@46
    .line 3944
    .local v2, "uid":I
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    if-nez v0, :cond_5

    #@4a
    monitor-exit v7

    #@4b
    .line 3945
    return-object v8

    #@4c
    .line 3947
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@4e
    if-eq v0, p1, :cond_6

    #@50
    .line 3948
    const-string/jumbo v0, "InputMethodManagerService"

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v3, "Ignoring createInputContentUriToken mCurToken="

    #@5b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    .line 3949
    const-string/jumbo v3, " token="

    #@68
    .line 3948
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    monitor-exit v7

    #@78
    .line 3950
    return-object v8

    #@79
    .line 3955
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@7b
    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@7d
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@80
    move-result v0

    #@81
    if-nez v0, :cond_7

    #@83
    .line 3956
    const-string/jumbo v0, "InputMethodManagerService"

    #@86
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v3, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    #@8e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    .line 3957
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@94
    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@96
    .line 3956
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    .line 3957
    const-string/jumbo v3, " packageName="

    #@9d
    .line 3956
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    monitor-exit v7

    #@ad
    .line 3958
    return-object v8

    #@ae
    .line 3960
    :cond_7
    :try_start_3
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@b1
    move-result v4

    #@b2
    .line 3961
    .local v4, "imeUserId":I
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@b4
    iget v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@b6
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@b9
    move-result v5

    #@ba
    .line 3962
    .local v5, "appUserId":I
    new-instance v0, Lcom/android/server/InputContentUriTokenHandler;

    #@bc
    move-object v1, p2

    #@bd
    move-object v3, p3

    #@be
    invoke-direct/range {v0 .. v5}, Lcom/android/server/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c1
    monitor-exit v7

    #@c2
    return-object v0

    #@c3
    .line 3942
    .end local v2    # "uid":I
    .end local v4    # "imeUserId":I
    .end local v5    # "appUserId":I
    :catchall_0
    move-exception v0

    #@c4
    monitor-exit v7

    #@c5
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3969
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
    .line 3972
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
    .line 3973
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v12

    #@1b
    .line 3972
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v11

    #@1f
    .line 3974
    const-string/jumbo v12, ", uid="

    #@22
    .line 3972
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v11

    #@26
    .line 3974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v12

    #@2a
    .line 3972
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
    .line 3975
    return-void

    #@38
    .line 3982
    :cond_0
    new-instance v10, Landroid/util/PrintWriterPrinter;

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-direct {v10, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@3f
    .line 3984
    .local v10, "p":Landroid/util/Printer;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@41
    monitor-enter v12

    #@42
    .line 3985
    :try_start_0
    const-string/jumbo v11, "Current Input Method Manager state:"

    #@45
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@48
    .line 3986
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v1

    #@4e
    .line 3987
    .local v1, "N":I
    const-string/jumbo v11, "  Input Methods:"

    #@51
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@54
    .line 3988
    const/4 v7, 0x0

    #@55
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    #@57
    .line 3989
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v8

    #@5d
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    #@5f
    .line 3990
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
    .line 3991
    const-string/jumbo v11, "    "

    #@80
    invoke-virtual {v8, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@83
    .line 3988
    add-int/lit8 v7, v7, 0x1

    #@85
    goto :goto_0

    #@86
    .line 3993
    .end local v8    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const-string/jumbo v11, "  Clients:"

    #@89
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@8c
    .line 3994
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
    .line 3995
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
    .line 3996
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
    .line 3997
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
    .line 3998
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
    .line 3999
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
    .line 3984
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
    .line 4001
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
    .line 4002
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@144
    .line 4003
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
    .line 4004
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
    .line 4005
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@183
    .line 4006
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
    .line 4007
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
    .line 4008
    const-string/jumbo v13, " mBoundToMethod="

    #@1bc
    .line 4007
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v11

    #@1c0
    .line 4008
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@1c2
    .line 4007
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
    .line 4009
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
    .line 4010
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
    .line 4011
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@201
    .line 4012
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
    .line 4013
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
    .line 4014
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
    .line 4015
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
    .line 4016
    const-string/jumbo v13, " mShowExplicitlyRequested="

    #@265
    .line 4015
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v11

    #@269
    .line 4016
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@26b
    .line 4015
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v11

    #@26f
    .line 4017
    const-string/jumbo v13, " mShowForced="

    #@272
    .line 4015
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v11

    #@276
    .line 4017
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@278
    .line 4015
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v11

    #@27c
    .line 4018
    const-string/jumbo v13, " mInputShown="

    #@27f
    .line 4015
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v11

    #@283
    .line 4018
    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@285
    .line 4015
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
    .line 4019
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
    .line 4020
    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@29e
    .line 4019
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
    .line 4021
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
    .line 4022
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
    .line 4023
    const-string/jumbo v11, "  mSwitchingController:"

    #@2eb
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2ee
    .line 4024
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@2f0
    invoke-virtual {v11, v10}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    #@2f3
    .line 4025
    const-string/jumbo v11, "  mSettings:"

    #@2f6
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f9
    .line 4026
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
    .line 4029
    const-string/jumbo v11, " "

    #@305
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@308
    .line 4030
    if-eqz v4, :cond_4

    #@30a
    .line 4031
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@30d
    .line 4033
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
    .line 4041
    :goto_2
    if-eqz v6, :cond_3

    #@31a
    if-eq v4, v6, :cond_3

    #@31c
    .line 4042
    const-string/jumbo v11, " "

    #@31f
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@322
    .line 4043
    const-string/jumbo v11, "Warning: Current input method client doesn\'t match the last focused. window."

    #@325
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@328
    .line 4045
    const-string/jumbo v11, "Dumping input method client in the last focused window just in case."

    #@32b
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@32e
    .line 4046
    const-string/jumbo v11, " "

    #@331
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@334
    .line 4047
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@337
    .line 4049
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
    .line 4055
    :cond_3
    :goto_3
    const-string/jumbo v11, " "

    #@345
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@348
    .line 4056
    if-eqz v9, :cond_5

    #@34a
    .line 4057
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@34d
    .line 4059
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
    .line 3968
    :goto_4
    return-void

    #@357
    .line 4034
    :catch_0
    move-exception v5

    #@358
    .line 4035
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
    .line 4038
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v11, "No input method client."

    #@373
    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@376
    goto :goto_2

    #@377
    .line 4050
    :catch_1
    move-exception v5

    #@378
    .line 4051
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
    .line 4060
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    #@391
    .line 4061
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
    .line 4064
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
    .line 1257
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/os/Binder;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1258
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1256
    :goto_0
    return-void

    #@e
    .line 1260
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    #@11
    .line 1261
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    #@14
    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    #@0
    .prologue
    .line 1528
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    #@0
    .prologue
    .line 3570
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3571
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 3573
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v0

    #@b
    .line 3574
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
    .line 3573
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
    .line 1191
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 1195
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
    .line 1194
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
    .line 1207
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1210
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v2

    #@e
    .line 1212
    if-nez p1, :cond_1

    #@10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1213
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
    .line 1217
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    if-nez v0, :cond_2

    #@20
    .line 1218
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
    .line 1215
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
    .line 1220
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@31
    .line 1221
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@33
    .line 1220
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
    .line 1210
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
    .line 1180
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 1184
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
    .line 1183
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
    .line 2647
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
    .line 2584
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 2585
    return-object v8

    #@8
    .line 2587
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v6

    #@b
    .line 2588
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@d
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    #@10
    move-result-object v1

    #@11
    .line 2590
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
    .line 2591
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
    .line 2590
    if-eqz v5, :cond_2

    #@27
    :cond_1
    monitor-exit v6

    #@28
    .line 2591
    return-object v8

    #@29
    .line 2592
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
    .line 2593
    .local v2, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3

    #@35
    monitor-exit v6

    #@36
    return-object v8

    #@37
    .line 2595
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
    .line 2597
    .local v3, "lastSubtypeHash":I
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@42
    move-result v4

    #@43
    .line 2598
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
    .line 2599
    return-object v8

    #@4d
    .line 2601
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
    .line 2602
    .end local v3    # "lastSubtypeHash":I
    .end local v4    # "lastSubtypeId":I
    :catch_0
    move-exception v0

    #@54
    .local v0, "e":Ljava/lang/NumberFormatException;
    monitor-exit v6

    #@55
    .line 2603
    return-object v8

    #@56
    .line 2587
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
    .line 3621
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v7

    #@3
    .line 3622
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3623
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@a
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 3629
    const-string/jumbo v6, "voice"

    #@13
    .line 3628
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    #@16
    move-result-object v2

    #@17
    .line 3630
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v2, :cond_0

    #@19
    .line 3631
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 3632
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@20
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v7

    #@24
    .line 3634
    return-object v3

    #@25
    .line 3636
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
    .line 3637
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 3638
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
    .line 3639
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    goto :goto_0

    #@5a
    .line 3621
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
    .line 3642
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2786
    move-object/from16 v0, p1

    #@2
    iget v13, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v13, :sswitch_data_0

    #@7
    .line 2980
    const/4 v13, 0x0

    #@8
    return v13

    #@9
    .line 2789
    :sswitch_0
    move-object/from16 v0, p1

    #@b
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@d
    packed-switch v13, :pswitch_data_0

    #@10
    .line 2803
    const-string/jumbo v13, "InputMethodManagerService"

    #@13
    new-instance v14, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v15, "Unknown subtype picker mode = "

    #@1b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v14

    #@1f
    move-object/from16 v0, p1

    #@21
    iget v15, v0, Landroid/os/Message;->arg1:I

    #@23
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v14

    #@27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v14

    #@2b
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2804
    const/4 v13, 0x0

    #@2f
    return v13

    #@30
    .line 2794
    :pswitch_0
    move-object/from16 v0, p0

    #@32
    iget-boolean v11, v0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@34
    .line 2806
    :goto_0
    move-object/from16 v0, p0

    #@36
    invoke-direct {v0, v11}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    #@39
    .line 2807
    const/4 v13, 0x1

    #@3a
    return v13

    #@3b
    .line 2797
    :pswitch_1
    const/4 v11, 0x1

    #@3c
    .line 2798
    .local v11, "showAuxSubtypes":Z
    goto :goto_0

    #@3d
    .line 2800
    .end local v11    # "showAuxSubtypes":Z
    :pswitch_2
    const/4 v11, 0x0

    #@3e
    .line 2801
    .restart local v11    # "showAuxSubtypes":Z
    goto :goto_0

    #@3f
    .line 2810
    .end local v11    # "showAuxSubtypes":Z
    :sswitch_1
    move-object/from16 v0, p1

    #@41
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43
    check-cast v13, Ljava/lang/String;

    #@45
    move-object/from16 v0, p0

    #@47
    invoke-direct {v0, v13}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    #@4a
    .line 2811
    const/4 v13, 0x1

    #@4b
    return v13

    #@4c
    .line 2814
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    #@4f
    .line 2815
    const/4 v13, 0x1

    #@50
    return v13

    #@51
    .line 2821
    :sswitch_3
    :try_start_0
    move-object/from16 v0, p1

    #@53
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    check-cast v13, Lcom/android/internal/view/IInputMethod;

    #@57
    invoke-interface {v13}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    #@5a
    .line 2825
    :goto_1
    const/4 v13, 0x1

    #@5b
    return v13

    #@5c
    .line 2827
    :sswitch_4
    move-object/from16 v0, p1

    #@5e
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@60
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@62
    .line 2829
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@64
    check-cast v13, Lcom/android/internal/view/IInputMethod;

    #@66
    iget-object v14, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@68
    check-cast v14, Landroid/view/inputmethod/InputBinding;

    #@6a
    invoke-interface {v13, v14}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a

    #@6d
    .line 2832
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@70
    .line 2833
    const/4 v13, 0x1

    #@71
    return v13

    #@72
    .line 2835
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    move-object/from16 v0, p1

    #@74
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@76
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@78
    .line 2839
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@7a
    check-cast v13, Lcom/android/internal/view/IInputMethod;

    #@7c
    move-object/from16 v0, p1

    #@7e
    iget v15, v0, Landroid/os/Message;->arg1:I

    #@80
    iget-object v14, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@82
    check-cast v14, Landroid/os/ResultReceiver;

    #@84
    invoke-interface {v13, v15, v14}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    #@87
    .line 2842
    :goto_3
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@8a
    .line 2843
    const/4 v13, 0x1

    #@8b
    return v13

    #@8c
    .line 2845
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    move-object/from16 v0, p1

    #@8e
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@90
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@92
    .line 2849
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@94
    check-cast v13, Lcom/android/internal/view/IInputMethod;

    #@96
    iget-object v14, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@98
    check-cast v14, Landroid/os/ResultReceiver;

    #@9a
    const/4 v15, 0x0

    #@9b
    invoke-interface {v13, v15, v14}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    #@9e
    .line 2852
    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@a1
    .line 2853
    const/4 v13, 0x1

    #@a2
    return v13

    #@a3
    .line 2855
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    move-object/from16 v0, p0

    #@a5
    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a7
    monitor-enter v13

    #@a8
    .line 2856
    const/4 v14, 0x0

    #@a9
    const/4 v15, 0x0

    #@aa
    :try_start_4
    move-object/from16 v0, p0

    #@ac
    invoke-virtual {v0, v14, v15}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@af
    monitor-exit v13

    #@b0
    .line 2858
    const/4 v13, 0x1

    #@b1
    return v13

    #@b2
    .line 2855
    :catchall_0
    move-exception v14

    #@b3
    monitor-exit v13

    #@b4
    throw v14

    #@b5
    .line 2860
    :sswitch_8
    move-object/from16 v0, p1

    #@b7
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b9
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@bb
    .line 2863
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@bd
    check-cast v13, Lcom/android/internal/view/IInputMethod;

    #@bf
    iget-object v14, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c1
    check-cast v14, Landroid/os/IBinder;

    #@c3
    invoke-interface {v13, v14}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7

    #@c6
    .line 2866
    :goto_5
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@c9
    .line 2867
    const/4 v13, 0x1

    #@ca
    return v13

    #@cb
    .line 2869
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    move-object/from16 v0, p1

    #@cd
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cf
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@d1
    .line 2870
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@d3
    check-cast v6, Lcom/android/internal/view/IInputMethod;

    #@d5
    .line 2871
    .local v6, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@d7
    check-cast v2, Landroid/view/InputChannel;

    #@d9
    .line 2873
    .local v2, "channel":Landroid/view/InputChannel;
    :try_start_6
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@db
    check-cast v13, Lcom/android/internal/view/IInputSessionCallback;

    #@dd
    invoke-interface {v6, v2, v13}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@e0
    .line 2878
    if-eqz v2, :cond_0

    #@e2
    invoke-static {v6}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@e5
    move-result v13

    #@e6
    if-eqz v13, :cond_0

    #@e8
    .line 2879
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    #@eb
    .line 2882
    :cond_0
    :goto_6
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ee
    .line 2883
    const/4 v13, 0x1

    #@ef
    return v13

    #@f0
    .line 2874
    :catch_0
    move-exception v5

    #@f1
    .line 2878
    .local v5, "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_0

    #@f3
    invoke-static {v6}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@f6
    move-result v13

    #@f7
    if-eqz v13, :cond_0

    #@f9
    .line 2879
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    #@fc
    goto :goto_6

    #@fd
    .line 2875
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v13

    #@fe
    .line 2878
    if-eqz v2, :cond_1

    #@100
    invoke-static {v6}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@103
    move-result v14

    #@104
    if-eqz v14, :cond_1

    #@106
    .line 2879
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    #@109
    .line 2875
    :cond_1
    throw v13

    #@10a
    .line 2888
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "channel":Landroid/view/InputChannel;
    .end local v6    # "method":Lcom/android/internal/view/IInputMethod;
    :sswitch_a
    move-object/from16 v0, p1

    #@10c
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@10e
    .line 2889
    .local v7, "missingMethods":I
    move-object/from16 v0, p1

    #@110
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@112
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@114
    .line 2891
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@116
    check-cast v10, Lcom/android/server/InputMethodManagerService$SessionState;

    #@118
    .line 2892
    .local v10, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    move-object/from16 v0, p0

    #@11a
    invoke-virtual {v0, v10}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@11d
    .line 2893
    iget-object v15, v10, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@11f
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@121
    check-cast v13, Lcom/android/internal/view/IInputContext;

    #@123
    .line 2894
    iget-object v14, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@125
    check-cast v14, Landroid/view/inputmethod/EditorInfo;

    #@127
    .line 2893
    invoke-interface {v15, v13, v7, v14}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    #@12a
    .line 2897
    .end local v10    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_7
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@12d
    .line 2898
    const/4 v13, 0x1

    #@12e
    return v13

    #@12f
    .line 2901
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "missingMethods":I
    :sswitch_b
    move-object/from16 v0, p1

    #@131
    iget v7, v0, Landroid/os/Message;->arg1:I

    #@133
    .line 2902
    .restart local v7    # "missingMethods":I
    move-object/from16 v0, p1

    #@135
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@137
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@139
    .line 2904
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13b
    check-cast v10, Lcom/android/server/InputMethodManagerService$SessionState;

    #@13d
    .line 2905
    .restart local v10    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v10}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    #@142
    .line 2906
    iget-object v15, v10, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@144
    iget-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@146
    check-cast v13, Lcom/android/internal/view/IInputContext;

    #@148
    .line 2907
    iget-object v14, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@14a
    check-cast v14, Landroid/view/inputmethod/EditorInfo;

    #@14c
    .line 2906
    invoke-interface {v15, v13, v7, v14}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    #@14f
    .line 2910
    .end local v10    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_8
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@152
    .line 2911
    const/4 v13, 0x1

    #@153
    return v13

    #@154
    .line 2918
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "missingMethods":I
    :sswitch_c
    :try_start_9
    move-object/from16 v0, p1

    #@156
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@158
    check-cast v13, Lcom/android/internal/view/IInputMethodClient;

    #@15a
    move-object/from16 v0, p1

    #@15c
    iget v14, v0, Landroid/os/Message;->arg1:I

    #@15e
    move-object/from16 v0, p1

    #@160
    iget v15, v0, Landroid/os/Message;->arg2:I

    #@162
    invoke-interface {v13, v14, v15}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    #@165
    .line 2922
    :goto_9
    const/4 v13, 0x1

    #@166
    return v13

    #@167
    .line 2924
    :sswitch_d
    move-object/from16 v0, p1

    #@169
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16b
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@16d
    .line 2925
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16f
    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    #@171
    .line 2926
    .local v3, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@173
    check-cast v8, Lcom/android/internal/view/InputBindResult;

    #@175
    .line 2928
    .local v8, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_a
    invoke-interface {v3, v8}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@178
    .line 2934
    iget-object v13, v8, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@17a
    if-eqz v13, :cond_2

    #@17c
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@17f
    move-result v13

    #@180
    if-eqz v13, :cond_2

    #@182
    .line 2935
    iget-object v13, v8, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@184
    invoke-virtual {v13}, Landroid/view/InputChannel;->dispose()V

    #@187
    .line 2938
    :cond_2
    :goto_a
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@18a
    .line 2939
    const/4 v13, 0x1

    #@18b
    return v13

    #@18c
    .line 2929
    :catch_1
    move-exception v5

    #@18d
    .line 2930
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v13, "InputMethodManagerService"

    #@190
    new-instance v14, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v15, "Client died receiving input method "

    #@198
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v14

    #@19c
    iget-object v15, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@19e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v14

    #@1a2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v14

    #@1a6
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@1a9
    .line 2934
    iget-object v13, v8, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@1ab
    if-eqz v13, :cond_2

    #@1ad
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@1b0
    move-result v13

    #@1b1
    if-eqz v13, :cond_2

    #@1b3
    .line 2935
    iget-object v13, v8, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@1b5
    invoke-virtual {v13}, Landroid/view/InputChannel;->dispose()V

    #@1b8
    goto :goto_a

    #@1b9
    .line 2931
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v13

    #@1ba
    .line 2934
    iget-object v14, v8, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@1bc
    if-eqz v14, :cond_3

    #@1be
    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    #@1c1
    move-result v14

    #@1c2
    if-eqz v14, :cond_3

    #@1c4
    .line 2935
    iget-object v14, v8, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@1c6
    invoke-virtual {v14}, Landroid/view/InputChannel;->dispose()V

    #@1c9
    .line 2931
    :cond_3
    throw v13

    #@1ca
    .line 2943
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v8    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_e
    :try_start_c
    move-object/from16 v0, p1

    #@1cc
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ce
    check-cast v13, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d0
    iget-object v14, v13, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@1d6
    if-eqz v13, :cond_4

    #@1d8
    const/4 v13, 0x1

    #@1d9
    :goto_b
    invoke-interface {v14, v13}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    #@1dc
    .line 2949
    :goto_c
    const/4 v13, 0x1

    #@1dd
    return v13

    #@1de
    .line 2943
    :cond_4
    const/4 v13, 0x0

    #@1df
    goto :goto_b

    #@1e0
    .line 2944
    :catch_2
    move-exception v5

    #@1e1
    .line 2945
    .restart local v5    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "InputMethodManagerService"

    #@1e4
    new-instance v13, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v15, "Got RemoteException sending setActive(false) notification to pid "

    #@1ec
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v15

    #@1f0
    .line 2946
    move-object/from16 v0, p1

    #@1f2
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f4
    check-cast v13, Lcom/android/server/InputMethodManagerService$ClientState;

    #@1f6
    iget v13, v13, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@1f8
    .line 2945
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v13

    #@1fc
    .line 2946
    const-string/jumbo v15, " uid "

    #@1ff
    .line 2945
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v15

    #@203
    .line 2947
    move-object/from16 v0, p1

    #@205
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@207
    check-cast v13, Lcom/android/server/InputMethodManagerService$ClientState;

    #@209
    iget v13, v13, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@20b
    .line 2945
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v13

    #@20f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v13

    #@213
    invoke-static {v14, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@216
    goto :goto_c

    #@217
    .line 2951
    .end local v5    # "e":Landroid/os/RemoteException;
    :sswitch_f
    move-object/from16 v0, p1

    #@219
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@21b
    if-eqz v13, :cond_5

    #@21d
    const/4 v13, 0x1

    #@21e
    :goto_d
    move-object/from16 v0, p0

    #@220
    invoke-direct {v0, v13}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    #@223
    .line 2952
    const/4 v13, 0x1

    #@224
    return v13

    #@225
    .line 2951
    :cond_5
    const/4 v13, 0x0

    #@226
    goto :goto_d

    #@227
    .line 2954
    :sswitch_10
    move-object/from16 v0, p1

    #@229
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@22b
    if-eqz v13, :cond_6

    #@22d
    const/4 v13, 0x1

    #@22e
    :goto_e
    move-object/from16 v0, p0

    #@230
    invoke-direct {v0, v13}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    #@233
    .line 2955
    const/4 v13, 0x1

    #@234
    return v13

    #@235
    .line 2954
    :cond_6
    const/4 v13, 0x0

    #@236
    goto :goto_e

    #@237
    .line 2957
    :sswitch_11
    move-object/from16 v0, p1

    #@239
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@23b
    .line 2958
    .local v9, "sequenceNumber":I
    move-object/from16 v0, p1

    #@23d
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23f
    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    #@241
    .line 2960
    .local v4, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_d
    iget-object v13, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@243
    invoke-interface {v13, v9}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    #@246
    .line 2968
    :goto_f
    const/4 v13, 0x1

    #@247
    return v13

    #@248
    .line 2961
    :catch_3
    move-exception v5

    #@249
    .line 2962
    .restart local v5    # "e":Landroid/os/RemoteException;
    const-string/jumbo v13, "InputMethodManagerService"

    #@24c
    new-instance v14, Ljava/lang/StringBuilder;

    #@24e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@251
    const-string/jumbo v15, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    #@254
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v14

    #@258
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v14

    #@25c
    .line 2964
    const-string/jumbo v15, ") notification to pid "

    #@25f
    .line 2962
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@262
    move-result-object v14

    #@263
    .line 2965
    iget v15, v4, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@265
    .line 2962
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@268
    move-result-object v14

    #@269
    .line 2965
    const-string/jumbo v15, " uid "

    #@26c
    .line 2962
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v14

    #@270
    .line 2966
    iget v15, v4, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@272
    .line 2962
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@275
    move-result-object v14

    #@276
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v14

    #@27a
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27d
    goto :goto_f

    #@27e
    .line 2973
    .end local v4    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v9    # "sequenceNumber":I
    :sswitch_12
    move-object/from16 v0, p0

    #@280
    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@282
    move-object/from16 v0, p1

    #@284
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@286
    const/4 v15, 0x1

    #@287
    if-ne v13, v15, :cond_7

    #@289
    const/4 v13, 0x1

    #@28a
    :goto_10
    invoke-virtual {v14, v13}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    #@28d
    .line 2974
    const/4 v13, 0x1

    #@28e
    return v13

    #@28f
    .line 2973
    :cond_7
    const/4 v13, 0x0

    #@290
    goto :goto_10

    #@291
    .line 2976
    :sswitch_13
    move-object/from16 v0, p1

    #@293
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@295
    .line 2977
    .local v12, "userId":I
    move-object/from16 v0, p0

    #@297
    invoke-virtual {v0, v12}, Lcom/android/server/InputMethodManagerService;->onUnlockUser(I)V

    #@29a
    .line 2978
    const/4 v13, 0x1

    #@29b
    return v13

    #@29c
    .line 2919
    .end local v12    # "userId":I
    :catch_4
    move-exception v5

    #@29d
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@29f
    .line 2908
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v7    # "missingMethods":I
    :catch_5
    move-exception v5

    #@2a0
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    #@2a2
    .line 2895
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_6
    move-exception v5

    #@2a3
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@2a5
    .line 2864
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v7    # "missingMethods":I
    :catch_7
    move-exception v5

    #@2a6
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@2a8
    .line 2850
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_8
    move-exception v5

    #@2a9
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    #@2ab
    .line 2840
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v5

    #@2ac
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@2ae
    .line 2830
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v5

    #@2af
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@2b1
    .line 2822
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v5

    #@2b2
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@2b4
    .line 2786
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
        0x1388 -> :sswitch_13
    .end sparse-switch

    #@306
    .line 2789
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
    .line 2190
    and-int/lit8 v3, p1, 0x1

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 2191
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@8
    if-nez v3, :cond_0

    #@a
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@c
    .line 2190
    if-eqz v3, :cond_1

    #@e
    .line 2193
    :cond_0
    return v2

    #@f
    .line 2195
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@11
    if-eqz v3, :cond_2

    #@13
    and-int/lit8 v3, p1, 0x2

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 2197
    return v2

    #@18
    .line 2208
    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@1a
    if-eqz v3, :cond_6

    #@1c
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 2209
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@22
    and-int/lit8 v3, v3, 0x1

    #@24
    if-eqz v3, :cond_5

    #@26
    .line 2211
    .local v1, "shouldHideSoftInput":Z
    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    #@28
    .line 2216
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2c
    .line 2217
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2e
    const/16 v6, 0x406

    #@30
    .line 2216
    invoke-virtual {v4, v6, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@37
    .line 2218
    const/4 v0, 0x1

    #@38
    .line 2222
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
    .line 2223
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@42
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@44
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@47
    .line 2224
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@49
    .line 2226
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@4b
    .line 2227
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4d
    .line 2228
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@4f
    .line 2229
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@51
    .line 2230
    return v0

    #@52
    .end local v0    # "res":Z
    .end local v1    # "shouldHideSoftInput":Z
    :cond_5
    move v1, v2

    #@53
    .line 2209
    goto :goto_0

    #@54
    :cond_6
    move v1, v2

    #@55
    .line 2208
    goto :goto_0

    #@56
    .line 2220
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
    .line 3341
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 3342
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 3340
    return-void

    #@8
    .line 3341
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
    .line 3349
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3350
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@a
    .line 3351
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@c
    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@e
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@10
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@12
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@15
    .line 3355
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    #@17
    .line 3356
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    #@19
    .line 3346
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2723
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2724
    return-void

    #@7
    .line 2726
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 2727
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    .line 2728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 2729
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
    .line 2730
    const-string/jumbo v6, " token:"

    #@2a
    .line 2729
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
    .line 2731
    return-void

    #@3b
    .line 2733
    .end local v2    # "uid":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result-wide v0

    #@3f
    .line 2735
    .local v0, "ident":J
    const/4 v3, 0x0

    #@40
    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 2737
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 2722
    return-void

    #@48
    .line 2736
    :catchall_0
    move-exception v3

    #@49
    .line 2737
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2736
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 2726
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
    .line 2158
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2159
    return v7

    #@8
    .line 2161
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    .line 2162
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 2164
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 2165
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v4, :cond_1

    #@17
    if-nez p1, :cond_2

    #@19
    .line 2171
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
    .line 2185
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 2174
    return v7

    #@26
    .line 2166
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
    .line 2182
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
    .line 2185
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 2182
    return v4

    #@3d
    .line 2176
    :catch_0
    move-exception v0

    #@3e
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3f
    .line 2185
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 2177
    return v7

    #@43
    .line 2164
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
    .line 2184
    :catchall_1
    move-exception v4

    #@47
    .line 2185
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2184
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
    .line 1889
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1890
    return v8

    #@8
    .line 1892
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v7

    #@b
    .line 1893
    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@d
    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    #@13
    .line 1895
    .local v5, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_3

    #@15
    .line 1896
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 1897
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
    .line 1898
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1899
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    #@26
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@29
    .line 1902
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 1903
    const-string/jumbo v6, "android.text.style.SUGGESTION_PICKED"

    #@33
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@36
    .line 1904
    const-string/jumbo v6, "before"

    #@39
    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 1905
    const-string/jumbo v6, "after"

    #@3f
    aget-object v8, v4, p3

    #@41
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@44
    .line 1906
    const-string/jumbo v6, "hashcode"

    #@47
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    #@4a
    move-result v8

    #@4b
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4e
    .line 1907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@51
    move-result-wide v2

    #@52
    .line 1909
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
    .line 1911
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    .line 1913
    const/4 v6, 0x1

    #@5d
    monitor-exit v7

    #@5e
    return v6

    #@5f
    .line 1910
    :catchall_0
    move-exception v6

    #@60
    .line 1911
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1910
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@64
    .line 1892
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
    .line 1916
    return v8
.end method

.method public notifyUserAction(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    #@0
    .prologue
    .line 2676
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2677
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v1, p1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 2683
    return-void

    #@9
    .line 2685
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
    .line 2686
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    #@15
    .line 2687
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
    .line 2672
    return-void

    #@1e
    .line 2676
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
    .line 1533
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1534
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
    .line 1535
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@19
    .line 1536
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1537
    const-string/jumbo v0, "InputMethodManagerService"

    #@20
    const-string/jumbo v2, "Service connected without a token!"

    #@23
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1538
    const/4 v0, 0x0

    #@27
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 1539
    return-void

    #@2c
    .line 1542
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2e
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@30
    .line 1543
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@32
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@34
    const/16 v5, 0x410

    #@36
    .line 1542
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@3d
    .line 1544
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1545
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@43
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@46
    .line 1546
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@48
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    :cond_1
    monitor-exit v1

    #@4c
    .line 1532
    return-void

    #@4d
    .line 1533
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
    .line 1662
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1666
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
    .line 1665
    if-eqz v0, :cond_0

    #@17
    .line 1667
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    #@1a
    .line 1670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@20
    .line 1671
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@22
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@24
    .line 1672
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@27
    .line 1673
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1674
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@2d
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@31
    .line 1676
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@33
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@35
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@37
    .line 1675
    const/16 v5, 0xbb8

    #@39
    const/4 v6, 0x3

    #@3a
    .line 1674
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
    .line 1661
    return-void

    #@43
    .line 1662
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
    .line 1554
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1555
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@5
    if-eqz v1, :cond_1

    #@7
    if-eqz p1, :cond_1

    #@9
    .line 1556
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
    .line 1557
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1558
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1e
    .line 1559
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
    .line 1561
    const/4 v1, 0x1

    #@2a
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    #@2d
    move-result-object v0

    #@2e
    .line 1562
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 1563
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@34
    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@36
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@38
    .line 1564
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    const/16 v5, 0xbc2

    #@3e
    .line 1563
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
    .line 1566
    return-void

    #@47
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1
    monitor-exit v2

    #@48
    .line 1572
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    #@4b
    .line 1553
    return-void

    #@4c
    .line 1554
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
    .line 846
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 847
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 845
    return-void

    #@8
    .line 846
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
    .line 1065
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 1066
    :catch_0
    move-exception v0

    #@6
    .line 1069
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1070
    const-string/jumbo v1, "InputMethodManagerService"

    #@d
    const-string/jumbo v2, "Input Method Manager Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 1072
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
    .line 830
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 831
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@7
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    .line 835
    .local v0, "currentUserId":I
    if-eq p1, v0, :cond_0

    #@d
    monitor-exit v3

    #@e
    .line 836
    return-void

    #@f
    .line 838
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
    .line 840
    const/4 v1, 0x0

    #@19
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    #@1c
    .line 841
    const/4 v1, 0x1

    #@1d
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v3

    #@21
    .line 829
    return-void

    #@22
    :cond_1
    move v1, v2

    #@23
    .line 838
    goto :goto_0

    #@24
    .line 830
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
    .line 1873
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1874
    return-void

    #@7
    .line 1876
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 1877
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
    .line 1878
    .local v0, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@16
    if-ge v1, v3, :cond_2

    #@18
    .line 1879
    aget-object v2, p1, v1

    #@1a
    .line 1880
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
    .line 1881
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    #@26
    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1878
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_2
    monitor-exit v4

    #@2d
    .line 1872
    return-void

    #@2e
    .line 1876
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
    .line 1239
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1240
    return-void

    #@7
    .line 1242
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v2

    #@a
    .line 1243
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
    .line 1244
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_2

    #@18
    .line 1245
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@1b
    .line 1246
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    if-ne v1, v0, :cond_1

    #@1f
    .line 1247
    const/4 v1, 0x0

    #@20
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@22
    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@24
    if-ne v1, v0, :cond_2

    #@26
    .line 1250
    const/4 v1, 0x0

    #@27
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_2
    monitor-exit v2

    #@2a
    .line 1238
    return-void

    #@2b
    .line 1242
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
    .line 1611
    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1613
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@c
    move-result-object v0

    #@d
    .line 1614
    .local v0, "channels":[Landroid/view/InputChannel;
    iput-boolean v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@f
    .line 1615
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@11
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@13
    .line 1616
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@15
    aget-object v4, v0, v4

    #@17
    .line 1617
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
    .line 1616
    const/16 v6, 0x41a

    #@23
    .line 1615
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@2a
    .line 1610
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .locals 1
    .param p1, "unbindClientReason"    # I

    #@0
    .prologue
    .line 1605
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    .line 1606
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    #@7
    .line 1607
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    #@a
    .line 1604
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 10
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2610
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v7

    #@4
    if-nez v7, :cond_0

    #@6
    .line 2611
    return-void

    #@7
    .line 2615
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
    .line 2616
    :cond_2
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v8

    #@13
    .line 2617
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
    .line 2618
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_3

    #@1d
    monitor-exit v8

    #@1e
    return-void

    #@1f
    .line 2621
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
    .line 2626
    .local v5, "packageInfos":[Ljava/lang/String;
    if-eqz v5, :cond_5

    #@2b
    .line 2627
    :try_start_2
    array-length v6, v5

    #@2c
    .line 2628
    .local v6, "packageNum":I
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_5

    #@2f
    .line 2629
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
    .line 2630
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@3d
    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    #@40
    .line 2631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    move-result-wide v2

    #@44
    .line 2633
    .local v2, "ident":J
    const/4 v7, 0x0

    #@45
    :try_start_3
    invoke-virtual {p0, v7}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .line 2635
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4b
    monitor-exit v8

    #@4c
    .line 2637
    return-void

    #@4d
    .line 2622
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catch_0
    move-exception v0

    #@4e
    .line 2623
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
    .line 2624
    return-void

    #@59
    .line 2634
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :catchall_0
    move-exception v7

    #@5a
    .line 2635
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    .line 2634
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@5e
    .line 2616
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
    .line 2628
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
    .line 2642
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3649
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 3650
    return v5

    #@8
    .line 3652
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 3653
    if-eqz p1, :cond_1

    #@d
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 3654
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
    .line 3655
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@1e
    move-result v2

    #@1f
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@22
    move-result v1

    #@23
    .line 3656
    .local v1, "subtypeId":I
    const/4 v2, -0x1

    #@24
    if-eq v1, v2, :cond_1

    #@26
    .line 3657
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@28
    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3658
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
    .line 3661
    return v5

    #@30
    .line 3652
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
    .line 2764
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@2
    if-eq v1, p1, :cond_1

    #@4
    .line 2765
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
    .line 2768
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
    .line 2772
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@1c
    .line 2773
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
    .line 2776
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
    .line 2763
    :cond_1
    :goto_1
    return-void

    #@33
    .line 2777
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@35
    .line 2769
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
    .line 1790
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1791
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    .line 1792
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
    .line 1793
    const-string/jumbo v3, " token:"

    #@20
    .line 1792
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
    .line 1794
    return-void

    #@30
    .line 1797
    .end local v0    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@32
    monitor-enter v2

    #@33
    .line 1798
    :try_start_0
    iput p2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@35
    .line 1799
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@37
    .line 1800
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v2

    #@3b
    .line 1789
    return-void

    #@3c
    .line 1797
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
    .line 2430
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2431
    return-void

    #@7
    .line 2433
    :cond_0
    const/4 v0, -0x1

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@b
    .line 2429
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2438
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2439
    return-void

    #@7
    .line 2441
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2442
    if-eqz p3, :cond_1

    #@c
    .line 2444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@14
    .line 2445
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@17
    move-result v2

    #@18
    .line 2444
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@1b
    move-result v0

    #@1c
    .line 2443
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :goto_0
    monitor-exit v1

    #@20
    .line 2437
    return-void

    #@21
    .line 2447
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 2441
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
    .line 3364
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 3365
    return v3

    #@8
    .line 3367
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@a
    monitor-enter v3

    #@b
    .line 3368
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@d
    .line 3369
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@10
    .line 3368
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 3371
    new-instance v2, Ljava/lang/SecurityException;

    #@18
    .line 3372
    const-string/jumbo v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1b
    .line 3371
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 3367
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .line 3376
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-wide v0

    #@26
    .line 3378
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    move-result v2

    #@2a
    .line 3380
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    monitor-exit v3

    #@2e
    .line 3378
    return v2

    #@2f
    .line 3379
    :catchall_1
    move-exception v2

    #@30
    .line 3380
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 3379
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
    .line 3387
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@a
    .line 3388
    .local v2, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_0

    #@c
    .line 3389
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
    .line 3392
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2a
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    #@2d
    move-result-object v1

    #@2e
    .line 3395
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_3

    #@30
    .line 3396
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
    .line 3397
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
    .line 3400
    return v8

    #@4b
    .line 3403
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@4d
    invoke-virtual {v6, p1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    #@50
    .line 3405
    return v7

    #@51
    .line 3407
    .end local v4    # "pair$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    .line 3408
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@58
    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_6

    #@5e
    .line 3411
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@60
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 3412
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
    .line 3417
    :cond_4
    :goto_0
    return v8

    #@71
    .line 3413
    :cond_5
    const-string/jumbo v6, "InputMethodManagerService"

    #@74
    const-string/jumbo v7, "Can\'t find new IME, unsetting the current input method."

    #@77
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 3414
    const-string/jumbo v6, ""

    #@7d
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    #@80
    goto :goto_0

    #@81
    .line 3421
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
    .line 2001
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    #@8
    .line 2002
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_0

    #@a
    .line 2003
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
    .line 2007
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_7

    #@2c
    .line 2008
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@2f
    move-result v7

    #@30
    .line 2009
    .local v7, "subtypeCount":I
    if-gtz v7, :cond_1

    #@32
    .line 2010
    return-void

    #@33
    .line 2012
    :cond_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@35
    .line 2014
    .local v6, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_3

    #@37
    if-ge p2, v7, :cond_3

    #@39
    .line 2015
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@3c
    move-result-object v5

    #@3d
    .line 2021
    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    if-eqz v5, :cond_2

    #@3f
    if-nez v6, :cond_4

    #@41
    .line 2022
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
    .line 2023
    const-string/jumbo v10, ", new subtype = "

    #@57
    .line 2022
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
    .line 2024
    return-void

    #@67
    .line 2019
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@6a
    move-result-object v5

    #@6b
    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    #@6c
    .line 2026
    :cond_4
    if-eq v5, v6, :cond_6

    #@6e
    .line 2027
    const/4 v8, 0x1

    #@6f
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@72
    .line 2028
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@74
    if-eqz v8, :cond_5

    #@76
    .line 2030
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@78
    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@7a
    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@7c
    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@7f
    .line 2031
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@81
    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 2037
    :cond_5
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@86
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@89
    move-result v8

    #@8a
    invoke-direct {p0, v8, v1, v5}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@8d
    .line 2039
    :cond_6
    return-void

    #@8e
    .line 2032
    :catch_0
    move-exception v0

    #@8f
    .line 2033
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "InputMethodManagerService"

    #@92
    const-string/jumbo v9, "Failed to call changeInputMethodSubtype"

    #@95
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 2034
    return-void

    #@99
    .line 2043
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeCount":I
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9c
    move-result-wide v2

    #@9d
    .line 2047
    .local v2, "ident":J
    const/4 v8, 0x0

    #@9e
    :try_start_1
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    #@a1
    .line 2051
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@a3
    .line 2053
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@a6
    move-result v8

    #@a7
    if-eqz v8, :cond_8

    #@a9
    .line 2054
    new-instance v4, Landroid/content/Intent;

    #@ab
    const-string/jumbo v8, "android.intent.action.INPUT_METHOD_CHANGED"

    #@ae
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b1
    .line 2055
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    #@b3
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@b6
    .line 2056
    const-string/jumbo v8, "input_method_id"

    #@b9
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@bc
    .line 2057
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@be
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@c0
    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@c3
    .line 2059
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    const/4 v8, 0x2

    #@c4
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c7
    .line 2061
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ca
    .line 2064
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@cc
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@cf
    move-result v8

    #@d0
    .line 2065
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    #@d3
    move-result-object v9

    #@d4
    .line 2064
    invoke-direct {p0, v8, v1, v9}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@d7
    .line 2000
    return-void

    #@d8
    .line 2060
    :catchall_0
    move-exception v8

    #@d9
    .line 2061
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@dc
    .line 2060
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
    .line 2562
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2563
    return v8

    #@9
    .line 2565
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    monitor-enter v3

    #@c
    .line 2566
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 2567
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    .line 2568
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
    .line 2569
    const-string/jumbo v5, " token:"

    #@2c
    .line 2568
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
    .line 2570
    return v8

    #@3d
    .line 2572
    .end local v1    # "uid":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@3f
    .line 2573
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
    .line 2574
    const/4 v7, 0x1

    #@4d
    .line 2572
    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v0

    #@51
    .line 2575
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    #@53
    monitor-exit v3

    #@54
    .line 2576
    return v8

    #@55
    :cond_2
    monitor-exit v3

    #@56
    .line 2578
    return v9

    #@57
    .line 2565
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
    .line 2102
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    #@4
    .line 2103
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2104
    return v9

    #@9
    .line 2107
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 2108
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@f
    .line 2109
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    #@11
    .line 2114
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@13
    if-nez v1, :cond_3

    #@15
    .line 2115
    return v9

    #@16
    .line 2110
    :cond_2
    and-int/lit8 v1, p1, 0x1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 2111
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    #@1c
    goto :goto_0

    #@1d
    .line 2118
    :cond_3
    const/4 v0, 0x0

    #@1e
    .line 2119
    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@20
    if-eqz v1, :cond_7

    #@22
    .line 2121
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@24
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@26
    .line 2122
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    #@29
    move-result v3

    #@2a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@2c
    const/16 v5, 0x3fc

    #@2e
    .line 2121
    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@35
    .line 2124
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    #@37
    .line 2125
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@39
    if-eqz v1, :cond_4

    #@3b
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@3d
    if-eqz v1, :cond_6

    #@3f
    .line 2132
    :cond_4
    :goto_1
    const/4 v0, 0x1

    #@40
    .line 2152
    :cond_5
    :goto_2
    return v0

    #@41
    .line 2127
    :cond_6
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@43
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@45
    const v3, 0xc000001

    #@48
    .line 2126
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@4b
    .line 2130
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@4d
    goto :goto_1

    #@4e
    .line 2133
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@50
    if-eqz v1, :cond_5

    #@52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@55
    move-result-wide v2

    #@56
    .line 2134
    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@58
    const-wide/16 v6, 0xbb8

    #@5a
    add-long/2addr v4, v6

    #@5b
    .line 2133
    cmp-long v1, v2, v4

    #@5d
    if-ltz v1, :cond_5

    #@5f
    .line 2139
    const/4 v1, 0x3

    #@60
    new-array v1, v1, [Ljava/lang/Object;

    #@62
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@64
    aput-object v2, v1, v9

    #@66
    .line 2140
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
    .line 2139
    const/16 v2, 0x7d00

    #@7c
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@7f
    .line 2141
    const-string/jumbo v1, "InputMethodManagerService"

    #@82
    const-string/jumbo v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    #@85
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 2142
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8a
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@8d
    .line 2143
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
    .line 2455
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2456
    return-void

    #@7
    .line 2458
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    .line 2460
    const/4 v3, 0x2

    #@f
    .line 2459
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
    .line 2454
    return-void

    #@18
    .line 2458
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
    .line 2411
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2412
    return-void

    #@7
    .line 2414
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 2415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@c
    if-eqz v0, :cond_1

    #@e
    if-nez p1, :cond_3

    #@10
    .line 2417
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
    .line 2418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@22
    move-result v3

    #@23
    .line 2417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 2418
    const-string/jumbo v3, ": "

    #@2a
    .line 2417
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
    .line 2423
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    #@3b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@3d
    .line 2424
    const/4 v3, 0x1

    #@3e
    .line 2423
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
    .line 2410
    return-void

    #@47
    .line 2416
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
    .line 2414
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
    .line 2744
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2745
    return-void

    #@7
    .line 2747
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@9
    monitor-enter v4

    #@a
    .line 2748
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    .line 2749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 2750
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
    .line 2751
    const-string/jumbo v6, " token:"

    #@2a
    .line 2750
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
    .line 2752
    return-void

    #@3b
    .line 2754
    .end local v2    # "uid":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result-wide v0

    #@3f
    .line 2756
    .local v0, "ident":J
    const/4 v3, 0x0

    #@40
    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 2758
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 2743
    return-void

    #@48
    .line 2757
    :catchall_0
    move-exception v3

    #@49
    .line 2758
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2757
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 2747
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
    .line 2071
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2072
    return v8

    #@8
    .line 2074
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    .line 2075
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 2077
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 2078
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v4, :cond_1

    #@17
    if-nez p1, :cond_2

    #@19
    .line 2084
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
    .line 2085
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
    .line 2097
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 2086
    return v8

    #@4b
    .line 2079
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
    .line 2094
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
    .line 2097
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 2094
    return v4

    #@62
    .line 2088
    :catch_0
    move-exception v0

    #@63
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@64
    .line 2097
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 2089
    return v8

    #@68
    .line 2077
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
    .line 2096
    :catchall_1
    move-exception v4

    #@6c
    .line 2097
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 2096
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
    .line 1451
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1452
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@9
    return-object v0

    #@a
    .line 1455
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1458
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@10
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@12
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@14
    .line 1459
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@16
    move-object v2, v1

    #@17
    .line 1458
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@1a
    return-object v0

    #@1b
    .line 1462
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
    .line 1463
    .local v7, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v7, :cond_2

    #@27
    .line 1464
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
    .line 1467
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    #@46
    .line 1469
    new-instance v0, Landroid/content/Intent;

    #@48
    const-string/jumbo v2, "android.view.InputMethod"

    #@4b
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4e
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@50
    .line 1470
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@52
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@59
    .line 1471
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@5b
    const-string/jumbo v2, "android.intent.extra.client_label"

    #@5e
    .line 1472
    const v3, 0x104046f

    #@61
    .line 1471
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@64
    .line 1473
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@66
    const-string/jumbo v2, "android.intent.extra.client_intent"

    #@69
    .line 1474
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@6b
    new-instance v4, Landroid/content/Intent;

    #@6d
    const-string/jumbo v5, "android.settings.INPUT_METHOD_SETTINGS"

    #@70
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@73
    .line 1473
    invoke-static {v3, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@7a
    .line 1475
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
    .line 1478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@88
    move-result-wide v2

    #@89
    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@8b
    .line 1479
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@8d
    .line 1480
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@93
    .line 1481
    new-instance v0, Landroid/os/Binder;

    #@95
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@98
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@9a
    .line 1483
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
    .line 1484
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@b8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@ba
    .line 1485
    const/16 v3, 0x7db

    #@bc
    .line 1484
    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    .line 1488
    :goto_0
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@c1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@c3
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@c5
    .line 1489
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@c7
    move-object v2, v1

    #@c8
    .line 1488
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@cb
    return-object v0

    #@cc
    .line 1491
    :cond_3
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@ce
    .line 1492
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
    .line 1493
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    #@df
    .line 1492
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
    .line 1495
    return-object v1

    #@eb
    .line 1486
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
    .line 1341
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1342
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@7
    return-object v0

    #@8
    .line 1345
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
    .line 1346
    .local v1, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v1, :cond_1

    #@16
    .line 1347
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
    .line 1348
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v3

    #@28
    .line 1347
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
    .line 1351
    :cond_1
    if-nez p5, :cond_2

    #@36
    .line 1352
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
    .line 1353
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@47
    .line 1352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 1353
    const-string/jumbo v3, " pid="

    #@4e
    .line 1352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    .line 1353
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@54
    .line 1352
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
    .line 1354
    return-object v4

    #@60
    .line 1358
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
    .line 1364
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
    .line 1365
    const-string/jumbo v3, " (uid="

    #@82
    .line 1364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 1365
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@88
    .line 1364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 1365
    const-string/jumbo v3, " pid="

    #@8f
    .line 1364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    .line 1365
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@95
    .line 1364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    .line 1365
    const-string/jumbo v3, ")"

    #@9c
    .line 1364
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
    .line 1366
    return-object v4

    #@a8
    .line 1368
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
    .line 1371
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
    .line 2239
    if-eqz p3, :cond_0

    #@2
    .line 2240
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
    .line 2243
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
    .line 1379
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1380
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@9
    return-object v0

    #@a
    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@c
    iget v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@e
    .line 1384
    iget-object v5, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@10
    .line 1383
    invoke-static {v0, v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1385
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
    .line 1386
    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@27
    .line 1385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1386
    const-string/jumbo v2, " package="

    #@2e
    .line 1385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 1386
    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@34
    .line 1385
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
    .line 1387
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    #@41
    return-object v0

    #@42
    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@44
    if-eq v0, p1, :cond_2

    #@46
    .line 1392
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    #@49
    move-result v0

    #@4a
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    #@4c
    .line 1395
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    #@4f
    .line 1400
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 1401
    iget-object v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@55
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@57
    .line 1402
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    #@59
    if-eqz v0, :cond_4

    #@5b
    move v0, v2

    #@5c
    :goto_0
    const/16 v6, 0xbcc

    #@5e
    .line 1401
    invoke-virtual {v5, v6, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {p0, v4, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@65
    .line 1407
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@67
    add-int/lit8 v0, v0, 0x1

    #@69
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@6b
    .line 1408
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@6d
    if-gtz v0, :cond_3

    #@6f
    iput v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@71
    .line 1409
    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@73
    .line 1410
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    #@75
    .line 1411
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    #@77
    .line 1412
    iput-object p4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    #@79
    .line 1415
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
    .line 1416
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    #@89
    if-eqz v0, :cond_6

    #@8b
    .line 1420
    and-int/lit16 v0, p5, 0x100

    #@8d
    if-eqz v0, :cond_5

    #@8f
    .line 1419
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
    .line 1402
    goto :goto_0

    #@96
    :cond_5
    move v2, v3

    #@97
    .line 1420
    goto :goto_1

    #@98
    .line 1422
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@9a
    if-eqz v0, :cond_9

    #@9c
    .line 1423
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@9e
    if-eqz v0, :cond_7

    #@a0
    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    #@a3
    .line 1427
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@a5
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@a7
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@a9
    .line 1428
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@ab
    move-object v2, v1

    #@ac
    .line 1427
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@af
    return-object v0

    #@b0
    .line 1429
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b3
    move-result-wide v4

    #@b4
    .line 1430
    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    #@b6
    const-wide/16 v8, 0xbb8

    #@b8
    add-long/2addr v6, v8

    #@b9
    .line 1429
    cmp-long v0, v4, v6

    #@bb
    if-gez v0, :cond_8

    #@bd
    .line 1438
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    #@bf
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@c1
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@c3
    .line 1439
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    #@c5
    move-object v2, v1

    #@c6
    .line 1438
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    #@c9
    return-object v0

    #@ca
    .line 1441
    :cond_8
    const/4 v0, 0x3

    #@cb
    new-array v0, v0, [Ljava/lang/Object;

    #@cd
    .line 1442
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
    .line 1441
    const/16 v1, 0x7d00

    #@e7
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@ea
    .line 1447
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
    .line 2466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@3
    move-result v17

    #@4
    if-nez v17, :cond_0

    #@6
    .line 2467
    const/16 v17, 0x0

    #@8
    return v17

    #@9
    .line 2469
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    move-object/from16 v18, v0

    #@f
    monitor-enter v18

    #@10
    .line 2470
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
    .line 2472
    .local v11, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    #@1c
    .line 2473
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
    .line 2477
    :goto_0
    const/16 v16, 0x0

    #@32
    .line 2478
    .local v16, "targetLastImiId":Ljava/lang/String;
    const/4 v15, -0x1

    #@33
    .line 2479
    .local v15, "subtypeId":I
    if-eqz v11, :cond_2

    #@35
    if-eqz v12, :cond_2

    #@37
    .line 2480
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
    .line 2481
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
    .line 2482
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
    .line 2486
    .local v5, "currentSubtypeHash":I
    :goto_1
    if-eqz v9, :cond_1

    #@5e
    if-eq v13, v5, :cond_2

    #@60
    .line 2487
    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@62
    move-object/from16 v16, v0

    #@64
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    #@66
    .line 2488
    .local v16, "targetLastImiId":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@69
    move-result v15

    #@6a
    .line 2492
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
    .line 2493
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
    .line 2523
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7f
    move-result v17

    #@80
    if-nez v17, :cond_9

    #@82
    .line 2528
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
    .line 2529
    const/16 v17, 0x1

    #@8d
    monitor-exit v18

    #@8e
    return v17

    #@8f
    .line 2475
    .end local v15    # "subtypeId":I
    :cond_4
    const/4 v12, 0x0

    #@90
    .local v12, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    #@91
    .line 2483
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
    .line 2497
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
    .line 2498
    .local v6, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_3

    #@a8
    .line 2499
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@ab
    move-result v4

    #@ac
    .line 2500
    .local v4, "N":I
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    #@b0
    move-object/from16 v17, v0

    #@b2
    if-nez v17, :cond_8

    #@b4
    .line 2501
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
    .line 2503
    .local v14, "locale":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    #@c9
    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_3

    #@cb
    .line 2504
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ce
    move-result-object v8

    #@cf
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    #@d1
    .line 2505
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
    .line 2507
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@e1
    move-object/from16 v17, v0

    #@e3
    .line 2508
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@e6
    move-result-object v19

    #@e7
    .line 2509
    const-string/jumbo v20, "keyboard"

    #@ea
    const/16 v21, 0x1

    #@ec
    .line 2507
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
    .line 2510
    .local v10, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_7

    #@fa
    .line 2511
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@fd
    move-result-object v16

    #@fe
    .line 2513
    .local v16, "targetLastImiId":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@101
    move-result v17

    #@102
    .line 2512
    move/from16 v0, v17

    #@104
    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@107
    move-result v15

    #@108
    .line 2514
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
    .line 2503
    .end local v10    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@116
    goto :goto_3

    #@117
    .line 2502
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
    .line 2531
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
    .line 2469
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
    .line 2538
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2539
    return v7

    #@9
    .line 2541
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    monitor-enter v3

    #@c
    .line 2542
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 2543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    .line 2544
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
    .line 2545
    const-string/jumbo v5, " token:"

    #@2c
    .line 2544
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
    .line 2546
    return v7

    #@3d
    .line 2548
    .end local v1    # "uid":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@3f
    .line 2549
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
    .line 2550
    const/4 v6, 0x1

    #@4c
    .line 2548
    invoke-virtual {v4, p2, v2, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    move-result-object v0

    #@50
    .line 2551
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    #@52
    monitor-exit v3

    #@53
    .line 2552
    return v7

    #@54
    .line 2554
    :cond_2
    :try_start_2
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@56
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 2555
    iget v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@5c
    .line 2554
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit v3

    #@60
    .line 2556
    return v8

    #@61
    .line 2541
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
    .line 1077
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v5

    #@5
    .line 1081
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@7
    if-nez v2, :cond_3

    #@9
    .line 1082
    const/4 v2, 0x1

    #@a
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    #@c
    .line 1083
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@e
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@11
    move-result v0

    #@12
    .line 1084
    .local v0, "currentUserId":I
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@14
    .line 1085
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
    .line 1084
    :goto_0
    invoke-virtual {v6, v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    #@20
    .line 1086
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
    .line 1087
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
    .line 1088
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3a
    .line 1089
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3c
    if-eqz v2, :cond_0

    #@3e
    .line 1090
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@40
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@42
    const/4 v7, 0x0

    #@43
    invoke-virtual {v2, v6, v7}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    #@46
    .line 1092
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@48
    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@4a
    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@4c
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    #@4f
    .line 1093
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    #@51
    .line 1094
    const v6, 0x1120006

    #@54
    .line 1093
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@57
    move-result v2

    #@58
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@5a
    .line 1095
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    #@5c
    if-eqz v2, :cond_1

    #@5e
    .line 1096
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@60
    .line 1097
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    #@62
    .line 1096
    invoke-virtual {v2, v6}, Landroid/view/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    #@65
    .line 1099
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
    .line 1100
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    #@6f
    if-nez v2, :cond_2

    #@71
    .line 1101
    const-string/jumbo v2, "InputMethodManagerService"

    #@74
    const-string/jumbo v3, "Reset the default IME as \"Resource\" is ready here."

    #@77
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 1102
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    #@7d
    .line 1103
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@7f
    .line 1104
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@81
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@84
    move-result-object v3

    #@85
    .line 1105
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
    .line 1103
    invoke-static {v2, v3, v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    #@94
    .line 1107
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
    .line 1109
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
    .line 1076
    return-void

    #@a5
    .restart local v0    # "currentUserId":I
    :cond_4
    move v2, v4

    #@a6
    .line 1085
    goto/16 :goto_0

    #@a8
    :cond_5
    move v2, v4

    #@a9
    .line 1099
    goto :goto_1

    #@aa
    .line 1110
    :catch_0
    move-exception v1

    #@ab
    .line 1111
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
    .line 1077
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
    .line 1267
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1270
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1271
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    #@c
    .line 1272
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1273
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@12
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@14
    .line 1274
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    #@16
    const/16 v3, 0x3e8

    #@18
    .line 1273
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@1f
    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@21
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@23
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@25
    .line 1279
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@27
    const/16 v3, 0xbcc

    #@29
    .line 1278
    invoke-virtual {v1, v3, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@30
    .line 1280
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@32
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@34
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@36
    .line 1281
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    #@38
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@3a
    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@3c
    const/16 v4, 0xbb8

    #@3e
    .line 1280
    invoke-virtual {v1, v4, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    #@45
    .line 1282
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@47
    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    #@49
    .line 1283
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    #@4b
    .line 1285
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    #@4e
    .line 1266
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
    .line 1576
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1577
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@d
    .line 1578
    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    #@f
    .line 1581
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1582
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@18
    .line 1583
    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    #@1a
    .line 1586
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 1589
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    #@20
    and-int/lit8 v1, v1, 0x1

    #@22
    if-eqz v1, :cond_2

    #@24
    if-eqz p1, :cond_2

    #@26
    .line 1591
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@28
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    #@2b
    .line 1593
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@2d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@2f
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 1596
    :goto_0
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@34
    .line 1599
    :cond_3
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    #@36
    .line 1600
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    #@39
    .line 1575
    return-void

    #@3a
    .line 1594
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
    .line 1057
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    .line 1058
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
    .line 1057
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    #@11
    .line 1056
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    #@0
    .prologue
    .line 1920
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    #@3
    .line 1921
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    #@6
    .line 1919
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 14
    .param p1, "enabledMayChange"    # Z

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    .line 1925
    if-eqz p1, :cond_1

    #@3
    .line 1926
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    #@8
    move-result-object v9

    #@9
    .line 1927
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
    .line 1930
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v12

    #@14
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@16
    .line 1932
    .local v12, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@18
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1934
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@21
    move-result v2

    #@22
    .line 1933
    const v3, 0x8000

    #@25
    .line 1932
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v6

    #@29
    .line 1935
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    #@2b
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@2d
    if-ne v0, v13, :cond_0

    #@2f
    .line 1941
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@31
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 1943
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@37
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@3a
    move-result v4

    #@3b
    .line 1944
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1942
    const/4 v2, 0x0

    #@42
    .line 1943
    const/4 v3, 0x1

    #@43
    .line 1941
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@46
    .line 1927
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1954
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
    .line 1956
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
    .line 1957
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5d
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@60
    move-result-object v11

    #@61
    .line 1959
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_3

    #@67
    .line 1961
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
    .line 1966
    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    #@72
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@75
    .line 1975
    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@77
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@79
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    #@7c
    .line 1924
    return-void

    #@7d
    .line 1962
    :catch_0
    move-exception v8

    #@7e
    .line 1963
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
    .line 1964
    const/4 v0, 0x5

    #@99
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    #@9c
    goto :goto_2

    #@9d
    .line 1969
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-virtual {p0, v13}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    #@a0
    goto :goto_3

    #@a1
    .line 1946
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
    .line 1980
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    #@5
    move-result v1

    #@6
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@8
    .line 1981
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1982
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1983
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    #@12
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    #@15
    move-result v1

    #@16
    .line 1981
    if-eqz v1, :cond_0

    #@18
    .line 1984
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    #@1a
    .line 1985
    const v2, 0x102038b

    #@1d
    .line 1984
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/widget/Switch;

    #@23
    .line 1986
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    #@28
    .line 1979
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
    .line 1684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 1686
    .local v8, "ident":J
    :try_start_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@6
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1687
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1688
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v11

    #@11
    .line 1689
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
    .line 1690
    const-string/jumbo v2, " token:"

    #@27
    .line 1689
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
    .line 1719
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1691
    return-void

    #@3b
    .line 1693
    .end local v11    # "uid":I
    :cond_0
    if-nez p3, :cond_2

    #@3d
    .line 1695
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1696
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
    .line 1719
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1683
    return-void

    #@4e
    .line 1698
    :cond_2
    if-eqz p2, :cond_1

    #@50
    .line 1700
    const/4 v6, 0x0

    #@51
    .line 1703
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@56
    move-result-object v10

    #@57
    .line 1705
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@59
    .line 1706
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5b
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@5e
    move-result v1

    #@5f
    .line 1705
    const/4 v2, 0x0

    #@60
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@63
    move-result-object v0

    #@64
    .line 1704
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@67
    move-result-object v6

    #@68
    .line 1710
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@6a
    if-eqz v0, :cond_1

    #@6c
    .line 1711
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    #@6e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    #@70
    .line 1712
    if-eqz v6, :cond_3

    #@72
    .line 1713
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 1711
    :goto_2
    const/4 v4, 0x0

    #@77
    move-object v2, p2

    #@78
    move/from16 v3, p3

    #@7a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    #@7d
    .line 1714
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
    .line 1686
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
    .line 1718
    :catchall_1
    move-exception v0

    #@8a
    .line 1719
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8d
    .line 1718
    throw v0

    #@8e
    .line 1713
    :cond_3
    const/4 v5, 0x0

    #@8f
    goto :goto_2

    #@90
    .line 1707
    .restart local v6    # "contentDescription":Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    #@91
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
