.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service;,
        Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;,
        Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;,
        Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final FUNCTION_DUMP:Ljava/lang/String; = "dump"

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field private static final GET_WINDOW_TOKEN:Ljava/lang/String; = "getWindowToken"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final OWN_PROCESS_ID:I

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388

.field private static final WINDOW_ID_UNKNOWN:I = -0x1

.field private static final sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field private final mEnabledServicesForFeedbackTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInitialized:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/WindowManagerInternal;

.field private mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get16()Landroid/content/ComponentName;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get17()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    #@0
    sput p0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    #@2
    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;
    .locals 1
    .param p1, "windowId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "sequence"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->ensureWindowsAvailableTimed()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 0
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "componentNames"    # Ljava/util/Set;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 0
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "foo.bar"

    #@5
    const-string/jumbo v2, "FakeService"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 139
    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    #@d
    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@10
    move-result v0

    #@11
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    #@13
    .line 152
    const/4 v0, 0x0

    #@14
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    #@16
    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 226
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    #@3
    .line 158
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@a
    .line 161
    new-instance v0, Landroid/util/Pools$SimplePool;

    #@c
    const/16 v1, 0xa

    #@e
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    #@11
    .line 160
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@13
    .line 164
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@15
    const/16 v1, 0x3a

    #@17
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@1a
    .line 163
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@1c
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 166
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    #@23
    .line 169
    new-instance v0, Landroid/graphics/Rect;

    #@25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    #@2a
    .line 171
    new-instance v0, Landroid/graphics/Rect;

    #@2c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2f
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    #@31
    .line 173
    new-instance v0, Landroid/graphics/Point;

    #@33
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@36
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    #@38
    .line 191
    new-instance v0, Ljava/util/HashSet;

    #@3a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@3d
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@3f
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    #@41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@44
    .line 193
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@46
    .line 197
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@48
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@4b
    .line 196
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    #@4d
    .line 200
    new-instance v0, Landroid/util/SparseArray;

    #@4f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@52
    .line 199
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    #@54
    .line 202
    new-instance v0, Landroid/util/SparseArray;

    #@56
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@59
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@5b
    .line 204
    new-instance v0, Landroid/util/SparseArray;

    #@5d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@60
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@62
    .line 210
    const/4 v0, 0x0

    #@63
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@65
    .line 227
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@67
    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@69
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6f
    .line 229
    const-class v0, Landroid/view/WindowManagerInternal;

    #@71
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Landroid/view/WindowManagerInternal;

    #@77
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@79
    .line 230
    const-string/jumbo v0, "user"

    #@7c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Landroid/os/UserManager;

    #@82
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    #@84
    .line 231
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@86
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@89
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@8b
    .line 232
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@8d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@8f
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@92
    move-result-object v1

    #@93
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    #@96
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@98
    .line 233
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@9a
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@9d
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@9f
    .line 234
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    #@a2
    .line 235
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    #@a4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@a6
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    #@a9
    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ac
    move-result-object v1

    #@ad
    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    #@b0
    .line 226
    return-void
.end method

.method private addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1067
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onAdded()V

    #@3
    .line 1068
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@8
    .line 1069
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    #@a
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@c
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1065
    :goto_0
    return-void

    #@10
    .line 1070
    :catch_0
    move-exception v0

    #@11
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private canDispatchEventToServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 7
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "handledFeedbackTypes"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1102
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 1103
    return v6

    #@8
    .line 1106
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@b
    move-result v4

    #@c
    const/4 v5, -0x1

    #@d
    if-eq v4, v5, :cond_1

    #@f
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    .line 1112
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@18
    move-result v0

    #@19
    .line 1113
    .local v0, "eventType":I
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    #@1b
    and-int/2addr v4, v0

    #@1c
    if-eq v4, v0, :cond_3

    #@1e
    .line 1114
    return v6

    #@1f
    .line 1107
    .end local v0    # "eventType":I
    :cond_2
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    #@21
    and-int/lit8 v4, v4, 0x8

    #@23
    if-nez v4, :cond_1

    #@25
    .line 1109
    return v6

    #@26
    .line 1117
    .restart local v0    # "eventType":I
    :cond_3
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    #@28
    .line 1118
    .local v3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    #@2b
    move-result-object v4

    #@2c
    if-eqz v4, :cond_6

    #@2e
    .line 1119
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    #@31
    move-result-object v4

    #@32
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 1121
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_4

    #@3c
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_7

    #@42
    .line 1122
    :cond_4
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    #@44
    .line 1123
    .local v1, "feedbackType":I
    and-int v4, p3, v1

    #@46
    if-ne v4, v1, :cond_5

    #@48
    .line 1124
    const/16 v4, 0x10

    #@4a
    if-ne v1, v4, :cond_7

    #@4c
    .line 1125
    :cond_5
    const/4 v4, 0x1

    #@4d
    return v4

    #@4e
    .line 1119
    .end local v1    # "feedbackType":I
    :cond_6
    const/4 v2, 0x0

    #@4f
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 1129
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_7
    return v6
.end method

.method private canRequestAndRequestsEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1635
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1638
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@d
    if-nez v0, :cond_0

    #@f
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@11
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@14
    move-result v0

    #@15
    and-int/lit8 v0, v0, 0x4

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1640
    :cond_0
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1636
    :cond_1
    return v1

    #@1c
    .line 1642
    :cond_2
    return v1
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 5
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1583
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1587
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1588
    return v4

    #@11
    .line 1584
    :cond_0
    return v3

    #@12
    .line 1590
    :cond_1
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@16
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1a
    .line 1591
    const/16 v2, 0x11

    #@1c
    .line 1590
    if-gt v1, v2, :cond_5

    #@1e
    .line 1595
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@20
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@23
    move-result-object v0

    #@24
    .line 1596
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@26
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@28
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 1597
    return v4

    #@2f
    .line 1598
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 1599
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@35
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 1613
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3
    :goto_0
    return v3

    #@3c
    .line 1600
    .restart local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@3e
    .line 1601
    const/4 v2, 0x7

    #@3f
    .line 1600
    invoke-virtual {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@46
    goto :goto_0

    #@47
    .line 1608
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_5
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@49
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@4c
    move-result v1

    #@4d
    and-int/lit8 v1, v1, 0x2

    #@4f
    if-eqz v1, :cond_3

    #@51
    .line 1610
    return v4
.end method

.method private ensureWindowsAvailableTimed()V
    .locals 12

    #@0
    .prologue
    .line 1894
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 1895
    :try_start_0
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    iget-object v8, v8, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v8, :cond_0

    #@9
    monitor-exit v9

    #@a
    .line 1896
    return-void

    #@b
    .line 1900
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@d
    if-nez v8, :cond_1

    #@f
    .line 1901
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@12
    move-result-object v3

    #@13
    .line 1902
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@16
    .line 1905
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    if-nez v8, :cond_2

    #@1a
    monitor-exit v9

    #@1b
    .line 1906
    return-void

    #@1c
    .line 1910
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1f
    move-result-wide v6

    #@20
    .line 1911
    .local v6, "startMillis":J
    :goto_0
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@22
    iget-object v8, v8, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@24
    if-nez v8, :cond_4

    #@26
    .line 1912
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    move-result-wide v10

    #@2a
    sub-long v0, v10, v6

    #@2c
    .line 1913
    .local v0, "elapsedMillis":J
    const-wide/16 v10, 0x1388

    #@2e
    sub-long v4, v10, v0

    #@30
    .line 1914
    .local v4, "remainMillis":J
    const-wide/16 v10, 0x0

    #@32
    cmp-long v8, v4, v10

    #@34
    if-gtz v8, :cond_3

    #@36
    monitor-exit v9

    #@37
    .line 1915
    return-void

    #@38
    .line 1918
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@3a
    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1919
    :catch_0
    move-exception v2

    #@3f
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    #@40
    .end local v0    # "elapsedMillis":J
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v4    # "remainMillis":J
    :cond_4
    monitor-exit v9

    #@41
    .line 1893
    return-void

    #@42
    .line 1894
    .end local v6    # "startMillis":J
    :catchall_0
    move-exception v8

    #@43
    monitor-exit v9

    #@44
    throw v8
.end method

.method private findWindowIdLocked(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1881
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 1882
    .local v0, "globalIndex":I
    if-ltz v0, :cond_0

    #@8
    .line 1883
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@d
    move-result v3

    #@e
    return v3

    #@f
    .line 1885
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@12
    move-result-object v2

    #@13
    .line 1886
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    #@18
    move-result v1

    #@19
    .line 1887
    .local v1, "userIndex":I
    if-ltz v1, :cond_1

    #@1b
    .line 1888
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@20
    move-result v3

    #@21
    return v3

    #@22
    .line 1890
    :cond_1
    const/4 v3, -0x1

    #@23
    return v3
.end method

.method private getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    .locals 3
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1654
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/IBinder;

    #@9
    .line 1655
    .local v0, "windowToken":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@b
    .line 1656
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@e
    move-result-object v1

    #@f
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .end local v0    # "windowToken":Landroid/os/IBinder;
    check-cast v0, Landroid/os/IBinder;

    #@17
    .line 1658
    .restart local v0    # "windowToken":Landroid/os/IBinder;
    :cond_0
    if-eqz v0, :cond_1

    #@19
    .line 1659
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@1b
    invoke-virtual {v1, v0}, Landroid/view/WindowManagerInternal;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 1662
    :cond_1
    return-object v2
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .locals 1

    #@0
    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 885
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@9
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    #@b
    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    #@d
    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@8
    .line 241
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_0

    #@a
    .line 242
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@c
    .end local v0    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    #@f
    .line 243
    .restart local v0    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 245
    :cond_0
    return-object v0
.end method

.method private hasRunningServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1650
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@b
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    :cond_0
    return v0
.end method

.method private manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 11
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1210
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    #@3
    .line 1212
    .local v1, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@5
    .line 1214
    .local v5, "isEnabled":Z
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@8
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_7

    #@e
    .line 1215
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@10
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@16
    .line 1217
    .local v4, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    .line 1216
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1d
    move-result-object v0

    #@1e
    .line 1218
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@24
    .line 1220
    .local v6, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eqz v5, :cond_5

    #@26
    .line 1222
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@28
    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_1

    #@2e
    .line 1214
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1225
    :cond_1
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@33
    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_4

    #@39
    .line 1226
    if-nez v6, :cond_3

    #@3b
    .line 1227
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@3d
    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@3f
    invoke-direct {v6, p0, v7, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@42
    .line 1231
    .restart local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bindLocked()Z

    #@45
    goto :goto_1

    #@46
    .line 1228
    :cond_3
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@48
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_2

    #@4e
    goto :goto_1

    #@4f
    .line 1233
    :cond_4
    if-eqz v6, :cond_0

    #@51
    .line 1234
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    #@54
    goto :goto_1

    #@55
    .line 1238
    :cond_5
    if-eqz v6, :cond_6

    #@57
    .line 1239
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    #@5a
    goto :goto_1

    #@5b
    .line 1241
    :cond_6
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@5d
    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@60
    goto :goto_1

    #@61
    .line 1248
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_7
    if-eqz v5, :cond_8

    #@63
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@65
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@68
    move-result v7

    #@69
    if-eqz v7, :cond_8

    #@6b
    .line 1249
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@6d
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    #@70
    move-result v7

    #@71
    .line 1248
    if-eqz v7, :cond_8

    #@73
    .line 1250
    iput-boolean v10, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@75
    .line 1251
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@77
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7a
    move-result-object v7

    #@7b
    .line 1252
    const-string/jumbo v8, "accessibility_enabled"

    #@7e
    iget v9, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@80
    .line 1251
    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@83
    .line 1209
    :cond_8
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "isDefault"    # Z

    #@0
    .prologue
    .line 1046
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    move-result-object v4

    #@4
    .line 1047
    .local v4, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@a
    move-result v0

    #@b
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@d
    .line 1048
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@f
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@15
    .line 1050
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    #@17
    if-ne v5, p2, :cond_0

    #@19
    .line 1052
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    #@1b
    .line 1051
    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canDispatchEventToServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 1053
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    #@23
    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    #@25
    or-int/2addr v5, v6

    #@26
    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    #@28
    .line 1054
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1047
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1058
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v4    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v2

    #@2f
    .line 1044
    :cond_1
    return-void
.end method

.method private notifyClearAccessibilityCacheLocked()V
    .locals 4

    #@0
    .prologue
    .line 937
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    move-result-object v2

    #@4
    .line 938
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v0, v3, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@e
    .line 939
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@16
    .line 940
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityNodeInfoCache()V

    #@19
    .line 938
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 936
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .locals 5
    .param p1, "gestureId"    # I
    .param p2, "isDefault"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 900
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@4
    move-result-object v2

    #@5
    .line 901
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v0, v3, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@f
    .line 902
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@17
    .line 903
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    #@19
    if-eqz v3, :cond_0

    #@1b
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    #@1d
    if-ne v3, p2, :cond_0

    #@1f
    .line 904
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGesture(I)V

    #@22
    .line 905
    const/4 v3, 0x1

    #@23
    return v3

    #@24
    .line 901
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 908
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return v4
.end method

.method private notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isDefault"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 918
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@4
    move-result-object v2

    #@5
    .line 919
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v0, v3, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@f
    .line 920
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@17
    .line 923
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 924
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@1d
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@20
    move-result v3

    #@21
    and-int/lit8 v3, v3, 0x8

    #@23
    if-nez v3, :cond_1

    #@25
    .line 919
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .line 928
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    #@2a
    if-ne v3, p3, :cond_0

    #@2c
    .line 929
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    #@2f
    .line 930
    const/4 v3, 0x1

    #@30
    return v3

    #@31
    .line 933
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    return v4
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "sequence"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1865
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@3
    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@9
    .line 1866
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    if-nez v0, :cond_0

    #@b
    .line 1867
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@d
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    invoke-direct {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    #@10
    .line 1869
    .restart local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_0
    iput-object p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@12
    .line 1870
    iput p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    #@14
    .line 1871
    iput p3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@16
    .line 1872
    return-object v0
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1364
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    #@3
    .line 1365
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@6
    .line 1366
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@9
    .line 1367
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@c
    .line 1368
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@f
    .line 1369
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@12
    .line 1370
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@15
    .line 1371
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@18
    .line 1372
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@1b
    .line 1373
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@1e
    .line 1374
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@21
    .line 1362
    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1198
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1199
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/content/ComponentName;

    #@15
    .line 1200
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 1201
    const/16 v3, 0x3a

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 1203
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 1205
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2d
    move-result-object v3

    #@2e
    .line 1206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 1205
    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@35
    .line 1197
    return-void
.end method

.method private readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1496
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 1497
    const-string/jumbo v2, "accessibility_enabled"

    #@b
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@d
    .line 1495
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-ne v1, v5, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1498
    .local v0, "accessibilityEnabled":Z
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 1499
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@1a
    .line 1500
    return v5

    #@1b
    .line 1495
    .end local v0    # "accessibilityEnabled":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "accessibilityEnabled":Z
    goto :goto_0

    #@1d
    .line 1502
    :cond_1
    return v4
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1153
    .local p3, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1155
    .local v0, "settingValue":Ljava/lang/String;
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, p3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    #@e
    .line 1152
    return-void
.end method

.method private readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 4
    .param p1, "names"    # Ljava/lang/String;
    .param p3, "doMerge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1170
    .local p2, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez p3, :cond_0

    #@2
    .line 1171
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    #@5
    .line 1173
    :cond_0
    if-eqz p1, :cond_2

    #@7
    .line 1174
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    #@9
    .line 1175
    .local v1, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@c
    .line 1176
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 1177
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 1178
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    if-lez v3, :cond_1

    #@1e
    .line 1181
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@21
    move-result-object v0

    #@22
    .line 1182
    .local v0, "enabledService":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    #@24
    .line 1183
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    goto :goto_0

    #@28
    .line 1169
    .end local v0    # "enabledService":Landroid/content/ComponentName;
    .end local v1    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@3
    move-result v0

    #@4
    .line 1483
    .local v0, "somthingChanged":Z
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 1484
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@c
    move-result v1

    #@d
    or-int/2addr v0, v1

    #@e
    .line 1485
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@11
    move-result v1

    #@12
    or-int/2addr v0, v1

    #@13
    .line 1486
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@16
    move-result v1

    #@17
    or-int/2addr v0, v1

    #@18
    .line 1487
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@1b
    move-result v1

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 1488
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@20
    move-result v1

    #@21
    or-int/2addr v0, v1

    #@22
    .line 1489
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@25
    move-result v1

    #@26
    or-int/2addr v0, v1

    #@27
    .line 1490
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@2a
    move-result v1

    #@2b
    or-int/2addr v0, v1

    #@2c
    .line 1491
    return v0
.end method

.method private readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1540
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2
    .line 1541
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@4
    .line 1540
    invoke-static {v1, v2}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->hasAdjustments(Landroid/content/Context;I)Z

    #@7
    move-result v0

    #@8
    .line 1542
    .local v0, "displayAdjustmentsEnabled":Z
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHasDisplayColorAdjustment:Z

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 1543
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHasDisplayColorAdjustment:Z

    #@e
    .line 1544
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 1548
    :cond_0
    return v0
.end method

.method private readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1518
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 1519
    const-string/jumbo v2, "accessibility_display_magnification_enabled"

    #@b
    .line 1520
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@d
    .line 1517
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-ne v1, v5, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1521
    .local v0, "displayMagnificationEnabled":Z
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 1522
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@1a
    .line 1523
    return v5

    #@1b
    .line 1517
    .end local v0    # "displayMagnificationEnabled":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "displayMagnificationEnabled":Z
    goto :goto_0

    #@1d
    .line 1525
    :cond_1
    return v4
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    .line 1008
    const-string/jumbo v0, "enabled_accessibility_services"

    #@8
    .line 1009
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@c
    .line 1008
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    #@f
    .line 1010
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@11
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@13
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1011
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@1b
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@1e
    .line 1012
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@20
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@22
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@25
    .line 1013
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@27
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@2a
    .line 1014
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@2e
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@31
    .line 1017
    const/4 v0, 0x0

    #@32
    return v0
.end method

.method private readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1530
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "accessibility_script_injection"

    #@b
    .line 1531
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@d
    .line 1529
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-ne v1, v5, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1532
    .local v0, "enhancedWeAccessibilityEnabled":Z
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 1533
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@1a
    .line 1534
    return v5

    #@1b
    .line 1529
    .end local v0    # "enhancedWeAccessibilityEnabled":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "enhancedWeAccessibilityEnabled":Z
    goto :goto_0

    #@1d
    .line 1536
    :cond_1
    return v4
.end method

.method private readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1553
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 1554
    const-string/jumbo v2, "high_text_contrast_enabled"

    #@b
    .line 1555
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@d
    .line 1552
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-ne v1, v5, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1556
    .local v0, "highTextContrastEnabled":Z
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 1557
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    #@1a
    .line 1558
    return v5

    #@1b
    .line 1552
    .end local v0    # "highTextContrastEnabled":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "highTextContrastEnabled":Z
    goto :goto_0

    #@1d
    .line 1560
    :cond_1
    return v4
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 12
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 966
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@2
    invoke-interface {v7}, Ljava/util/List;->clear()V

    #@5
    .line 968
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    .line 969
    new-instance v8, Landroid/content/Intent;

    #@9
    const-string/jumbo v9, "android.accessibilityservice.AccessibilityService"

    #@c
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 973
    iget v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@11
    .line 970
    const v10, 0x8084

    #@14
    .line 968
    invoke-virtual {v7, v8, v10, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@17
    move-result-object v3

    #@18
    .line 975
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1c
    move-result v1

    #@1d
    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@1f
    .line 976
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@25
    .line 977
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@27
    .line 978
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string/jumbo v7, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    #@2a
    .line 979
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@2c
    .line 978
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v7

    #@30
    if-nez v7, :cond_0

    #@32
    .line 980
    const-string/jumbo v7, "AccessibilityManagerService"

    #@35
    new-instance v8, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v9, "Skipping accessibilty service "

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    new-instance v9, Landroid/content/ComponentName;

    #@43
    .line 981
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@45
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@47
    .line 980
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    .line 982
    const-string/jumbo v9, ": it does not require the permission "

    #@55
    .line 980
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    .line 983
    const-string/jumbo v9, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    #@5c
    .line 980
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 975
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 988
    :cond_0
    :try_start_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@6c
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@6e
    invoke-direct {v0, v4, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    #@71
    .line 989
    .local v0, "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@73
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    goto :goto_1

    #@77
    .line 990
    .end local v0    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_0
    move-exception v6

    #@78
    .line 991
    .local v6, "xppe":Ljava/lang/Exception;
    const-string/jumbo v7, "AccessibilityManagerService"

    #@7b
    const-string/jumbo v8, "Error while initializing AccessibilityServiceInfo"

    #@7e
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@81
    goto :goto_1

    #@82
    .line 995
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "xppe":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@84
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@86
    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v7

    #@8a
    if-nez v7, :cond_2

    #@8c
    .line 996
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@8e
    invoke-interface {v7}, Ljava/util/List;->clear()V

    #@91
    .line 997
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@93
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@95
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@98
    .line 998
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@9a
    invoke-interface {v7}, Ljava/util/List;->clear()V

    #@9d
    .line 999
    const/4 v7, 0x1

    #@9e
    return v7

    #@9f
    .line 1002
    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    #@a1
    invoke-interface {v7}, Ljava/util/List;->clear()V

    #@a4
    .line 1003
    const/4 v7, 0x0

    #@a5
    return v7
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1507
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 1508
    const-string/jumbo v2, "touch_exploration_enabled"

    #@b
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@d
    .line 1506
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-ne v1, v5, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1509
    .local v0, "touchExplorationEnabled":Z
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 1510
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@1a
    .line 1511
    return v5

    #@1b
    .line 1506
    .end local v0    # "touchExplorationEnabled":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "touchExplorationEnabled":Z
    goto :goto_0

    #@1d
    .line 1513
    :cond_1
    return v4
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    .line 1024
    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    #@8
    .line 1025
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@c
    .line 1023
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    #@f
    .line 1026
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@11
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@13
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1027
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@1b
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@1e
    .line 1028
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@20
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@22
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@25
    .line 1029
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@27
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@2a
    .line 1030
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@2e
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@31
    .line 1033
    const/4 v0, 0x0

    #@32
    return v0
.end method

.method private recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 1
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@0
    .prologue
    .line 1876
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->clear()V

    #@3
    .line 1877
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@5
    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@8
    .line 1875
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 249
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    #@3
    invoke-direct {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@6
    .line 346
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@8
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@e
    .line 349
    new-instance v3, Landroid/content/IntentFilter;

    #@10
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@13
    .line 350
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@16
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@19
    .line 351
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@1c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 352
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@22
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 353
    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    #@28
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2b
    .line 355
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2d
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    #@2f
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@32
    .line 382
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@34
    move-object v5, v4

    #@35
    .line 355
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@38
    .line 248
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 609
    .local p2, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, "interactionConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    #@3
    move-result v0

    #@4
    .line 610
    .local v0, "count":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 611
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    if-ne v4, p1, :cond_0

    #@d
    .line 612
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v2

    #@11
    .line 613
    .local v2, "windowId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@14
    .line 614
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    #@1a
    .line 615
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    #@1d
    .line 616
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    #@20
    .line 617
    return v2

    #@21
    .line 610
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 620
    :cond_1
    const/4 v4, -0x1

    #@25
    return v4
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 952
    const/4 v1, -0x1

    #@1
    if-ne p2, v1, :cond_0

    #@3
    .line 953
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@8
    .line 954
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@d
    .line 951
    :goto_0
    return-void

    #@e
    .line 956
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@11
    move-result-object v0

    #@12
    .line 957
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@17
    .line 958
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@1c
    goto :goto_0
.end method

.method private removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1081
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 1082
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    #@7
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@9
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1083
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onRemoved()V

    #@f
    .line 1080
    return-void
.end method

.method private removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 862
    return-void

    #@a
    .line 863
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1257
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    #@3
    move-result v0

    #@4
    .line 1258
    .local v0, "clientState":I
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    #@6
    if-eq v1, v0, :cond_1

    #@8
    .line 1259
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    #@a
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    #@d
    move-result v1

    #@e
    if-gtz v1, :cond_0

    #@10
    .line 1260
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    #@12
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    #@15
    move-result v1

    #@16
    if-lez v1, :cond_1

    #@18
    .line 1261
    :cond_0
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    #@1a
    .line 1262
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@1c
    .line 1263
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@1e
    .line 1262
    const/4 v3, 0x2

    #@1f
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@26
    .line 1256
    :cond_1
    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 1267
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    .line 1312
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1313
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@5
    .line 1314
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v4

    #@b
    .line 1313
    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1316
    .local v0, "label":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@16
    move-result-object v1

    #@17
    .line 1317
    .local v1, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eqz v2, :cond_0

    #@1b
    monitor-exit v3

    #@1c
    .line 1318
    return-void

    #@1d
    .line 1320
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 1321
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@23
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v2

    #@27
    .line 1320
    if-eqz v2, :cond_1

    #@29
    monitor-exit v3

    #@2a
    .line 1322
    return-void

    #@2b
    .line 1324
    :cond_1
    :try_start_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@2d
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2f
    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@32
    .line 1325
    const v4, 0x1010355

    #@35
    .line 1324
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    #@38
    move-result-object v2

    #@39
    .line 1326
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    #@3b
    invoke-direct {v4, p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@3e
    const v5, 0x104000a

    #@41
    .line 1324
    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@44
    move-result-object v2

    #@45
    .line 1343
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    #@47
    invoke-direct {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@4a
    const/high16 v5, 0x1040000

    #@4c
    .line 1324
    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@4f
    move-result-object v2

    #@50
    .line 1349
    const v4, 0x104031c

    #@53
    .line 1324
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    #@56
    move-result-object v2

    #@57
    .line 1350
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@59
    const/4 v5, 0x1

    #@5a
    new-array v5, v5, [Ljava/lang/Object;

    #@5c
    .line 1351
    const/4 v6, 0x0

    #@5d
    aput-object v0, v5, v6

    #@5f
    const v6, 0x104031d

    #@62
    .line 1350
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    .line 1324
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@6d
    move-result-object v2

    #@6e
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@70
    .line 1353
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@72
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@75
    move-result-object v2

    #@76
    .line 1354
    const/16 v4, 0x7d3

    #@78
    .line 1353
    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    #@7b
    .line 1355
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@7d
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@84
    move-result-object v2

    #@85
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@87
    or-int/lit8 v4, v4, 0x10

    #@89
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@8b
    .line 1357
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@8d
    const/4 v4, 0x1

    #@8e
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    #@91
    .line 1358
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    #@93
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@96
    monitor-exit v3

    #@97
    .line 1311
    return-void

    #@98
    .line 1312
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    #@99
    monitor-exit v3

    #@9a
    throw v2
.end method

.method private switchUser(I)V
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 820
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 821
    :try_start_0
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@5
    if-ne v4, p1, :cond_0

    #@7
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v4, :cond_0

    #@b
    monitor-exit v5

    #@c
    .line 822
    return-void

    #@d
    .line 826
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@10
    move-result-object v1

    #@11
    .line 827
    .local v1, "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->onSwitchToAnotherUser()V

    #@14
    .line 830
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    #@16
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    #@19
    move-result v4

    #@1a
    if-lez v4, :cond_1

    #@1c
    .line 831
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@1e
    .line 832
    iget v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@20
    .line 831
    const/4 v7, 0x3

    #@21
    .line 832
    const/4 v8, 0x0

    #@22
    .line 831
    invoke-virtual {v4, v7, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@29
    .line 836
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2b
    const-string/jumbo v6, "user"

    #@2e
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroid/os/UserManager;

    #@34
    .line 837
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@37
    move-result-object v4

    #@38
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@3b
    move-result v4

    #@3c
    const/4 v6, 0x1

    #@3d
    if-le v4, v6, :cond_4

    #@3f
    const/4 v0, 0x1

    #@40
    .line 840
    .local v0, "announceNewUser":Z
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@42
    .line 842
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@45
    move-result-object v3

    #@46
    .line 843
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@49
    move-result-object v4

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 845
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    #@53
    .line 848
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@56
    .line 852
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@59
    .line 854
    if-eqz v0, :cond_3

    #@5b
    .line 856
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@5d
    .line 857
    const-wide/16 v6, 0xbb8

    #@5f
    .line 856
    const/4 v8, 0x5

    #@60
    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    :cond_3
    monitor-exit v5

    #@64
    .line 819
    return-void

    #@65
    .line 837
    .end local v0    # "announceNewUser":Z
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_4
    const/4 v0, 0x0

    #@66
    .restart local v0    # "announceNewUser":Z
    goto :goto_0

    #@67
    .line 820
    .end local v0    # "announceNewUser":Z
    .end local v1    # "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :catchall_0
    move-exception v4

    #@68
    monitor-exit v5

    #@69
    throw v4
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1133
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 1134
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1135
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@f
    .line 1136
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 1137
    add-int/lit8 v1, v1, -0x1

    #@17
    .line 1138
    add-int/lit8 v0, v0, -0x1

    #@19
    .line 1134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1132
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return-void
.end method

.method private updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1387
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 1388
    .local v2, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    .line 1389
    .local v1, "boundServiceCount":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    #@9
    .line 1390
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@f
    .line 1391
    .local v0, "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canRetrieveInteractiveWindowsLocked()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 1392
    const/4 v4, 0x0

    #@16
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    #@18
    .line 1393
    return-void

    #@19
    .line 1389
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1396
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    const/4 v4, 0x1

    #@1d
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    #@1f
    .line 1377
    return-void
.end method

.method private updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@4
    invoke-static {v0, v1}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->applyAdjustments(Landroid/content/Context;I)V

    #@7
    .line 1645
    return-void
.end method

.method private updateEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1617
    const/4 v0, 0x0

    #@1
    .line 1618
    .local v0, "enabled":Z
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@6
    move-result v3

    #@7
    .line 1619
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@a
    .line 1620
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@12
    .line 1621
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 1622
    const/4 v0, 0x1

    #@19
    .line 1626
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@1b
    if-eq v0, v4, :cond_1

    #@1d
    .line 1627
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@1f
    .line 1628
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@24
    move-result-object v5

    #@25
    .line 1629
    const-string/jumbo v6, "accessibility_script_injection"

    #@28
    if-eqz v0, :cond_3

    #@2a
    const/4 v4, 0x1

    #@2b
    .line 1630
    :goto_1
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@2d
    .line 1628
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@30
    .line 1616
    :cond_1
    return-void

    #@31
    .line 1619
    .restart local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1629
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_3
    const/4 v4, 0x0

    #@35
    goto :goto_1
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1459
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 1460
    .local v2, "serviceCount":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@a
    .line 1461
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@12
    .line 1462
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 1463
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@18
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@1b
    move-result v3

    #@1c
    and-int/lit8 v3, v3, 0x8

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 1466
    const/4 v3, 0x1

    #@21
    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    #@23
    .line 1467
    return-void

    #@24
    .line 1460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1470
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    #@29
    .line 1458
    return-void
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1272
    const/4 v2, 0x0

    #@1
    .line 1273
    .local v2, "setInputFilter":Z
    const/4 v1, 0x0

    #@2
    .line 1274
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 1275
    const/4 v0, 0x0

    #@6
    .line 1276
    .local v0, "flags":I
    :try_start_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1277
    const/4 v0, 0x1

    #@b
    .line 1280
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@d
    if-eqz v3, :cond_1

    #@f
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 1281
    or-int/lit8 v0, v0, 0x2

    #@15
    .line 1283
    :cond_1
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 1284
    or-int/lit8 v0, v0, 0x4

    #@1b
    .line 1286
    :cond_2
    if-eqz v0, :cond_7

    #@1d
    .line 1287
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    #@1f
    if-nez v3, :cond_4

    #@21
    .line 1288
    const/4 v3, 0x1

    #@22
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    #@24
    .line 1289
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@26
    if-nez v3, :cond_3

    #@28
    .line 1290
    new-instance v3, Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@2a
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@2c
    invoke-direct {v3, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@2f
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@31
    .line 1293
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@33
    .line 1294
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    const/4 v2, 0x1

    #@34
    .line 1296
    .end local v1    # "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    :cond_4
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@36
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    :cond_5
    :goto_0
    monitor-exit v4

    #@3a
    .line 1306
    if-eqz v2, :cond_6

    #@3c
    .line 1307
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@3e
    invoke-virtual {v3, v1}, Landroid/view/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    #@41
    .line 1271
    :cond_6
    return-void

    #@42
    .line 1298
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    :cond_7
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    #@44
    if-eqz v3, :cond_5

    #@46
    .line 1299
    const/4 v3, 0x0

    #@47
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    #@49
    .line 1300
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@4b
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 1301
    const/4 v1, 0x0

    #@4f
    .line 1302
    const/4 v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1274
    .end local v1    # "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    :catchall_0
    move-exception v3

    #@52
    monitor-exit v4

    #@53
    throw v3
.end method

.method private updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1440
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@2
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    .line 1441
    .local v2, "installedServiceCount":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@9
    .line 1442
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@b
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@11
    .line 1443
    .local v4, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v3

    #@15
    .line 1444
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@18
    move-result v5

    #@19
    and-int/lit8 v5, v5, 0x2

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 1446
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1f
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@21
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@23
    .line 1447
    const/16 v6, 0x11

    #@25
    .line 1446
    if-gt v5, v6, :cond_0

    #@27
    .line 1448
    new-instance v0, Landroid/content/ComponentName;

    #@29
    .line 1449
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2d
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2f
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@31
    .line 1448
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1450
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@36
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_0

    #@3c
    .line 1451
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@3f
    move-result v5

    #@40
    or-int/lit8 v5, v5, 0x2

    #@42
    invoke-virtual {v4, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    #@45
    .line 1441
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 1436
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1474
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1475
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@7
    .line 1473
    :goto_0
    return-void

    #@8
    .line 1477
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@b
    goto :goto_0
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 1564
    const/4 v0, 0x0

    #@1
    .line 1565
    .local v0, "enabled":Z
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@6
    move-result v3

    #@7
    .line 1566
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@a
    .line 1567
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@12
    .line 1568
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 1569
    const/4 v0, 0x1

    #@19
    .line 1573
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@1b
    if-eq v0, v4, :cond_1

    #@1d
    .line 1574
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@1f
    .line 1575
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@24
    move-result-object v5

    #@25
    .line 1576
    const-string/jumbo v6, "touch_exploration_enabled"

    #@28
    if-eqz v0, :cond_3

    #@2a
    const/4 v4, 0x1

    #@2b
    .line 1577
    :goto_1
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@2d
    .line 1575
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@30
    .line 1563
    :cond_1
    return-void

    #@31
    .line 1566
    .restart local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1576
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_3
    const/4 v4, 0x0

    #@35
    goto :goto_1
.end method

.method private updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1400
    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@3
    if-eqz v5, :cond_3

    #@5
    .line 1406
    const/4 v1, 0x0

    #@6
    .line 1408
    .local v1, "boundServiceCanRetrieveInteractiveWindows":Z
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    .line 1409
    .local v3, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    .line 1410
    .local v2, "boundServiceCount":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    #@f
    .line 1411
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@15
    .line 1412
    .local v0, "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canRetrieveInteractiveWindowsLocked()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 1413
    const/4 v1, 0x1

    #@1c
    .line 1418
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    if-eqz v1, :cond_3

    #@1e
    .line 1419
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@20
    if-nez v5, :cond_1

    #@22
    .line 1420
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@24
    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@27
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@29
    .line 1421
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@2b
    .line 1422
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@2d
    .line 1421
    invoke-virtual {v5, v6}, Landroid/view/WindowManagerInternal;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    #@30
    .line 1424
    :cond_1
    return-void

    #@31
    .line 1410
    .restart local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1428
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v1    # "boundServiceCanRetrieveInteractiveWindows":Z
    .end local v2    # "boundServiceCount":I
    .end local v3    # "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@36
    if-eqz v5, :cond_4

    #@38
    .line 1429
    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@3a
    .line 1430
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@3c
    invoke-virtual {v5, v6}, Landroid/view/WindowManagerInternal;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    #@3f
    .line 1432
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@41
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->clearWindowsLocked()V

    #@44
    .line 1399
    :cond_4
    return-void
.end method


# virtual methods
.method accessibilityFocusOnlyInActiveWindow()Z
    .locals 2

    #@0
    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 798
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    .locals 7
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 537
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@8
    move-result v0

    #@9
    .line 539
    .local v0, "resolvedUserId":I
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    #@b
    add-int/lit8 v4, v2, 0x1

    #@d
    sput v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    #@f
    .line 543
    .local v2, "windowId":I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@11
    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 544
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    #@19
    .line 545
    const/4 v4, -0x1

    #@1a
    .line 544
    invoke-direct {v3, p0, v2, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    #@1d
    .line 546
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    #@20
    .line 547
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@25
    .line 548
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@27
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :goto_0
    monitor-exit v5

    #@2f
    .line 566
    return v2

    #@30
    .line 554
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    #@32
    invoke-direct {v3, p0, v2, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    #@35
    .line 556
    .restart local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    #@38
    .line 557
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3b
    move-result-object v1

    #@3c
    .line 558
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@41
    .line 559
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@43
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 533
    .end local v0    # "resolvedUserId":I
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_0
    move-exception v4

    #@4c
    monitor-exit v5

    #@4d
    throw v4
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I
    .locals 4
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 387
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@8
    move-result v0

    #@9
    .line 396
    .local v0, "resolvedUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@c
    move-result-object v1

    #@d
    .line 397
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@f
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 398
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    #@17
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@1a
    .line 402
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v2

    #@1e
    monitor-exit v3

    #@1f
    return v2

    #@20
    .line 404
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    #@22
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@25
    .line 412
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@27
    if-ne v0, v2, :cond_1

    #@29
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result v2

    #@2d
    :goto_0
    monitor-exit v3

    #@2e
    return v2

    #@2f
    :cond_1
    const/4 v2, 0x0

    #@30
    goto :goto_0

    #@31
    .line 387
    .end local v0    # "resolvedUserId":I
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1667
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    const-string/jumbo v9, "android.permission.DUMP"

    #@5
    const-string/jumbo v10, "dump"

    #@8
    invoke-static {v8, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1668
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v9

    #@e
    .line 1669
    :try_start_0
    const-string/jumbo v8, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    #@11
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 1670
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@17
    .line 1671
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@1c
    move-result v4

    #@1d
    .line 1672
    .local v4, "userCount":I
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    #@20
    .line 1673
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@28
    .line 1674
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    new-instance v8, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v10, "User state[attributes:{id="

    #@30
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    iget v10, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@36
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@41
    .line 1675
    new-instance v8, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, ", currentUser="

    #@49
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    iget v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@4f
    iget v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    #@51
    if-ne v8, v11, :cond_2

    #@53
    const/4 v8, 0x1

    #@54
    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@5f
    .line 1676
    new-instance v8, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v10, ", accessibilityEnabled="

    #@67
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    iget-boolean v10, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@6d
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@78
    .line 1677
    new-instance v8, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v10, ", touchExplorationEnabled="

    #@80
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    iget-boolean v10, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@86
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@91
    .line 1678
    new-instance v8, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v10, ", displayMagnificationEnabled="

    #@99
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    .line 1679
    iget-boolean v10, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@9f
    .line 1678
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v8

    #@a3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@aa
    .line 1680
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@ad
    move-result-object v8

    #@ae
    if-eqz v8, :cond_0

    #@b0
    .line 1681
    const-string/jumbo v8, ", "

    #@b3
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@b6
    .line 1682
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@bd
    .line 1683
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@c0
    .line 1685
    :cond_0
    const-string/jumbo v8, "}"

    #@c3
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@c6
    .line 1686
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@c9
    .line 1687
    const-string/jumbo v8, "           services:{"

    #@cc
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@cf
    .line 1688
    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@d1
    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@d4
    move-result v3

    #@d5
    .line 1689
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    #@d6
    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_3

    #@d8
    .line 1690
    if-lez v1, :cond_1

    #@da
    .line 1691
    const-string/jumbo v8, ", "

    #@dd
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@e0
    .line 1692
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@e3
    .line 1693
    const-string/jumbo v8, "                     "

    #@e6
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@e9
    .line 1695
    :cond_1
    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@eb
    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@ee
    move-result-object v2

    #@ef
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@f1
    .line 1696
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@f4
    .line 1689
    add-int/lit8 v1, v1, 0x1

    #@f6
    goto :goto_2

    #@f7
    .line 1675
    .end local v1    # "j":I
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v3    # "serviceCount":I
    :cond_2
    const/4 v8, 0x0

    #@f8
    goto/16 :goto_1

    #@fa
    .line 1698
    .restart local v1    # "j":I
    .restart local v3    # "serviceCount":I
    :cond_3
    const-string/jumbo v8, "}]"

    #@fd
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@100
    .line 1699
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@103
    .line 1672
    add-int/lit8 v0, v0, 0x1

    #@105
    goto/16 :goto_0

    #@107
    .line 1701
    .end local v1    # "j":I
    .end local v3    # "serviceCount":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_4
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@109
    iget-object v8, v8, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@10b
    if-eqz v8, :cond_6

    #@10d
    .line 1702
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@10f
    iget-object v8, v8, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@111
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@114
    move-result v7

    #@115
    .line 1703
    .local v7, "windowCount":I
    const/4 v1, 0x0

    #@116
    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v7, :cond_6

    #@118
    .line 1704
    if-lez v1, :cond_5

    #@11a
    .line 1705
    const/16 v8, 0x2c

    #@11c
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    #@11f
    .line 1706
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@122
    .line 1708
    :cond_5
    const-string/jumbo v8, "Window["

    #@125
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@128
    .line 1709
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@12a
    iget-object v8, v8, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@12c
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12f
    move-result-object v6

    #@130
    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@132
    .line 1710
    .local v6, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    #@135
    move-result-object v8

    #@136
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@139
    .line 1711
    const/16 v8, 0x5d

    #@13b
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13e
    .line 1703
    add-int/lit8 v1, v1, 0x1

    #@140
    goto :goto_3

    #@141
    .end local v1    # "j":I
    .end local v6    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7    # "windowCount":I
    :cond_6
    monitor-exit v9

    #@142
    .line 1666
    return-void

    #@143
    .line 1668
    .end local v0    # "i":I
    .end local v4    # "userCount":I
    :catchall_0
    move-exception v8

    #@144
    monitor-exit v9

    #@145
    throw v8
.end method

.method getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "outPoint"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 773
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getActiveWindowId()I
    .locals 1

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 11
    .param p1, "feedbackType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 470
    const/4 v3, 0x0

    #@1
    .line 471
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v9

    #@4
    .line 475
    :try_start_0
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@6
    invoke-virtual {v8, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@9
    move-result v2

    #@a
    .line 481
    .local v2, "resolvedUserId":I
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@d
    move-result-object v7

    #@e
    .line 482
    .local v7, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@11
    move-result-object v8

    #@12
    if-eqz v8, :cond_0

    #@14
    .line 483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v8

    #@18
    monitor-exit v9

    #@19
    return-object v8

    #@1a
    .line 486
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    #@1c
    .line 487
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@1f
    .line 488
    iget-object v6, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@21
    .line 489
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :cond_1
    if-eqz p1, :cond_3

    #@23
    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@26
    move-result v8

    #@27
    const/4 v10, 0x1

    #@28
    shl-int v0, v10, v8

    #@2a
    .line 491
    .local v0, "feedbackTypeBit":I
    not-int v8, v0

    #@2b
    and-int/2addr p1, v8

    #@2c
    .line 492
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@2f
    move-result v5

    #@30
    .line 493
    .local v5, "serviceCount":I
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    #@33
    .line 494
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@39
    .line 495
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    #@3b
    and-int/2addr v8, v0

    #@3c
    if-eqz v8, :cond_2

    #@3e
    .line 496
    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@40
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 493
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .end local v0    # "feedbackTypeBit":I
    .end local v1    # "i":I
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5    # "serviceCount":I
    :cond_3
    monitor-exit v9

    #@47
    .line 501
    return-object v3

    #@48
    .line 471
    .end local v2    # "resolvedUserId":I
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .end local v7    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v8

    #@49
    monitor-exit v9

    #@4a
    throw v8
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 448
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 452
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@8
    move-result v1

    #@9
    .line 456
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@c
    move-result-object v2

    #@d
    .line 457
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@10
    move-result-object v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 458
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 459
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@1a
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1d
    .line 460
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@20
    move-result-object v3

    #@21
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@23
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v4

    #@27
    .line 461
    return-object v0

    #@28
    .line 463
    .end local v0    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :try_start_1
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit v4

    #@2b
    return-object v3

    #@2c
    .line 448
    .end local v1    # "resolvedUserId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v4

    #@2e
    throw v3
.end method

.method getWindowBounds(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 784
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/IBinder;

    #@b
    .line 786
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@d
    .line 787
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@10
    move-result-object v1

    #@11
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .end local v0    # "token":Landroid/os/IBinder;
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_0
    monitor-exit v2

    #@1a
    .line 790
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@1c
    invoke-virtual {v1, v0, p2}, Landroid/view/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@1f
    .line 791
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 792
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 784
    .end local v0    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 794
    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    #@2b
    return v1
.end method

.method public getWindowToken(I)Landroid/os/IBinder;
    .locals 6
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 719
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@3
    .line 720
    const-string/jumbo v3, "android.permission.RETRIEVE_WINDOW_TOKEN"

    #@6
    .line 721
    const-string/jumbo v4, "getWindowToken"

    #@9
    .line 719
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 722
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@11
    .line 728
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v4

    #@15
    .line 726
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@18
    move-result v0

    #@19
    .line 729
    .local v0, "resolvedUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    if-eq v0, v2, :cond_0

    #@1d
    monitor-exit v3

    #@1e
    .line 730
    return-object v5

    #@1f
    .line 732
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@21
    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    move-result-object v2

    #@25
    if-nez v2, :cond_1

    #@27
    monitor-exit v3

    #@28
    .line 733
    return-object v5

    #@29
    .line 735
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .line 736
    .local v1, "token":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    #@33
    monitor-exit v3

    #@34
    .line 737
    return-object v1

    #@35
    .line 739
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@38
    move-result-object v2

    #@39
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    monitor-exit v3

    #@42
    return-object v2

    #@43
    .line 722
    .end local v0    # "resolvedUserId":I
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2
.end method

.method public interrupt(I)V
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 507
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 511
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    invoke-virtual {v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@8
    move-result v3

    #@9
    .line 514
    .local v3, "resolvedUserId":I
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-eq v3, v6, :cond_0

    #@d
    monitor-exit v7

    #@e
    .line 515
    return-void

    #@f
    .line 517
    :cond_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@12
    move-result-object v6

    #@13
    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .local v5, "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    monitor-exit v7

    #@16
    .line 519
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@1d
    .line 520
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@23
    .line 522
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_start_2
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@25
    invoke-interface {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@28
    .line 519
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 507
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "resolvedUserId":I
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5    # "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catchall_0
    move-exception v6

    #@2c
    monitor-exit v7

    #@2d
    throw v6

    #@2e
    .line 523
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "resolvedUserId":I
    .restart local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v5    # "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catch_0
    move-exception v2

    #@2f
    .line 524
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "AccessibilityManagerService"

    #@32
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "Error during sending interrupt request to "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 525
    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@40
    .line 524
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    goto :goto_1

    #@4c
    .line 505
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return-void
.end method

.method notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 754
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 755
    :try_start_0
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    #@6
    move-result-object v1

    #@7
    .line 756
    .local v1, "localClone":Landroid/view/KeyEvent;
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z

    #@b
    move-result v0

    #@c
    .line 757
    .local v0, "handled":Z
    if-nez v0, :cond_0

    #@e
    .line 758
    const/4 v2, 0x1

    #@f
    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    :cond_0
    monitor-exit v3

    #@14
    .line 760
    return v0

    #@15
    .line 754
    .end local v0    # "handled":Z
    .end local v1    # "localClone":Landroid/view/KeyEvent;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit v3

    #@17
    throw v2
.end method

.method onGesture(I)Z
    .locals 3
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 745
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    #@7
    move-result v0

    #@8
    .line 746
    .local v0, "handled":Z
    if-nez v0, :cond_0

    #@a
    .line 747
    const/4 v1, 0x1

    #@b
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 749
    return v0

    #@11
    .line 744
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method onMagnificationStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    #@3
    .line 815
    return-void
.end method

.method onTouchInteractionEnd()V
    .locals 1

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    #@5
    .line 811
    return-void
.end method

.method onTouchInteractionStart()V
    .locals 1

    #@0
    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    #@5
    .line 807
    return-void
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 627
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    const-string/jumbo v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    #@5
    .line 628
    const-string/jumbo v4, "registerUiTestAutomationService"

    #@8
    .line 627
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 630
    sget-object v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    #@d
    invoke-virtual {p3, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    #@10
    .line 632
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@12
    monitor-enter v3

    #@13
    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@16
    move-result-object v1

    #@17
    .line 635
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@1a
    move-result-object v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 636
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "UiAutomationService "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 637
    const-string/jumbo v5, "already registered!"

    #@32
    .line 636
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 632
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2

    #@41
    .line 641
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    #@44
    move-result-object v2

    #@45
    const/4 v4, 0x0

    #@46
    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 648
    :try_start_2
    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@4c
    .line 649
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/accessibilityservice/IAccessibilityServiceClient;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@4f
    .line 652
    const/4 v2, 0x1

    #@50
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@52
    .line 653
    const/4 v2, 0x0

    #@53
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@55
    .line 654
    const/4 v2, 0x0

    #@56
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@58
    .line 655
    const/4 v2, 0x0

    #@59
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@5b
    .line 656
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@5d
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    .line 657
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@62
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    #@65
    .line 658
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@67
    sget-object v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    #@69
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6c
    .line 659
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@6e
    sget-object v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    #@70
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@73
    .line 662
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    monitor-exit v3

    #@77
    .line 626
    return-void

    #@78
    .line 642
    :catch_0
    move-exception v0

    #@79
    .line 643
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "AccessibilityManagerService"

    #@7c
    const-string/jumbo v4, "Couldn\'t register for the death of a UiTestAutomationService!"

    #@7f
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@82
    monitor-exit v3

    #@83
    .line 645
    return-void
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 9
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 572
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 576
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5
    .line 577
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v8

    #@9
    .line 576
    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@c
    .line 578
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v3

    #@10
    .line 580
    .local v3, "token":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    #@12
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    #@14
    .line 579
    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v1

    #@18
    .line 581
    .local v1, "removedWindowId":I
    if-ltz v1, :cond_0

    #@1a
    monitor-exit v7

    #@1b
    .line 586
    return-void

    #@1c
    .line 588
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@21
    move-result v4

    #@22
    .line 589
    .local v4, "userCount":I
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@25
    .line 590
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@2d
    .line 593
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@2f
    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    #@31
    .line 592
    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result v2

    #@35
    .line 594
    .local v2, "removedWindowIdForUser":I
    if-ltz v2, :cond_1

    #@37
    monitor-exit v7

    #@38
    .line 600
    return-void

    #@39
    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .end local v2    # "removedWindowIdForUser":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_2
    monitor-exit v7

    #@3d
    .line 571
    return-void

    #@3e
    .line 572
    .end local v0    # "i":I
    .end local v1    # "removedWindowId":I
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "userCount":I
    :catchall_0
    move-exception v6

    #@3f
    monitor-exit v7

    #@40
    throw v6
.end method

.method restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldSetting"    # Ljava/lang/String;
    .param p2, "newSetting"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 870
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@3
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    #@6
    .line 871
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    #@c
    .line 873
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@f
    move-result-object v0

    #@10
    .line 874
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@12
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@15
    .line 875
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    #@19
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1c
    .line 877
    const-string/jumbo v1, "enabled_accessibility_services"

    #@1f
    .line 878
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@21
    .line 876
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    #@24
    .line 880
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@27
    .line 869
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 419
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 423
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@7
    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    #@a
    move-result v0

    #@b
    .line 426
    .local v0, "resolvedUserId":I
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-eq v0, v4, :cond_0

    #@f
    monitor-exit v3

    #@10
    .line 427
    return v1

    #@11
    .line 429
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@13
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 430
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@1b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@1e
    move-result v5

    #@1f
    .line 431
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@22
    move-result-wide v6

    #@23
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@26
    move-result v8

    #@27
    .line 430
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateActiveAndAccessibilityFocusedWindowLocked(IJI)V

    #@2a
    .line 432
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2c
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@2f
    .line 433
    const/4 v4, 0x0

    #@30
    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    #@33
    .line 434
    const/4 v4, 0x1

    #@34
    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    #@37
    .line 436
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    #@39
    if-eqz v4, :cond_2

    #@3b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@3d
    if-eqz v4, :cond_2

    #@3f
    .line 437
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@41
    .line 438
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    #@44
    move-result-object v5

    #@45
    .line 437
    const/4 v6, 0x1

    #@46
    invoke-virtual {v4, v6, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@4d
    .line 440
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@50
    .line 441
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@53
    move-result-object v4

    #@54
    const/4 v5, 0x0

    #@55
    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    monitor-exit v3

    #@58
    .line 443
    sget v3, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    #@5a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5d
    move-result v4

    #@5e
    if-eq v3, v4, :cond_3

    #@60
    :goto_0
    return v1

    #@61
    .line 419
    .end local v0    # "resolvedUserId":I
    :catchall_0
    move-exception v1

    #@62
    monitor-exit v3

    #@63
    throw v1

    #@64
    .restart local v0    # "resolvedUserId":I
    :cond_3
    move v1, v2

    #@65
    .line 443
    goto :goto_0
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"    # Z

    #@0
    .prologue
    .line 687
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2
    .line 688
    const-string/jumbo v2, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    #@5
    .line 689
    const-string/jumbo v3, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    #@8
    .line 687
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 690
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    #@d
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->isKeyguardLocked()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 691
    return-void

    #@14
    .line 693
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 695
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@1a
    move-result-object v0

    #@1b
    .line 698
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    monitor-exit v2

    #@22
    .line 699
    return-void

    #@23
    .line 702
    :cond_1
    const/4 v1, 0x1

    #@24
    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@26
    .line 703
    iput-boolean p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@28
    .line 704
    const/4 v1, 0x0

    #@29
    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@2b
    .line 705
    const/4 v1, 0x0

    #@2c
    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@2e
    .line 706
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@30
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@33
    .line 707
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@35
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@38
    .line 708
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@3a
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@3d
    .line 709
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@3f
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@42
    .line 710
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@44
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    .line 713
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    monitor-exit v2

    #@4b
    .line 686
    return-void

    #@4c
    .line 693
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@0
    .prologue
    .line 668
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 669
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@6
    move-result-object v0

    #@7
    .line 671
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 672
    if-eqz p1, :cond_0

    #@f
    .line 673
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@12
    move-result-object v1

    #@13
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 674
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@1a
    move-result-object v1

    #@1b
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@1d
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    .line 675
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    .line 674
    if-ne v1, v3, :cond_0

    #@27
    .line 676
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v2

    #@2f
    .line 667
    return-void

    #@30
    .line 678
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "UiAutomationService "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 679
    const-string/jumbo v4, " not registered!"

    #@45
    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 668
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    #@52
    monitor-exit v2

    #@53
    throw v1
.end method
