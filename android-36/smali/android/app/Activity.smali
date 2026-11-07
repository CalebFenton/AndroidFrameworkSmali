.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$RequestFinishCallback;,
        Landroid/app/Activity$ScreenCaptureCallback;,
        Landroid/app/Activity$DefaultKeyMode;,
        Landroid/app/Activity$ContentCaptureNotificationType;,
        Landroid/app/Activity$OverrideTransition;,
        Landroid/app/Activity$FullscreenModeRequest;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_CAPTURE_PAUSE:I = 0x3

.field private static final blacklist CONTENT_CAPTURE_RESUME:I = 0x2

.field private static final blacklist CONTENT_CAPTURE_START:I = 0x1

.field private static final blacklist CONTENT_CAPTURE_STOP:I = 0x4

.field private static final greylist-max-o DEBUG_LIFECYCLE:Z = false

.field public static final whitelist DEFAULT_KEYS_DIALER:I = 0x1

.field public static final whitelist DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final whitelist DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final whitelist DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final whitelist DEFAULT_KEYS_SHORTCUT:I = 0x2

.field public static final greylist-max-o DONT_FINISH_TASK_WITH_ACTIVITY:I = 0x0

.field public static final blacklist DUMP_ARG_AUTOFILL:Ljava/lang/String; = "--autofill"

.field public static final blacklist DUMP_ARG_CONTENT_CAPTURE:Ljava/lang/String; = "--contentcapture"

.field public static final blacklist DUMP_ARG_DUMP_DUMPABLE:Ljava/lang/String; = "--dump-dumpable"

.field public static final blacklist DUMP_ARG_LIST_DUMPABLES:Ljava/lang/String; = "--list-dumpables"

.field public static final blacklist DUMP_ARG_TRANSLATION:Ljava/lang/String; = "--translation"

.field private static final blacklist DUMP_IGNORES_SPECIAL_ARGS:J = 0x8e56fa2L

.field public static final greylist-max-o FINISH_TASK_WITH_ACTIVITY:I = 0x2

.field public static final greylist-max-o FINISH_TASK_WITH_ROOT_ACTIVITY:I = 0x1

.field protected static final whitelist FOCUSED_STATE_SET:[I

.field static final greylist-max-r FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field public static final whitelist FULLSCREEN_MODE_REQUEST_ENTER:I = 0x1

.field public static final whitelist FULLSCREEN_MODE_REQUEST_EXIT:I = 0x0

.field private static final blacklist HAS_CURRENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final greylist-max-o KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final greylist-max-o LOG_AM_ON_ACTIVITY_RESULT_CALLED:I = 0x756e

.field private static final greylist-max-o LOG_AM_ON_CREATE_CALLED:I = 0x7569

.field private static final greylist-max-o LOG_AM_ON_DESTROY_CALLED:I = 0x756c

.field private static final greylist-max-o LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final greylist-max-o LOG_AM_ON_RESTART_CALLED:I = 0x756a

.field private static final greylist-max-o LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final greylist-max-o LOG_AM_ON_START_CALLED:I = 0x756b

.field private static final greylist-max-o LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final blacklist LOG_AM_ON_TOP_RESUMED_GAINED_CALLED:I = 0x7570

.field private static final blacklist LOG_AM_ON_TOP_RESUMED_LOST_CALLED:I = 0x7571

.field public static final whitelist OVERRIDE_TRANSITION_CLOSE:I = 0x1

.field public static final whitelist OVERRIDE_TRANSITION_OPEN:I = 0x0

.field private static final greylist-max-o REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final whitelist RESULT_CANCELED:I = 0x0

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_OK:I = -0x1

.field private static final greylist-max-o SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final greylist-max-o SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final greylist-max-o SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final greylist-max-o SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Activity"

.field private static final greylist-max-o WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field greylist-max-o mActionBar:Landroid/app/ActionBar;

.field private greylist-max-o mActionModeTypeStarting:I

.field greylist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private greylist mApplication:Landroid/app/Application;

.field private blacklist mAssistToken:Landroid/os/IBinder;

.field private blacklist mAutofillClientController:Landroid/view/autofill/AutofillClientController;

.field private blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field greylist mCalled:Z

.field private blacklist mCaller:Landroid/app/ComponentCaller;

.field private greylist-max-o mCanEnterPictureInPicture:Z

.field private greylist-max-o mChangeCanvasToTranslucent:Z

.field greylist-max-o mChangingConfigurations:Z

.field private greylist mComponent:Landroid/content/ComponentName;

.field greylist mConfigChangeFlags:I

.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mCurrentCaller:Landroid/app/ComponentCaller;

.field greylist mCurrentConfig:Landroid/content/res/Configuration;

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mDefaultKeyMode:I

.field private greylist-max-o mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private greylist mDestroyed:Z

.field private greylist-max-o mDoReportFullyDrawn:Z

.field private blacklist mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

.field greylist mEmbeddedID:Ljava/lang/String;

.field private greylist-max-o mEnableDefaultActionBarUp:Z

.field greylist-max-o mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field greylist-max-o mExitTransitionListener:Landroid/app/SharedElementCallback;

.field greylist mFinished:Z

.field final greylist mFragments:Landroid/app/FragmentController;

.field final greylist mHandler:Landroid/os/Handler;

.field private greylist-max-o mHasCurrentPermissionsRequest:Z

.field private greylist mIdent:I

.field private blacklist mInitialCaller:Landroid/app/ComponentCaller;

.field private final greylist-max-o mInstanceTracker:Ljava/lang/Object;

.field private greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mIntent:Landroid/content/Intent;

.field private blacklist mIsInMultiWindowMode:Z

.field blacklist mIsInPictureInPictureMode:Z

.field private blacklist mJankTracker:Landroid/app/jank/JankTracker;

.field greylist mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field private blacklist mLastRequestedOrientation:I

.field private blacklist mLastTaskDescriptionHashCode:I

.field blacklist mLaunchedFromBubble:Z

.field greylist mMainThread:Landroid/app/ActivityThread;

.field private final greylist-max-o mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMenuInflater:Landroid/view/MenuInflater;

.field greylist-max-q mParent:Landroid/app/Activity;

.field greylist mReferrer:Ljava/lang/String;

.field private greylist-max-o mRestoredFromBundle:Z

.field greylist mResultCode:I

.field greylist mResultData:Landroid/content/Intent;

.field greylist mResumed:Z

.field blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist-max-o mSearchManager:Landroid/app/SearchManager;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mShouldDockBigOverlays:Z

.field private blacklist mSplashScreen:Landroid/window/SplashScreen;

.field greylist-max-o mStartedActivity:Z

.field greylist mStopped:Z

.field private final greylist-max-o mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleColor:I

.field private greylist-max-o mTitleReady:Z

.field private greylist mToken:Landroid/os/IBinder;

.field private greylist-max-o mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private greylist-max-o mUiThread:Ljava/lang/Thread;

.field private blacklist mUiTranslationController:Landroid/view/translation/UiTranslationController;

.field greylist-max-p mVisibleFromClient:Z

.field greylist-max-o mVisibleFromServer:Z

.field private blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field greylist-max-p mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private greylist mWindow:Landroid/view/Window;

.field greylist mWindowAdded:Z

.field private final blacklist mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$RUeDzxpsmi1CUgbJ_0lcvqnOYKk(Landroid/app/Activity;I[Ljava/lang/String;[II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Activity;->lambda$requestPermissions$0(I[Ljava/lang/String;[II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fMMzRqFB89XgwJjEXdqIB9hd6X4(Landroid/app/Activity;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;->onBackInvoked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankTracker(Landroid/app/Activity;)Landroid/app/jank/JankTracker;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartActivityAsUserFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/Activity;->startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartIntentSenderFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1013
    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 767
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 914
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 916
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 919
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 927
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 945
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 946
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 948
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 949
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 951
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 959
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 962
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 964
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    .line 965
    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 988
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 991
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 1000
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1001
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 1003
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 1004
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 1006
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1010
    const/4 v0, -0x2

    iput v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    .line 1015
    nop

    .line 1016
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 1020
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1022
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 1023
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1085
    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-void
.end method

.method private greylist-max-o cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .line 6035
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 6036
    .local v0, "decor":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_11

    .line 6037
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 6039
    :cond_11
    if-eqz p1, :cond_18

    .line 6040
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6042
    :cond_18
    return-void
.end method

.method private blacklist collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1808
    :try_start_4
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1809
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 1811
    :cond_13
    monitor-exit v1

    .line 1812
    return-object v0

    .line 1811
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private blacklist convertFromTranslucentInternal()Z
    .registers 4

    .line 8430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 8431
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8432
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 8433
    return v2

    .line 8435
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 2067
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 2068
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_c

    .line 2069
    const/4 v1, 0x0

    return-object v1

    .line 2071
    :cond_c
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 2072
    return-object v0
.end method

.method private greylist-max-o deviceSupportsPictureInPictureMode()Z
    .registers 3

    .line 3238
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist dispatchActivityConfigurationChanged()V
    .registers 4

    .line 1793
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1794
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1796
    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1797
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_21

    .line 1798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 1799
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1800
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1798
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1803
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method private blacklist dispatchActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1583
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1584
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1585
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1587
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1586
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1591
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityDestroyed()V
    .registers 4

    .line 1771
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1772
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1773
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1774
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 1773
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1777
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1778
    return-void
.end method

.method private blacklist dispatchActivityPaused()V
    .registers 4

    .line 1676
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1677
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1678
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1679
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 1678
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1682
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1683
    return-void
.end method

.method private blacklist dispatchActivityPostCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1594
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1595
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1596
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1597
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1596
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1601
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1602
    return-void
.end method

.method private blacklist dispatchActivityPostDestroyed()V
    .registers 4

    .line 1781
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1782
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1783
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1784
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1785
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1783
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1788
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1789
    return-void
.end method

.method private blacklist dispatchActivityPostPaused()V
    .registers 4

    .line 1686
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1687
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1688
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1689
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 1688
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1692
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostPaused(Landroid/app/Activity;)V

    .line 1693
    return-void
.end method

.method private blacklist dispatchActivityPostResumed()V
    .registers 4

    .line 1656
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1657
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1658
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1659
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 1658
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1662
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostResumed(Landroid/app/Activity;)V

    .line 1663
    return-void
.end method

.method private blacklist dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1749
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1750
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1751
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1752
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1753
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1751
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1756
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1757
    return-void
.end method

.method private blacklist dispatchActivityPostStarted()V
    .registers 4

    .line 1625
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1626
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1627
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1628
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1629
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 1627
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1632
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStarted(Landroid/app/Activity;)V

    .line 1633
    return-void
.end method

.method private blacklist dispatchActivityPostStopped()V
    .registers 4

    .line 1716
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1717
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1718
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1719
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1720
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 1718
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1723
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStopped(Landroid/app/Activity;)V

    .line 1724
    return-void
.end method

.method private blacklist dispatchActivityPreCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1572
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1573
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1574
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1576
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1575
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1580
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreDestroyed()V
    .registers 4

    .line 1760
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1761
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1762
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1763
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1764
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1765
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1763
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1768
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPrePaused()V
    .registers 4

    .line 1666
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPrePaused(Landroid/app/Activity;)V

    .line 1667
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1668
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1669
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1670
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 1669
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1673
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPreResumed()V
    .registers 4

    .line 1636
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreResumed(Landroid/app/Activity;)V

    .line 1637
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1638
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1640
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 1639
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1643
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1727
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1728
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1729
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1730
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1731
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1732
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1730
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1735
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPreStarted()V
    .registers 4

    .line 1605
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStarted(Landroid/app/Activity;)V

    .line 1606
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1607
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1608
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1609
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 1608
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1612
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreStopped()V
    .registers 4

    .line 1696
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStopped(Landroid/app/Activity;)V

    .line 1697
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1698
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1699
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1700
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 1699
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1703
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityResumed()V
    .registers 4

    .line 1646
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1647
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1648
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1650
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 1649
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1653
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1738
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1739
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1740
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1741
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1742
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1740
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1745
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1746
    return-void
.end method

.method private blacklist dispatchActivityStarted()V
    .registers 4

    .line 1615
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1616
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1617
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1618
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1619
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 1618
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1622
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityStopped()V
    .registers 4

    .line 1706
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1707
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1708
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1709
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 1708
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1712
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1713
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 9690
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 9692
    if-eqz p2, :cond_c

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 9693
    :cond_c
    new-array v1, v0, [Ljava/lang/String;

    :goto_e
    nop

    .line 9694
    .local v1, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_18

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_1a

    .line 9695
    :cond_18
    new-array v2, v0, [I

    :goto_1a
    nop

    .line 9696
    .local v2, "grantResults":[I
    if-eqz p2, :cond_24

    const-string v3, "android.content.pm.extra.REQUEST_PERMISSIONS_DEVICE_ID"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_25

    .line 9698
    :cond_24
    nop

    :goto_25
    nop

    .line 9699
    .local v0, "deviceId":I
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 9700
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .line 9705
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 9706
    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    :goto_c
    nop

    .line 9707
    .local v1, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_16

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_18

    .line 9708
    :cond_16
    new-array v0, v0, [I

    :goto_18
    nop

    .line 9709
    .local v0, "grantResults":[I
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9710
    return-void
.end method

.method private blacklist dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "legacyOption"    # Ljava/lang/String;
    .param p4, "dumpableName"    # Ljava/lang/String;

    .line 8361
    const-string v0, "--dump-dumpable"

    filled-new-array {p1, p3, v0, p4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s option deprecated. Use %s %s instead\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 8363
    return-void
.end method

.method private greylist-max-o ensureSearchManager()V
    .registers 3

    .line 7872
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5

    .line 7873
    return-void

    .line 7877
    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;
    :try_end_d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_d} :catch_f

    .line 7880
    nop

    .line 7881
    return-void

    .line 7878
    :catch_f
    move-exception v0

    .line 7879
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-r finish(I)V
    .registers 6
    .param p1, "finishTask"    # I

    .line 7429
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_FINISH_ACTIVITY:Z

    if-eqz v0, :cond_21

    .line 7430
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishActivity: finishTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7432
    :cond_21
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_43

    .line 7435
    monitor-enter p0

    .line 7436
    :try_start_26
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    .line 7437
    .local v0, "resultCode":I
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 7438
    .local v1, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_40

    .line 7440
    if-eqz v1, :cond_30

    .line 7441
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 7443
    :cond_30
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 7445
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mFinished:Z

    .line 7447
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :cond_3f
    goto :goto_48

    .line 7438
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 7448
    :cond_43
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 7451
    :goto_48
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityFinish(Landroid/content/Intent;)V

    .line 7452
    return-void
.end method

.method private blacklist getAutofillClientController()Landroid/view/autofill/AutofillClientController;
    .registers 2

    .line 1485
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-nez v0, :cond_b

    .line 1486
    new-instance v0, Landroid/view/autofill/AutofillClientController;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillClientController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    .line 1488
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    return-object v0
.end method

.method private blacklist getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;
    .registers 2

    .line 1382
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1383
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_1a

    .line 1384
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 1386
    :cond_1a
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method private blacklist getContentCaptureTypeAsString(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 1405
    packed-switch p1, :pswitch_data_24

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1413
    :pswitch_17
    const-string v0, "STOP"

    return-object v0

    .line 1411
    :pswitch_1a
    const-string v0, "PAUSE"

    return-object v0

    .line 1409
    :pswitch_1d
    const-string v0, "RESUME"

    return-object v0

    .line 1407
    :pswitch_20
    const-string v0, "START"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static native greylist-max-o getDlWarning()Ljava/lang/String;
.end method

.method private blacklist getOrCreateSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    .line 1908
    monitor-enter p0

    .line 1909
    :try_start_1
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    if-nez v0, :cond_c

    .line 1910
    new-instance v0, Landroid/window/SplashScreen$SplashScreenImpl;

    invoke-direct {v0, p0}, Landroid/window/SplashScreen$SplashScreenImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    .line 1912
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    monitor-exit p0

    return-object v0

    .line 1913
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private blacklist getPermissionRequestStates(Landroid/content/Context;[Ljava/lang/String;)[I
    .registers 7
    .param p1, "deviceContext"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 5844
    array-length v0, p2

    .line 5845
    .local v0, "size":I
    new-array v1, v0, [I

    .line 5846
    .local v1, "results":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_19

    .line 5847
    aget-object v3, p2, v2

    if-nez v3, :cond_e

    .line 5848
    const/4 v3, 0x2

    aput v3, v1, v2

    goto :goto_16

    .line 5850
    :cond_e
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getPermissionRequestState(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 5846
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5853
    .end local v2    # "i":I
    :cond_19
    return-object v1
.end method

.method private greylist-max-o initWindowDecorActionBar()V
    .registers 4

    .line 3865
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3869
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 3871
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_3f

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1a

    goto :goto_3f

    .line 3875
    :cond_1a
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3876
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 3878
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 3879
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 3880
    return-void

    .line 3872
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V
    .registers 11
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "caller"    # Landroid/app/ComponentCaller;
    .param p6, "reason"    # Ljava/lang/String;

    .line 9542
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 9543
    if-nez p1, :cond_1c

    .line 9544
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 9545
    iput-object p5, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    .line 9546
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 9547
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    goto/16 :goto_94

    .line 9549
    :cond_17
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_94

    .line 9551
    :cond_1c
    const-string v0, "@android:requestPermissions:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 9552
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 9554
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_94

    .line 9556
    :cond_36
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 9557
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_41

    .line 9558
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    .line 9560
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_41
    goto :goto_94

    .line 9561
    :cond_42
    const-string v0, "@android:view:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 9562
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 9563
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 9562
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9564
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 9565
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 9566
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 9568
    return-void

    .line 9570
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_77
    goto :goto_5a

    .line 9571
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_78
    goto :goto_94

    :cond_79
    const-string v0, "@android:autoFillAuth:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 9572
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/autofill/AutofillClientController;->onDispatchActivityResult(IILandroid/content/Intent;)V

    goto :goto_94

    .line 9574
    :cond_89
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 9575
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_94

    .line 9576
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 9580
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_94
    :goto_94
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p6}, Landroid/app/EventLogTags;->writeWmOnActivityResultCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 9582
    return-void
.end method

.method private blacklist internalSetIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 3
    .param p1, "newIntent"    # Landroid/content/Intent;
    .param p2, "newCaller"    # Landroid/app/ComponentCaller;

    .line 1228
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 1229
    iput-object p2, p0, Landroid/app/Activity;->mCaller:Landroid/app/ComponentCaller;

    .line 1230
    return-void
.end method

.method private blacklist isTvImplicitEnterPipProhibited()Z
    .registers 5

    .line 3225
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3226
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/Flags;->enableTvImplicitEnterPipRestriction()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 3227
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3229
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3228
    const-string v3, "android.permission.TV_IMPLICIT_ENTER_PIP"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 3227
    :goto_23
    return v2

    .line 3231
    :cond_24
    return v2
.end method

.method private synthetic blacklist lambda$requestPermissions$0(I[Ljava/lang/String;[II)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "results"    # [I
    .param p4, "deviceId"    # I

    .line 5828
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5829
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 5830
    return-void
.end method

.method private greylist-max-o missingDialog(I)Ljava/lang/IllegalArgumentException;
    .registers 5
    .param p1, "id"    # I

    .line 5330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist notifyContentCaptureManagerIfNeeded(I)V
    .registers 9
    .param p1, "type"    # I

    .line 1420
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyContentCapture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1422
    invoke-direct {p0, p1}, Landroid/app/Activity;->getContentCaptureTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 1423
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1421
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1426
    :cond_33
    :try_start_33
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_83

    .line 1427
    .local v2, "cm":Landroid/view/contentcapture/ContentCaptureManager;
    if-nez v2, :cond_3d

    .line 1452
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1427
    return-void

    .line 1429
    :cond_3d
    packed-switch p1, :pswitch_data_88

    .line 1449
    :try_start_40
    const-string v3, "Activity"

    goto :goto_68

    .line 1446
    :pswitch_43
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityDestroyed()V

    .line 1447
    goto :goto_7e

    .line 1443
    :pswitch_47
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityPaused()V

    .line 1444
    goto :goto_7e

    .line 1440
    :pswitch_4b
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityResumed()V

    .line 1441
    goto :goto_7e

    .line 1433
    :pswitch_4f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1434
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_5c

    .line 1435
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1437
    :cond_5c
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1438
    goto :goto_7e

    .line 1449
    .end local v3    # "window":Landroid/view/Window;
    :goto_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid @ContentCaptureNotificationType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_40 .. :try_end_7e} :catchall_83

    .line 1452
    .end local v2    # "cm":Landroid/view/contentcapture/ContentCaptureManager;
    :goto_7e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1453
    nop

    .line 1454
    return-void

    .line 1452
    :catchall_83
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1453
    throw v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

.method private blacklist notifyVoiceInteractionManagerServiceActivityEvent(I)V
    .registers 4
    .param p1, "type"    # I

    .line 1817
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-nez v0, :cond_1f

    .line 1818
    nop

    .line 1819
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1818
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 1820
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-nez v0, :cond_1f

    .line 1821
    const-string v0, "Activity"

    const-string/jumbo v1, "notifyVoiceInteractionManagerServiceActivityEvent: Can not get VoiceInteractionManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return-void

    .line 1827
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->notifyActivityEventChanged(Landroid/os/IBinder;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 1830
    goto :goto_28

    .line 1828
    :catch_27
    move-exception v0

    .line 1831
    :goto_28
    return-void
.end method

.method private blacklist onBackInvoked()V
    .registers 5

    .line 4317
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/app/Activity$RequestFinishCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/app/Activity$RequestFinishCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 4320
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4321
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityBackPressed(Landroid/content/Intent;)V

    .line 4323
    :cond_22
    return-void
.end method

.method private greylist-max-o restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 9515
    if-eqz p1, :cond_b

    .line 9516
    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 9519
    :cond_b
    return-void
.end method

.method private greylist-max-o restoreManagedDialogs(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2040
    const-string v0, "android:savedDialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2041
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_9

    .line 2042
    return-void

    .line 2045
    :cond_9
    const-string v1, "android:savedDialogIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 2046
    .local v1, "ids":[I
    array-length v2, v1

    .line 2047
    .local v2, "numDialogs":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 2048
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_5a

    .line 2049
    aget v4, v1, v3

    .line 2050
    .local v4, "dialogId":I
    invoke-static {v4}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 2051
    .local v5, "dialogState":Landroid/os/Bundle;
    if-eqz v5, :cond_57

    .line 2054
    new-instance v6, Landroid/app/Activity$ManagedDialog;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity-IA;)V

    .line 2055
    .local v6, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v4}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 2056
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v7, v5, v8}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 2057
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_57

    .line 2058
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2059
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v8, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v7, v8}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 2060
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2048
    .end local v4    # "dialogId":I
    .end local v5    # "dialogState":Landroid/os/Bundle;
    .end local v6    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2064
    .end local v3    # "i":I
    :cond_5a
    return-void
.end method

.method private greylist saveManagedDialogs(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2595
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2596
    return-void

    .line 2599
    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2600
    .local v0, "numDialogs":I
    if-nez v0, :cond_e

    .line 2601
    return-void

    .line 2604
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2606
    .local v1, "dialogState":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2609
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v0, :cond_4b

    .line 2610
    iget-object v4, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2611
    .local v4, "key":I
    aput v4, v2, v3

    .line 2612
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity$ManagedDialog;

    .line 2613
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v4}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2614
    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_48

    .line 2615
    invoke-static {v4}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2609
    .end local v4    # "key":I
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2619
    .end local v3    # "i":I
    :cond_4b
    const-string v3, "android:savedDialogIds"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2620
    const-string v3, "android:savedDialogs"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2621
    return-void
.end method

.method private static greylist-max-o savedDialogArgsKeyFor(I)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # I

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o savedDialogKeyFor(I)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # I

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1457
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    .line 1458
    .local v0, "cm":Landroid/view/contentcapture/ContentCaptureManager;
    if-nez v0, :cond_7

    return-void

    .line 1460
    :cond_7
    new-instance v1, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v1, p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    .line 1462
    .local v1, "contentCaptureContextBuilder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    if-eqz p2, :cond_11

    .line 1463
    invoke-virtual {v1, p2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 1465
    :cond_11
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v2

    .line 1466
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v3

    .line 1465
    invoke-virtual {v2, v3}, Landroid/view/contentcapture/ContentCaptureSession;->setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 1467
    return-void
.end method

.method private greylist-max-o startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 6822
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "requestCode":I
    .end local p4    # "options":Landroid/os/Bundle;
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v1, "intent":Landroid/content/Intent;
    .local v3, "requestCode":I
    .local v4, "options":Landroid/os/Bundle;
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6823
    return-void
.end method

.method private blacklist startAppJankTracking()V
    .registers 4

    .line 10056
    invoke-static {}, Landroid/app/jank/Flags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10057
    return-void

    .line 10059
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 10060
    return-void

    .line 10062
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 10063
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 10064
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_73

    .line 10065
    new-instance v1, Landroid/app/Activity$2;

    invoke-direct {v1, p0}, Landroid/app/Activity$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setAppJankStatsCallback(Lcom/android/internal/policy/DecorView$AppJankStatsCallback;)V

    .line 10071
    iget-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    if-nez v1, :cond_58

    .line 10072
    invoke-static {}, Landroid/app/jank/Flags;->viewrootChoreographer()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 10073
    new-instance v1, Landroid/app/jank/JankTracker;

    invoke-direct {v1, v0}, Landroid/app/jank/JankTracker;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    goto :goto_58

    .line 10075
    :cond_4d
    new-instance v1, Landroid/app/jank/JankTracker;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/jank/JankTracker;-><init>(Landroid/view/Choreographer;Landroid/view/View;)V

    iput-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    .line 10079
    :cond_58
    :goto_58
    iget-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/jank/JankTracker;->setActivityName(Ljava/lang/String;)V

    .line 10080
    iget-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/jank/JankTracker;->setAppUid(I)V

    .line 10081
    iget-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-virtual {v1}, Landroid/app/jank/JankTracker;->enableAppJankTracking()V

    .line 10084
    .end local v0    # "decorView":Lcom/android/internal/policy/DecorView;
    :cond_73
    return-void
.end method

.method private blacklist startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 16
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6899
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p2    # "intent":Landroid/content/IntentSender;
    .end local p3    # "requestCode":I
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .end local p5    # "flagsMask":I
    .end local p6    # "flagsValues":I
    .end local p7    # "options":Landroid/os/Bundle;
    .local v1, "intent":Landroid/content/IntentSender;
    .local v3, "requestCode":I
    .local v4, "fillInIntent":Landroid/content/Intent;
    .local v5, "flagsMask":I
    .local v6, "flagsValues":I
    .local v7, "options":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6901
    return-void
.end method

.method private blacklist stopAppJankTracking()V
    .registers 2

    .line 10090
    invoke-static {}, Landroid/app/jank/Flags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10091
    return-void

    .line 10093
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    if-eqz v0, :cond_10

    .line 10094
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-virtual {v0}, Landroid/app/jank/JankTracker;->disableAppJankTracking()V

    .line 10096
    :cond_10
    return-void
.end method

.method private greylist-max-o storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 9509
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_c

    .line 9510
    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9512
    :cond_c
    return-void
.end method

.method private greylist-max-o transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .line 6057
    if-nez p1, :cond_21

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-nez v0, :cond_21

    .line 6058
    invoke-virtual {p0}, Landroid/app/Activity;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v0

    .line 6059
    .local v0, "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    if-eqz v0, :cond_21

    .line 6060
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 6063
    .end local v0    # "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    :cond_21
    return-object p1
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3940
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3941
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3942
    return-void
.end method

.method public final blacklist addDumpable(Landroid/util/Dumpable;)Z
    .registers 3
    .param p1, "dumpable"    # Landroid/util/Dumpable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8233
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v0, :cond_b

    .line 8234
    new-instance v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-direct {v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    .line 8236
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl;->addDumpable(Landroid/util/Dumpable;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-r attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p16, "window"    # Landroid/view/Window;
    .param p17, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;
    .param p18, "assistToken"    # Landroid/os/IBinder;
    .param p19, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 9024
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v20}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 9027
    return-void
.end method

.method final blacklist attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 39
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p16, "window"    # Landroid/view/Window;
    .param p17, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;
    .param p18, "assistToken"    # Landroid/os/IBinder;
    .param p19, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p20, "initialCallerInfoAccessToken"    # Landroid/os/IBinder;

    .line 9041
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p12

    move-object/from16 v4, p15

    move-object/from16 v5, p7

    iput-object v5, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 9042
    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 9044
    iget-object v6, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 9045
    iput-object v2, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 9047
    new-instance v6, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    invoke-direct {v6, v0, v7, v8}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    iput-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 9048
    iget-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v9, v0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-virtual {v6, v9}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    .line 9049
    iget-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 9050
    iget-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 9051
    iget-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 9052
    iget v6, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v6, :cond_49

    .line 9053
    iget-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v9, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v6, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 9055
    :cond_49
    iget v6, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v6, :cond_54

    .line 9056
    iget-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v9, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v6, v9}, Landroid/view/Window;->setUiOptions(I)V

    .line 9058
    :cond_54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 9060
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 9061
    move-object/from16 v9, p3

    iput-object v9, v0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 9062
    move-object/from16 v10, p4

    iput-object v10, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 9063
    move-object/from16 v11, p18

    iput-object v11, v0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    .line 9064
    move-object/from16 v12, p19

    iput-object v12, v0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    .line 9065
    move/from16 v13, p5

    iput v13, v0, Landroid/app/Activity;->mIdent:I

    .line 9066
    iput-object v1, v0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 9067
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 9068
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9069
    move-object/from16 v15, p9

    iput-object v15, v0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 9070
    move-object/from16 v5, p10

    iput-object v5, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 9071
    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 9072
    iput-object v3, v0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 9073
    if-eqz v4, :cond_a0

    .line 9074
    if-eqz v3, :cond_95

    .line 9075
    iget-object v5, v3, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_a0

    .line 9077
    :cond_95
    new-instance v5, Landroid/app/VoiceInteractor;

    .line 9078
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v5, v4, v0, v0, v3}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v5, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 9082
    :cond_a0
    :goto_a0
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 9083
    const-string/jumbo v5, "window"

    move-object/from16 v4, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iget-object v4, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9084
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x200

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v7, :cond_c2

    move/from16 v7, v16

    goto :goto_c4

    :cond_c2
    move/from16 v7, v17

    .line 9082
    :goto_c4
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 9086
    iget-object v3, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v3, :cond_d6

    .line 9087
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v4, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 9089
    :cond_d6
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 9090
    move-object/from16 v3, p13

    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 9092
    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setColorMode(I)V

    .line 9093
    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_f5

    move/from16 v5, v16

    goto :goto_f7

    :cond_f5
    move/from16 v5, v17

    :goto_f7
    invoke-virtual {v4, v5}, Landroid/view/Window;->setPreferMinimalPostProcessing(Z)V

    .line 9096
    invoke-direct {v0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/autofill/AutofillClientController;->onActivityAttached(Landroid/app/Application;)V

    .line 9097
    invoke-virtual {v1}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 9099
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v4

    if-eqz v4, :cond_120

    .line 9100
    new-instance v4, Landroid/app/ComponentCaller;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v6, p20

    invoke-direct {v4, v5, v6}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    iput-object v4, v0, Landroid/app/Activity;->mInitialCaller:Landroid/app/ComponentCaller;

    .line 9101
    iget-object v4, v0, Landroid/app/Activity;->mInitialCaller:Landroid/app/ComponentCaller;

    iput-object v4, v0, Landroid/app/Activity;->mCaller:Landroid/app/ComponentCaller;

    goto :goto_122

    .line 9099
    :cond_120
    move-object/from16 v6, p20

    .line 9103
    :goto_122
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .line 1471
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 1472
    if-eqz p1, :cond_13

    .line 1473
    invoke-virtual {p0}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V

    .line 1474
    invoke-virtual {p0}, Landroid/app/Activity;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 1476
    :cond_13
    return-void
.end method

.method public greylist-max-o canStartActivityForResult()Z
    .registers 2

    .line 6854
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist clearOverrideActivityTransition(I)V
    .registers 5
    .param p1, "overrideType"    # I

    .line 7014
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 7015
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Override type must be either open or close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7017
    :cond_e
    :goto_e
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityClient;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V

    .line 7019
    return-void
.end method

.method public whitelist closeContextMenu()V
    .registers 3

    .line 5103
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5104
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 5106
    :cond_e
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .registers 3

    .line 5041
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 5042
    invoke-virtual {v0}, Landroid/app/ActionBar;->closeOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5043
    :cond_15
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 5045
    :cond_1a
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7833
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist convertFromTranslucent()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8426
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    .line 8427
    return-void
.end method

.method public whitelist convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .registers 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8464
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 8465
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 8466
    if-nez p2, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 8465
    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 8467
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 8469
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_2e

    .line 8471
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 8473
    :cond_2e
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v0
.end method

.method public whitelist createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 20
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 7679
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 7681
    .local v5, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    :try_start_9
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 7682
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 7683
    invoke-virtual {v1}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 7684
    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1b

    iget-object v0, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_1f

    :cond_1b
    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_1f
    move-object v7, v0

    iget-object v8, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object v2, v10, v0

    .line 7685
    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v14

    .line 7682
    const/4 v4, 0x3

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v9, p1

    move/from16 v12, p3

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 7686
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_3f

    new-instance v3, Landroid/app/PendingIntent;

    invoke-direct {v3, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3e} :catch_40

    move-object v15, v3

    :cond_3f
    return-object v15

    .line 7687
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_40
    move-exception v0

    .line 7690
    return-object v15
.end method

.method public final whitelist dismissDialog(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5314
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_19

    .line 5318
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5319
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_14

    .line 5322
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5323
    return-void

    .line 5320
    :cond_14
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 5315
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_19
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist dismissKeyboardShortcutsHelper()V
    .registers 4

    .line 2824
    nop

    .line 2825
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2824
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2827
    .local v0, "sysuiComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2828
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2829
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2830
    return-void
.end method

.method blacklist dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V
    .registers 7
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "caller"    # Landroid/app/ComponentCaller;
    .param p6, "reason"    # Ljava/lang/String;

    .line 9523
    invoke-direct/range {p0 .. p6}, Landroid/app/Activity;->internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 9524
    return-void
.end method

.method greylist-max-r dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    .registers 20
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "reason"    # Ljava/lang/String;

    .line 9529
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 9530
    new-instance v6, Landroid/app/ComponentCaller;

    .line 9531
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 9530
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/Activity;->internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    goto :goto_2c

    .line 9533
    :cond_1e
    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Landroid/app/Activity;->internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 9535
    :goto_2c
    return-void
.end method

.method public greylist-max-o dispatchEnterAnimationComplete()V
    .registers 3

    .line 8628
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 8629
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 8630
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8631
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 8633
    .end local v0    # "decorView":Landroid/view/View;
    :cond_22
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4643
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4644
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4645
    const/4 v0, 0x1

    return v0

    .line 4647
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4551
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4556
    .local v0, "keyCode":I
    const/16 v1, 0x52

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 4557
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4558
    return v2

    .line 4561
    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4562
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4563
    return v2

    .line 4565
    :cond_24
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4566
    .local v2, "decor":Landroid/view/View;
    if-nez v2, :cond_2c

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 4567
    :cond_2c
    if-eqz v2, :cond_33

    .line 4568
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 4567
    :goto_34
    invoke-virtual {p1, p0, v3, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4581
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4582
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4583
    const/4 v0, 0x1

    return v0

    .line 4585
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3324
    invoke-virtual {p0, p1}, Landroid/app/Activity;->updateDisplay(I)V

    .line 3325
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 3326
    return-void
.end method

.method final greylist-max-o dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 9477
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 9478
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9479
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_10

    .line 9480
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->onMultiWindowModeChanged()V

    .line 9482
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9483
    return-void
.end method

.method final greylist-max-o dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 9490
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 9491
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9492
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_10

    .line 9493
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onPictureInPictureModeChanged(Z)V

    .line 9495
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9496
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 4651
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4652
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4654
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4655
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_26

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 4657
    .local v1, "isFullScreen":Z
    :goto_27
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 4659
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4660
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 4661
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4664
    :cond_3b
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 4602
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4604
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4605
    const/4 v0, 0x1

    return v0

    .line 4607
    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4623
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4624
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4625
    const/4 v0, 0x1

    return v0

    .line 4627
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 8222
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8223
    return-void
.end method

.method greylist-max-o dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 8320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8322
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8323
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8324
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8325
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8326
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8327
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8328
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 8329
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsInMultiWindowMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8330
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 8331
    const-string v1, " mIsInPictureInPictureMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8332
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 8333
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8334
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 8335
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8336
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8338
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8339
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8340
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_98

    .line 8341
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8344
    :cond_98
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 8345
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 8346
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 8347
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8350
    :cond_c5
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 8352
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/app/ResourcesManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8354
    iget-object v1, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-eqz v1, :cond_e3

    .line 8355
    iget-object v1, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8357
    :cond_e3
    return-void
.end method

.method public blacklist dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 8253
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-eqz v0, :cond_9

    .line 8254
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 8256
    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_12

    .line 8257
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 8259
    :cond_12
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_1b

    .line 8260
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager;->addDumpable(Landroid/app/Activity;)V

    .line 8263
    :cond_1b
    const/4 v0, 0x1

    .line 8264
    .local v0, "dumpInternalState":Z
    const/4 v1, 0x0

    .line 8265
    .local v1, "arg":Ljava/lang/String;
    if-eqz p4, :cond_bf

    array-length v2, p4

    if-lez v2, :cond_bf

    .line 8266
    const/4 v2, 0x0

    aget-object v1, p4, v2

    .line 8267
    const/4 v3, 0x1

    .line 8269
    .local v3, "isSpecialCase":Z
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "--dump-dumpable"

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_e8

    :cond_31
    goto :goto_62

    :sswitch_32
    const-string v4, "--autofill"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move v4, v2

    goto :goto_63

    :sswitch_3c
    const-string v4, "--contentcapture"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move v4, v7

    goto :goto_63

    :sswitch_46
    const-string v4, "--list-dumpables"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x3

    goto :goto_63

    :sswitch_50
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x4

    goto :goto_63

    :sswitch_58
    const-string v4, "--translation"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move v4, v6

    goto :goto_63

    :goto_62
    const/4 v4, -0x1

    :goto_63
    packed-switch v4, :pswitch_data_fe

    .line 8303
    const/4 v3, 0x0

    goto :goto_b4

    .line 8290
    :pswitch_68
    array-length v4, p4

    if-ne v4, v7, :cond_74

    .line 8291
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8292
    const-string v2, " requires the dumpable name"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b4

    .line 8293
    :cond_74
    iget-object v4, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v4, :cond_7f

    .line 8294
    const-string/jumbo v2, "no dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b4

    .line 8297
    :cond_7f
    array-length v4, p4

    sub-int/2addr v4, v6

    new-array v4, v4, [Ljava/lang/String;

    .line 8298
    .local v4, "prunedArgs":[Ljava/lang/String;
    array-length v5, v4

    invoke-static {p4, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8299
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    aget-object v5, p4, v7

    invoke-virtual {v2, p1, p3, v5, v4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8301
    .end local v4    # "prunedArgs":[Ljava/lang/String;
    goto :goto_b4

    .line 8283
    :pswitch_8f
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v2, :cond_9c

    .line 8284
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a1

    .line 8286
    :cond_9c
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8288
    :goto_a1
    return-void

    .line 8279
    :pswitch_a2
    const-string v2, "UiTranslationController"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8281
    return-void

    .line 8275
    :pswitch_a8
    const-string v2, "ContentCaptureManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8277
    return-void

    .line 8271
    :pswitch_ae
    const-string v2, "AutofillManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8273
    return-void

    .line 8306
    :goto_b4
    if-eqz v3, :cond_bf

    .line 8307
    const-wide/32 v4, 0x8e56fa2

    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    xor-int/2addr v2, v7

    move v0, v2

    .line 8311
    .end local v3    # "isSpecialCase":Z
    :cond_bf
    if-eqz v0, :cond_c5

    .line 8312
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_e7

    .line 8314
    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not calling dump() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because of special argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8316
    :goto_e7
    return-void

    :sswitch_data_e8
    .sparse-switch
        -0x2673d6ef -> :sswitch_58
        0x5fd0f67 -> :sswitch_50
        0x1c2b8816 -> :sswitch_46
        0x4519f64d -> :sswitch_3c
        0x56b9c952 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_a8
        :pswitch_a2
        :pswitch_8f
        :pswitch_68
    .end packed-switch
.end method

.method public blacklist enableTaskLocaleOverride()V
    .registers 3

    .line 9881
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->enableTaskLocaleOverride(Landroid/os/IBinder;)V

    .line 9882
    return-void
.end method

.method public whitelist enterPictureInPictureMode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3143
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 3144
    return-void
.end method

.method public whitelist enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .registers 5
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 3170
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3171
    return v1

    .line 3173
    :cond_8
    if-eqz p1, :cond_33

    .line 3176
    iget-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    if-nez v0, :cond_24

    .line 3177
    invoke-direct {p0}, Landroid/app/Activity;->isTvImplicitEnterPipProhibited()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3180
    const-string v0, "Activity"

    const-string v2, "Activity must be resumed to enter picture-in-picture and not about to be paused. Implicit app entry is only permitted on TV if android.permission.TV_IMPLICIT_ENTER_PIP is held by the app."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    return v1

    .line 3186
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must be resumed to enter picture-in-picture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3193
    :cond_24
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 3195
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0

    .line 3174
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3777
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist finish()V
    .registers 2

    .line 7460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 7461
    return-void
.end method

.method public whitelist finishActivity(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .line 7527
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_10

    .line 7528
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_15

    .line 7530
    :cond_10
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 7532
    :goto_15
    return-void
.end method

.method public whitelist finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 6
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7545
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 7546
    return-void
.end method

.method public whitelist finishAffinity()V
    .registers 3

    .line 7478
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_24

    .line 7481
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-nez v0, :cond_1c

    .line 7484
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7485
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    .line 7487
    :cond_1b
    return-void

    .line 7482
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called to deliver a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7479
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called from an embedded activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishAfterTransition()V
    .registers 2

    .line 7512
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 7513
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7515
    :cond_b
    return-void
.end method

.method public whitelist finishAndRemoveTask()V
    .registers 2

    .line 7553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 7554
    return-void
.end method

.method public whitelist finishFromChild(Landroid/app/Activity;)V
    .registers 2
    .param p1, "child"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7501
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7502
    return-void
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .registers 2

    .line 3811
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3812
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 9129
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public final greylist-max-o getActivityThread()Landroid/app/ActivityThread;
    .registers 2

    .line 9124
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public final greylist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 9108
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_d
    return-object v0
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .registers 2

    .line 1310
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public final blacklist getAssistToken()Landroid/os/IBinder;
    .registers 2

    .line 9113
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    :goto_d
    return-object v0
.end method

.method public final greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 1481
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCaller()Landroid/app/ComponentCaller;
    .registers 2

    .line 1203
    iget-object v0, p0, Landroid/app/Activity;->mCaller:Landroid/app/ComponentCaller;

    return-object v0
.end method

.method public whitelist getCallingActivity()Landroid/content/ComponentName;
    .registers 3

    .line 7227
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 7208
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 3412
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7827
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 1

    .line 1494
    return-object p0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 3976
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 3954
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentCaller()Landroid/app/ComponentCaller;
    .registers 3

    .line 7335
    iget-object v0, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    if-eqz v0, :cond_7

    .line 7339
    iget-object v0, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    return-object v0

    .line 7336
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The caller is null because #getCurrentCaller should be called within #onNewIntent or #onActivityResult methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 1372
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getFragmentManager()Landroid/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3588
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInitialCaller()Landroid/app/ComponentCaller;
    .registers 2

    .line 7307
    iget-object v0, p0, Landroid/app/Activity;->mInitialCaller:Landroid/app/ComponentCaller;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 1165
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method greylist-max-o getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_9

    .line 3517
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3516
    :goto_a
    return-object v0
.end method

.method public whitelist getLastNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 3437
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_9

    .line 3438
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3437
    :goto_a
    return-object v0
.end method

.method public whitelist getLaunchedFromPackage()Ljava/lang/String;
    .registers 3

    .line 7292
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLaunchedFromUid()I
    .registers 3

    .line 7259
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 5543
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLoaderManager()Landroid/app/LoaderManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1358
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalClassName()Ljava/lang/String;
    .registers 6

    .line 7811
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7812
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 7813
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7814
    .local v2, "packageLen":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2a

    .line 7815
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_23

    goto :goto_2a

    .line 7818
    :cond_23
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7816
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public whitelist getMaxNumPictureInPictureActions()I
    .registers 2

    .line 3221
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 8144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 5552
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_20

    .line 5553
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 5554
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_19

    .line 5555
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_20

    .line 5557
    :cond_19
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 5560
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public greylist-max-o getNextAutofillId()I
    .registers 2

    .line 2333
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 10005
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    .line 10009
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0

    .line 10006
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnBackInvokedDispatcher are not available on non-visual activities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getParent()Landroid/app/Activity;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1331
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public whitelist getParentActivityIntent()Landroid/content/Intent;
    .registers 7

    .line 8913
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 8914
    .local v0, "parentName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 8915
    return-object v2

    .line 8919
    :cond_c
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8921
    .local v1, "target":Landroid/content/ComponentName;
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 8922
    .local v3, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 8923
    .local v4, "parentActivity":Ljava/lang/String;
    if-nez v4, :cond_23

    .line 8924
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2c

    .line 8925
    :cond_23
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2e

    :goto_2c
    nop

    .line 8926
    .local v2, "parentIntent":Landroid/content/Intent;
    return-object v2

    .line 8927
    .end local v2    # "parentIntent":Landroid/content/Intent;
    .end local v3    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "parentActivity":Ljava/lang/String;
    :catch_2e
    move-exception v3

    .line 8928
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Activity"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    return-object v2
.end method

.method public whitelist getPreferences(I)Landroid/content/SharedPreferences;
    .registers 3
    .param p1, "mode"    # I

    .line 7849
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReferrer()Landroid/net/Uri;
    .registers 5

    .line 7154
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7155
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_29

    .line 7157
    :try_start_6
    const-string v1, "android.intent.extra.REFERRER"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 7158
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_13

    .line 7159
    return-object v1

    .line 7161
    :cond_13
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7162
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_20

    .line 7163
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_1f
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_1f} :catch_21

    return-object v3

    .line 7168
    .end local v1    # "referrer":Landroid/net/Uri;
    .end local v2    # "referrerName":Ljava/lang/String;
    :cond_20
    goto :goto_29

    .line 7165
    :catch_21
    move-exception v1

    .line 7166
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v2, "Activity"

    const-string v3, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7170
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_29
    :goto_29
    iget-object v1, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 7171
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 7173
    :cond_43
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getRequestedOrientation()I
    .registers 3

    .line 7758
    iget v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    .line 7759
    iget v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    return v0

    .line 7761
    :cond_8
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_17

    .line 7762
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 7764
    :cond_17
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method blacklist getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .registers 3

    .line 8505
    iget-object v0, p0, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 8507
    .local v0, "sceneTransitionInfo":Landroid/app/ActivityOptions$SceneTransitionInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 8508
    return-object v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    .line 5421
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final blacklist getShareableActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 9118
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    :goto_d
    return-object v0
.end method

.method public final whitelist getSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    .line 1904
    invoke-direct {p0}, Landroid/app/Activity;->getOrCreateSplashScreen()Landroid/window/SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 7885
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 7890
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7891
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 7892
    :cond_12
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7893
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 7894
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 7896
    :cond_21
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7886
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTaskId()I
    .registers 4

    .line 7775
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 7941
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTitleColor()I
    .registers 2

    .line 7945
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public whitelist getVoiceInteractor()Landroid/app/VoiceInteractor;
    .registers 2

    .line 2366
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .registers 2

    .line 8111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .registers 2

    .line 1348
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 1336
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public whitelist hasWindowFocus()Z
    .registers 4

    .line 4518
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4519
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_11

    .line 4520
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4521
    .local v1, "d":Landroid/view/View;
    if-eqz v1, :cond_11

    .line 4522
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 4525
    .end local v1    # "d":Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 3

    .line 4815
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 4816
    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4817
    :cond_15
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 4819
    :cond_1a
    return-void
.end method

.method public whitelist isActivityTransitionRunning()Z
    .registers 2

    .line 6053
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->isTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public whitelist isBackgroundVisibleBehind()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8592
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isChangingConfigurations()Z
    .registers 2

    .line 7404
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final whitelist isChild()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isDestroyed()Z
    .registers 2

    .line 7391
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public whitelist isFinishing()Z
    .registers 2

    .line 7383
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public whitelist isImmersive()Z
    .registers 3

    .line 8377
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInMultiWindowMode()Z
    .registers 2

    .line 3064
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .registers 2

    .line 3130
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0
.end method

.method public whitelist isLaunchedFromBubble()Z
    .registers 2

    .line 7868
    iget-boolean v0, p0, Landroid/app/Activity;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist isLocalVoiceInteractionSupported()Z
    .registers 2

    .line 2378
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->supportsLocalVoiceInteraction()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2379
    :catch_9
    move-exception v0

    .line 2381
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .registers 2

    .line 9648
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    return v0
.end method

.method public final greylist isResumed()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 9505
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public whitelist isTaskRoot()Z
    .registers 2

    .line 7785
    iget-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method final greylist-max-o isTopOfTask()Z
    .registers 3

    .line 8388
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_9

    goto :goto_16

    .line 8391
    :cond_9
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 8389
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist isVisibleForAutofill()Z
    .registers 2

    .line 9716
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isVoiceInteraction()Z
    .registers 2

    .line 2342
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isVoiceInteractionRoot()Z
    .registers 3

    .line 2357
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_12

    .line 2358
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2357
    :goto_13
    return v0
.end method

.method greylist-max-o makeVisible()V
    .registers 4

    .line 7363
    iget-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v0, :cond_18

    .line 7364
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 7365
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7366
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 7368
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_18
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7369
    return-void
.end method

.method public final greylist-max-r managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3637
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "sortOrder":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3638
    .local p1, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_12

    .line 3639
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3641
    :cond_12
    return-object p1
.end method

.method public final whitelist managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3677
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3678
    .local p1, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_12

    .line 3679
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3681
    :cond_12
    return-object p1
.end method

.method public whitelist moveTaskToBack(Z)Z
    .registers 4
    .param p1, "nonRoot"    # Z

    .line 7800
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist navigateUpTo(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 8854
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_49

    .line 8855
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 8856
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_22

    .line 8857
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 8858
    if-nez v0, :cond_16

    .line 8859
    const/4 v1, 0x0

    return v1

    .line 8861
    :cond_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 8862
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v3, p1

    move-object v7, v0

    goto :goto_24

    .line 8856
    :cond_22
    move-object v3, p1

    move-object v7, v0

    .line 8866
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v3, "upIntent":Landroid/content/Intent;
    .local v7, "destInfo":Landroid/content/ComponentName;
    :goto_24
    monitor-enter p0

    .line 8867
    :try_start_25
    iget v5, p0, Landroid/app/Activity;->mResultCode:I

    .line 8868
    .local v5, "resultCode":I
    iget-object v6, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 8869
    .local v6, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_45

    .line 8870
    if-eqz v6, :cond_2f

    .line 8871
    invoke-virtual {v6, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 8873
    :cond_2f
    invoke-virtual {v3, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 8874
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 8875
    .local v4, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityClient;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 8869
    .end local v4    # "resolvedType":Ljava/lang/String;
    .end local v5    # "resultCode":I
    .end local v6    # "resultData":Landroid/content/Intent;
    :catchall_45
    move-exception v0

    move-object p1, v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_45

    throw p1

    .line 8878
    .end local v3    # "upIntent":Landroid/content/Intent;
    .end local v7    # "destInfo":Landroid/content/ComponentName;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_49
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8897
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 8799
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 8788
    return-void
.end method

.method public whitelist onActivityReenter(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 7648
    return-void
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 7602
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "caller"    # Landroid/app/ComponentCaller;

    .line 7626
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7627
    return-void
.end method

.method protected whitelist onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 15
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 5572
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 5573
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_17

    .line 5576
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    .line 5579
    goto :goto_14

    .line 5577
    :catch_13
    move-exception v0

    .line 5580
    :goto_14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 5584
    :goto_17
    sget-object v0, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5586
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-nez v2, :cond_39

    .line 5587
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5589
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_39

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_39

    .line 5590
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 5594
    .end local v2    # "colorPrimary":I
    :cond_39
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5596
    .local v2, "colorBackground":I
    if-eqz v2, :cond_4a

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_4a

    .line 5597
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 5600
    :cond_4a
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 5603
    .local v5, "colorBackgroundFloating":I
    if-eqz v5, :cond_5c

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-ne v6, v3, :cond_5c

    .line 5604
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 5607
    :cond_5c
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 5609
    .local v3, "statusBarColor":I
    if-eqz v3, :cond_68

    .line 5610
    iget-object v6, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6, v3}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 5613
    :cond_68
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 5615
    .local v6, "navigationBarColor":I
    if-eqz v6, :cond_74

    .line 5616
    iget-object v7, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7, v6}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 5619
    :cond_74
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5620
    .local v7, "targetSdk":I
    const/16 v8, 0x1d

    if-ge v7, v8, :cond_80

    move v8, v4

    goto :goto_81

    :cond_80
    move v8, v1

    .line 5621
    .local v8, "targetPreQ":Z
    :goto_81
    if-nez v8, :cond_97

    .line 5622
    iget-object v9, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v9, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 5625
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 5631
    :cond_97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5632
    if-eqz p3, :cond_bb

    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v1

    if-nez v1, :cond_bb

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 5633
    invoke-virtual {v1}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v1

    if-eqz v1, :cond_bb

    .line 5639
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    .line 5641
    :cond_bb
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 5642
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3601
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 4497
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4301
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4302
    return-void

    .line 4305
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4307
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4308
    return-void

    .line 4310
    :cond_20
    invoke-direct {p0}, Landroid/app/Activity;->onBackInvoked()V

    .line 4311
    return-void
.end method

.method public whitelist onBackgroundVisibleBehindChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8614
    return-void
.end method

.method protected whitelist onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 7964
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3376
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3378
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3380
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 3382
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3385
    :cond_11
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1a

    .line 3388
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3391
    :cond_1a
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityConfigurationChanged()V

    .line 3392
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_26

    .line 3393
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3395
    :cond_26
    return-void
.end method

.method public whitelist onContentChanged()V
    .registers 1

    .line 4444
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 5126
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 5127
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 5129
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5140
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 5141
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 5143
    :cond_9
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1864
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_d

    .line 1865
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 1867
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 1868
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1b

    .line 1869
    iput-boolean v1, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    goto :goto_20

    .line 1871
    :cond_1b
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 1875
    :cond_20
    :goto_20
    if-eqz p1, :cond_3e

    .line 1876
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1878
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1879
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_3a

    .line 1880
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    .line 1879
    :goto_3b
    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1882
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3e
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 1883
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityCreated(Landroid/os/Bundle;)V

    .line 1884
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_4f

    .line 1885
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 1887
    :cond_4f
    if-eqz p1, :cond_53

    move v0, v1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    iput-boolean v0, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    .line 1888
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1890
    nop

    .line 1891
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1892
    .local v0, "aheadOfTimeBack":Z
    if-eqz v0, :cond_6f

    .line 1894
    new-instance v1, Landroid/app/Activity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Activity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 1895
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 1897
    :cond_6f
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1938
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1939
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 5061
    return-void
.end method

.method public whitelist onCreateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 2718
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5150
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .line 4994
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 4995
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4850
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 4851
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4853
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4688
    if-nez p1, :cond_12

    .line 4689
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 4690
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4691
    return v0

    .line 4693
    .end local v0    # "show":Z
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .line 4676
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2697
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 8192
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 8193
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 8196
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 8176
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDestroy()V
    .registers 7

    .line 2934
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2936
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityDestroyed()V

    .line 2939
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 2940
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2941
    .local v0, "numDialogs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_30

    .line 2942
    iget-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedDialog;

    .line 2943
    .local v3, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2944
    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2941
    .end local v3    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2947
    .end local v2    # "i":I
    :cond_30
    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 2951
    .end local v0    # "numDialogs":I
    :cond_32
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2952
    :try_start_35
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2953
    .local v2, "numCursors":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3c
    if-ge v3, v2, :cond_52

    .line 2954
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 2955
    .local v4, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v4, :cond_4f

    .line 2956
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2953
    .end local v4    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 2959
    .end local v3    # "i":I
    :cond_52
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2960
    .end local v2    # "numCursors":I
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_93

    .line 2963
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_61

    .line 2964
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 2967
    :cond_61
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_6a

    .line 2968
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 2971
    :cond_6a
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityDestroyed()V

    .line 2973
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2975
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_7a

    .line 2976
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    invoke-virtual {v0}, Landroid/view/translation/UiTranslationController;->onActivityDestroyed()V

    .line 2978
    :cond_7a
    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_89

    .line 2979
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2980
    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2983
    :cond_89
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_92

    .line 2984
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 2986
    :cond_92
    return-void

    .line 2960
    :catchall_93
    move-exception v1

    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 4507
    return-void
.end method

.method public whitelist onEnterAnimationComplete()V
    .registers 1

    .line 8622
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4403
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/DirectAction;",
            ">;>;)V"
        }
    .end annotation

    .line 2786
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/DirectAction;>;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2787
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4112
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_15

    .line 4113
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_11

    .line 4115
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_14

    .line 4117
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4119
    :goto_14
    return v1

    .line 4122
    :cond_15
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->shouldCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4123
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 4124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4125
    return v1

    .line 4128
    :cond_28
    iget v0, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 4129
    return v2

    .line 4130
    :cond_2e
    iget v0, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_45

    .line 4131
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4132
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 4133
    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 4135
    return v1

    .line 4137
    :cond_44
    return v2

    .line 4138
    .end local v0    # "w":Landroid/view/Window;
    :cond_45
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_4a

    .line 4141
    return v2

    .line 4144
    :cond_4a
    const/4 v0, 0x0

    .line 4146
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_aa

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_aa

    .line 4150
    :cond_58
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4152
    .local v3, "handled":Z
    if-eqz v3, :cond_ac

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_ac

    .line 4155
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4156
    .local v4, "str":Ljava/lang/String;
    const/4 v0, 0x1

    .line 4158
    iget v6, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v6, :pswitch_data_be

    :pswitch_79
    goto :goto_ac

    .line 4168
    :pswitch_7a
    invoke-virtual {p0, v4, v2, v5, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_ac

    .line 4165
    :pswitch_7e
    invoke-virtual {p0, v4, v2, v5, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 4166
    goto :goto_ac

    .line 4160
    :pswitch_82
    new-instance v1, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4161
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4162
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4163
    goto :goto_ac

    .line 4147
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "handled":Z
    .end local v4    # "str":Ljava/lang/String;
    :cond_aa
    :goto_aa
    const/4 v0, 0x1

    .line 4148
    const/4 v3, 0x0

    .line 4173
    .restart local v3    # "handled":Z
    :cond_ac
    :goto_ac
    if-eqz v0, :cond_bd

    .line 4174
    iget-object v1, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4175
    iget-object v1, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4176
    iget-object v1, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4178
    :cond_bd
    return v3

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_82
        :pswitch_79
        :pswitch_7e
        :pswitch_7a
    .end packed-switch
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 4238
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4337
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 4338
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4212
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4213
    .local v0, "sdkVersion":I
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_21

    .line 4214
    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    .line 4215
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4216
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_21

    .line 4219
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4220
    return v2

    .line 4224
    :cond_21
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_2c

    .line 4225
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4226
    return v2

    .line 4229
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onLocalVoiceInteractionStarted()V
    .registers 1

    .line 2400
    return-void
.end method

.method public whitelist onLocalVoiceInteractionStopped()V
    .registers 1

    .line 2409
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 3564
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3565
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 3566
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_11

    .line 3567
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 3569
    :cond_11
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 4742
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4744
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    const v1, 0xc350

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_76

    .line 4778
    return v2

    .line 4769
    :sswitch_d
    if-eqz v0, :cond_1e

    .line 4770
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4772
    :cond_1e
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4773
    return v3

    .line 4775
    :cond_25
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 4749
    :sswitch_2c
    if-eqz v0, :cond_3d

    .line 4750
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4752
    :cond_3d
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4753
    return v3

    .line 4755
    :cond_44
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 4756
    return v3

    .line 4758
    :cond_4d
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x102002c

    if-ne v1, v3, :cond_74

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_74

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 4759
    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_74

    .line 4760
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_6d

    .line 4761
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 4763
    :cond_6d
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 4766
    :cond_74
    return v2

    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_2c
        0x6 -> :sswitch_d
    .end sparse-switch
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4721
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_19

    .line 4722
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4723
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_12

    .line 4724
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_19

    .line 4726
    :cond_12
    const-string v0, "Activity"

    const-string v2, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    :cond_19
    :goto_19
    return v1
.end method

.method public greylist-max-r onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3352
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .registers 2
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3055
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 3038
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 3039
    return-void
.end method

.method public whitelist onNavigateUp()Z
    .registers 5

    .line 4932
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4933
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_41

    .line 4934
    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 4938
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3f

    .line 4939
    :cond_10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4940
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 4941
    .local v1, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 4942
    invoke-virtual {p0, v1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 4943
    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 4947
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2c

    goto :goto_30

    .line 4952
    :cond_2c
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_3b

    .line 4949
    :cond_30
    :goto_30
    const-string v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4954
    .end local v1    # "b":Landroid/app/TaskStackBuilder;
    :goto_3b
    goto :goto_3f

    .line 4955
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 4957
    :goto_3f
    const/4 v1, 0x1

    return v1

    .line 4959
    :cond_41
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onNavigateUpFromChild(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "child"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4971
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method protected whitelist onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2446
    return-void
.end method

.method public whitelist onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Landroid/app/ComponentCaller;

    .line 2469
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2470
    return-void
.end method

.method public blacklist onNewSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 8489
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 8490
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_e

    .line 8491
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 8493
    :cond_e
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 4900
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 4901
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4903
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5020
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 5021
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 5023
    :cond_9
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4792
    sparse-switch p1, :sswitch_data_1c

    goto :goto_1b

    .line 4803
    :sswitch_4
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4804
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1b

    .line 4799
    :sswitch_e
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4800
    goto :goto_1b

    .line 4794
    :sswitch_12
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4795
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4796
    nop

    .line 4807
    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_12
        0x6 -> :sswitch_e
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method protected whitelist onPause()V
    .registers 2

    .line 2662
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPaused()V

    .line 2663
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityPaused()V

    .line 2665
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2667
    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2670
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2671
    return-void
.end method

.method public whitelist onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2805
    .local p4, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(Z)V
    .registers 2
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3121
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 3082
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    .line 3083
    return-void
.end method

.method public whitelist onPictureInPictureRequested()Z
    .registers 2

    .line 3256
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 2
    .param p1, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 3106
    return-void
.end method

.method protected whitelist onPostCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2100
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 2101
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 2102
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2105
    :cond_14
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 2107
    invoke-direct {p0, v1}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2109
    invoke-direct {p0, v1}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2111
    return-void
.end method

.method public whitelist onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 2126
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2127
    return-void
.end method

.method protected whitelist onPostResume()V
    .registers 4

    .line 2251
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2252
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 2253
    :cond_9
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2257
    :cond_13
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2261
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/autofill/AutofillClientController;->onActivityPostResumed()V

    .line 2263
    invoke-static {}, Landroid/app/jank/Flags;->detailedAppJankMetricsApi()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2264
    invoke-direct {p0}, Landroid/app/Activity;->startAppJankTracking()V

    .line 2267
    :cond_27
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 2268
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5198
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 5199
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5227
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 5228
    return-void
.end method

.method public whitelist onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .line 5010
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4875
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 4876
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4878
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 4706
    if-nez p1, :cond_e

    .line 4707
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 4708
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4709
    return v0

    .line 4711
    .end local v0    # "goforit":Z
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .registers 2
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .line 2755
    return-void
.end method

.method public whitelist onProvideAssistData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 2733
    return-void
.end method

.method public whitelist onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 14
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 2835
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    if-nez p2, :cond_3

    .line 2836
    return-void

    .line 2838
    :cond_3
    const/4 v0, 0x0

    .line 2839
    .local v0, "group":Landroid/view/KeyboardShortcutGroup;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    .line 2840
    .local v1, "menuSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_42

    .line 2841
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2842
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2843
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v5

    .line 2844
    .local v5, "alphaShortcut":C
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v6

    .line 2845
    .local v6, "alphaModifiers":I
    if-eqz v4, :cond_3f

    if-eqz v5, :cond_3f

    .line 2846
    if-nez v0, :cond_37

    .line 2847
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2848
    .local v7, "resource":I
    new-instance v8, Landroid/view/KeyboardShortcutGroup;

    if-eqz v7, :cond_32

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_33

    :cond_32
    const/4 v9, 0x0

    :goto_33
    invoke-direct {v8, v9}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v8

    .line 2850
    .end local v7    # "resource":I
    :cond_37
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v7, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    invoke-virtual {v0, v7}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 2840
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "alphaShortcut":C
    .end local v6    # "alphaModifiers":I
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2854
    .end local v2    # "i":I
    :cond_42
    if-eqz v0, :cond_47

    .line 2855
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2857
    :cond_47
    return-void
.end method

.method public whitelist onProvideReferrer()Landroid/net/Uri;
    .registers 2

    .line 7183
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 5876
    return-void
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[II)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .param p4, "deviceId"    # I

    .line 5901
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 5902
    return-void
.end method

.method protected whitelist onRestart()V
    .registers 2

    .line 2181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2182
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1994
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 1995
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1996
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 1997
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 2000
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_11
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 2029
    if-eqz p1, :cond_5

    .line 2030
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2032
    :cond_5
    return-void
.end method

.method protected whitelist onResume()V
    .registers 2

    .line 2228
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityResumed()V

    .line 2229
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V

    .line 2230
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityResumed()V

    .line 2232
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2235
    return-void
.end method

.method greylist-max-o onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3529
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 3494
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2558
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2560
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2561
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_18

    .line 2562
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2564
    :cond_18
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillClientController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2565
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V

    .line 2566
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 2585
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2586
    return-void
.end method

.method public whitelist onSearchRequested()Z
    .registers 4

    .line 5402
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 5404
    .local v0, "uiMode":I
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    .line 5406
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v1, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 5407
    const/4 v1, 0x1

    return v1

    .line 5409
    :cond_19
    return v2
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 4
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 5392
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5393
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 5394
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5395
    return v0
.end method

.method protected whitelist onStart()V
    .registers 2

    .line 2150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2152
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 2154
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStarted()V

    .line 2156
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityStarted()V

    .line 2157
    return-void
.end method

.method public whitelist onStateNotSaved()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2197
    return-void
.end method

.method protected whitelist onStop()V
    .registers 4

    .line 2891
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2892
    :cond_a
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onStop(Landroid/app/Activity;)V

    .line 2893
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStopped()V

    .line 2894
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 2895
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2897
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    iget-boolean v2, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/AutofillClientController;->onActivityStopped(Landroid/content/Intent;Z)V

    .line 2899
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2901
    return-void
.end method

.method protected whitelist onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 7949
    iget-boolean v0, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v0, :cond_1b

    .line 7950
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7951
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_12

    .line 7952
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 7953
    if-eqz p2, :cond_12

    .line 7954
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 7957
    :cond_12
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1b

    .line 7958
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 7961
    .end local v0    # "win":Landroid/view/Window;
    :cond_1b
    return-void
.end method

.method public whitelist onTopResumedActivityChanged(Z)V
    .registers 2
    .param p1, "isTopResumedActivity"    # Z

    .line 2291
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4351
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4353
    const/4 v0, 0x1

    return v0

    .line 4356
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4374
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o onTranslucentConversionComplete(Z)V
    .registers 5
    .param p1, "drawComplete"    # Z

    .line 8478
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_c

    .line 8479
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 8480
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 8482
    :cond_c
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1a

    .line 8483
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 8485
    :cond_1a
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 3573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3574
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 3575
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_11

    .line 3576
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 3578
    :cond_11
    return-void
.end method

.method public whitelist onUserInteraction()V
    .registers 1

    .line 4426
    return-void
.end method

.method protected whitelist onUserLeaveHint()V
    .registers 1

    .line 2690
    return-void
.end method

.method public whitelist onVisibleBehindCanceled()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 8572
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4432
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1e

    .line 4433
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4434
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 4435
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4436
    iget-object v1, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v1, :cond_1e

    .line 4437
    iget-object v1, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v1, p1}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4441
    .end local v0    # "decor":Landroid/view/View;
    :cond_1e
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .registers 5
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 4534
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-direct {p0, v1}, Landroid/app/Activity;->finish(I)V

    .line 4535
    if-eqz p2, :cond_e

    .line 4536
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4538
    :cond_e
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 4487
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8756
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_12

    .line 8757
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 8758
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_12

    .line 8759
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 8762
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 8772
    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8773
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 8775
    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8773
    return-object v1

    .line 8775
    :catchall_a
    move-exception v1

    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8776
    throw v1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 5096
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 5097
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .registers 4

    .line 5030
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 5031
    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 5032
    :cond_15
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 5034
    :cond_1b
    return-void
.end method

.method public whitelist overrideActivityTransition(III)V
    .registers 5
    .param p1, "overrideType"    # I
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .line 6947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->overrideActivityTransition(IIII)V

    .line 6948
    return-void
.end method

.method public whitelist overrideActivityTransition(IIII)V
    .registers 13
    .param p1, "overrideType"    # I
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "backgroundColor"    # I

    .line 6996
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 6997
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Override type must be either open or close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7000
    :cond_e
    :goto_e
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v4, v0

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "enterAnim":I
    .end local p3    # "exitAnim":I
    .end local p4    # "backgroundColor":I
    .local v5, "enterAnim":I
    .local v6, "exitAnim":I
    .local v7, "backgroundColor":I
    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityClient;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V

    .line 7002
    return-void
.end method

.method public whitelist overridePendingTransition(II)V
    .registers 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7045
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(III)V

    .line 7046
    return-void
.end method

.method public whitelist overridePendingTransition(III)V
    .registers 10
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I
    .param p3, "backgroundColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7070
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "enterAnim":I
    .end local p2    # "exitAnim":I
    .end local p3    # "backgroundColor":I
    .local v3, "enterAnim":I
    .local v4, "exitAnim":I
    .local v5, "backgroundColor":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityClient;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 7072
    return-void
.end method

.method final greylist-max-o performCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 9133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 9134
    return-void
.end method

.method final greylist-max-r performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 15
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 9138
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performCreate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9140
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9139
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9142
    :cond_25
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreCreated(Landroid/os/Bundle;)V

    .line 9143
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9145
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9146
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 9147
    .local v3, "windowingMode":I
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 9148
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_45

    move v4, v2

    goto :goto_46

    :cond_45
    move v4, v5

    :goto_46
    iput-boolean v4, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 9149
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x111014c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 9150
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 9151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 9152
    .local v6, "startTime":J
    if-eqz p2, :cond_62

    .line 9153
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_65

    .line 9155
    :cond_62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 9157
    :goto_65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 9158
    .local v8, "duration":J
    iget v4, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "performCreate"

    invoke-static {v4, v10, v11, v8, v9}, Landroid/app/EventLogTags;->writeWmOnCreateCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9160
    iget-object v4, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v4, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 9162
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v10, 0xa

    invoke-virtual {v4, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 9164
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 9165
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/app/ActivityTransitionState;->setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 9166
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostCreated(Landroid/os/Bundle;)V

    .line 9167
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9168
    return-void
.end method

.method final greylist-max-o performDestroy()V
    .registers 10

    .line 9451
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9453
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9452
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9455
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreDestroyed()V

    .line 9456
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 9457
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->destroy()V

    .line 9458
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 9459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 9460
    .local v2, "startTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 9462
    .local v4, "duration":J
    iget v6, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "performDestroy"

    invoke-static {v6, v7, v8, v4, v5}, Landroid/app/EventLogTags;->writeWmOnDestroyCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9464
    iget-object v6, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v6}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 9465
    iget-object v6, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v6, :cond_5f

    .line 9466
    iget-object v6, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v6}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 9468
    :cond_5f
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostDestroyed()V

    .line 9469
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9470
    return-void
.end method

.method final greylist-max-o performNewIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 9171
    const-string/jumbo v0, "performNewIntent"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9173
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 9174
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9175
    return-void
.end method

.method final blacklist performNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Landroid/app/ComponentCaller;

    .line 9179
    const-string/jumbo v0, "performNewIntent"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9181
    iput-object p2, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    .line 9182
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 9183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    .line 9184
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9185
    return-void
.end method

.method final greylist-max-o performPause()V
    .registers 11

    .line 9353
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9355
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9354
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9358
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->isTvImplicitEnterPipProhibited()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    .line 9359
    iput-boolean v3, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9362
    :cond_2e
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPrePaused()V

    .line 9363
    iput-boolean v3, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 9364
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchPause()V

    .line 9365
    invoke-static {}, Landroid/app/jank/Flags;->detailedAppJankMetricsApi()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 9366
    invoke-direct {p0}, Landroid/app/Activity;->stopAppJankTracking()V

    .line 9368
    :cond_41
    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 9369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9370
    .local v4, "startTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 9371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 9372
    .local v6, "duration":J
    iget v2, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "performPause"

    invoke-static {v2, v8, v9, v6, v7}, Landroid/app/EventLogTags;->writeWmOnPausedCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9374
    iput-boolean v3, p0, Landroid/app/Activity;->mResumed:Z

    .line 9375
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_95

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_70

    goto :goto_95

    .line 9377
    :cond_70
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9378
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9381
    :cond_95
    :goto_95
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostPaused()V

    .line 9382
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9383
    return-void
.end method

.method final blacklist performRestart(Z)V
    .registers 11
    .param p1, "start"    # Z

    .line 9248
    const-string/jumbo v0, "performRestart"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9249
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9250
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 9252
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_22

    .line 9254
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4, v3}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 9257
    :cond_22
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v0, :cond_da

    .line 9258
    iput-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    .line 9260
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 9261
    :try_start_2b
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9262
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    if-ge v5, v4, :cond_84

    .line 9263
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity$ManagedCursor;

    .line 9264
    .local v6, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v7

    if-nez v7, :cond_48

    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 9265
    :cond_48
    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->requery()Z

    move-result v7

    if-nez v7, :cond_7b

    .line 9266
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xe

    if-ge v7, v8, :cond_5d

    goto :goto_7b

    .line 9268
    :cond_5d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to requery an already closed cursor  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Activity;
    .end local p1    # "start":Z
    throw v1

    .line 9273
    .restart local p0    # "this":Landroid/app/Activity;
    .restart local p1    # "start":Z
    :cond_7b
    :goto_7b
    invoke-static {v6, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 9274
    invoke-static {v6, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V

    .line 9262
    .end local v6    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 9277
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_2b .. :try_end_85} :catchall_d7

    .line 9279
    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 9280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 9281
    .local v3, "startTime":J
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 9282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 9283
    .local v5, "duration":J
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "performRestart"

    invoke-static {v0, v7, v8, v5, v6}, Landroid/app/EventLogTags;->writeWmOnRestartCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9285
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_b2

    .line 9290
    if-eqz p1, :cond_da

    .line 9291
    const-string/jumbo v0, "performRestart"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    goto :goto_da

    .line 9286
    :cond_b2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9287
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onRestart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9277
    .end local v3    # "startTime":J
    .end local v5    # "duration":J
    :catchall_d7
    move-exception v1

    :try_start_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v1

    .line 9294
    :cond_da
    :goto_da
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9295
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1950
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1951
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1952
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1965
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1966
    if-eqz p1, :cond_8

    .line 1967
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1969
    :cond_8
    return-void
.end method

.method final greylist-max-o performResume(ZLjava/lang/String;)V
    .registers 13
    .param p1, "followedByPause"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 9298
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performResume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9300
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9299
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9302
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreResumed()V

    .line 9304
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9306
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 9308
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 9310
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/autofill/AutofillClientController;->onActivityPerformResume(Z)V

    .line 9312
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 9313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 9315
    .local v3, "startTime":J
    iget-object v5, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 9316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 9317
    .local v5, "duration":J
    iget v7, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2, v5, v6}, Landroid/app/EventLogTags;->writeWmOnResumeCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9319
    iget-boolean v7, p0, Landroid/app/Activity;->mCalled:Z

    const-string v8, "Activity "

    if-eqz v7, :cond_d8

    .line 9326
    iget-boolean v7, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v7, :cond_9b

    iget-boolean v7, p0, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_9b

    .line 9327
    const-string v7, "Activity"

    const-string v9, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9328
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x16

    if-gt v7, v9, :cond_78

    goto :goto_9b

    .line 9330
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9331
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call finish() prior to onResume() completing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9337
    :cond_9b
    :goto_9b
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 9339
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchResume()V

    .line 9340
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 9342
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 9343
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_b5

    .line 9348
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostResumed()V

    .line 9349
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9350
    return-void

    .line 9344
    :cond_b5
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9345
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPostResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9320
    :cond_d8
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9321
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2481
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2482
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2483
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2484
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 2485
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2487
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2488
    return-void
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 2501
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2502
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2503
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2504
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2507
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2508
    return-void
.end method

.method final greylist-max-o performStart(Ljava/lang/String;)V
    .registers 16
    .param p1, "reason"    # Ljava/lang/String;

    .line 9188
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9190
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9189
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9192
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStarted()V

    .line 9193
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/app/ActivityTransitionState;->setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 9194
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 9195
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 9196
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 9197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 9198
    .local v3, "startTime":J
    iget-object v5, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 9199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 9200
    .local v5, "duration":J
    iget v7, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, v5, v6}, Landroid/app/EventLogTags;->writeWmOnStartCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9203
    iget-boolean v7, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v7, :cond_f2

    .line 9208
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v7}, Landroid/app/FragmentController;->dispatchStart()V

    .line 9209
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v7}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 9212
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 9213
    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-eqz v7, :cond_76

    move v7, v8

    goto :goto_77

    :cond_76
    move v7, v2

    .line 9214
    .local v7, "isAppDebuggable":Z
    :goto_77
    if-eqz v7, :cond_df

    .line 9215
    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    move-result-object v9

    .line 9216
    .local v9, "dlwarning":Ljava/lang/String;
    if-eqz v9, :cond_df

    .line 9217
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 9218
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 9219
    .local v10, "appName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Detected problems with app native libraries\n(please consult log for detail):\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9221
    .local v11, "warning":Ljava/lang/String;
    if-eqz v7, :cond_c1

    .line 9222
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9223
    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 9224
    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 9225
    const v12, 0x104000a

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 9226
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 9227
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_df

    .line 9229
    :cond_c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 9234
    .end local v9    # "dlwarning":Ljava/lang/String;
    .end local v10    # "appName":Ljava/lang/String;
    .end local v11    # "warning":Ljava/lang/String;
    :cond_df
    :goto_df
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V

    .line 9236
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v2, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 9237
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStarted()V

    .line 9238
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9239
    return-void

    .line 9204
    .end local v7    # "isAppDebuggable":Z
    :cond_f2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9205
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o performStop(ZLjava/lang/String;)V
    .registers 16
    .param p1, "preserveWindow"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 9395
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9397
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9396
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9399
    :cond_25
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 9400
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 9403
    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9405
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_d1

    .line 9406
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStopped()V

    .line 9407
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_41

    .line 9408
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 9414
    :cond_41
    const/4 v3, 0x1

    if-nez p1, :cond_55

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v4, :cond_55

    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_55

    .line 9415
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 9418
    :cond_55
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->dispatchStop()V

    .line 9420
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 9421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9422
    .local v4, "startTime":J
    iget-object v6, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 9423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 9424
    .local v6, "duration":J
    iget v8, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, p2, v6, v7}, Landroid/app/EventLogTags;->writeWmOnStopCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9426
    iget-boolean v8, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v8, :cond_ac

    .line 9432
    iget-object v8, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v8

    .line 9433
    :try_start_7e
    iget-object v9, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 9434
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_85
    if-ge v10, v9, :cond_a2

    .line 9435
    iget-object v11, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity$ManagedCursor;

    .line 9436
    .local v11, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v11}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v12

    if-nez v12, :cond_9f

    .line 9437
    invoke-static {v11}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 9438
    invoke-static {v11, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 9434
    .end local v11    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_9f
    add-int/lit8 v10, v10, 0x1

    goto :goto_85

    .line 9441
    .end local v9    # "N":I
    .end local v10    # "i":I
    :cond_a2
    monitor-exit v8
    :try_end_a3
    .catchall {:try_start_7e .. :try_end_a3} :catchall_a9

    .line 9443
    iput-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    .line 9444
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStopped()V

    goto :goto_d1

    .line 9441
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v8
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0

    .line 9427
    :cond_ac
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9428
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9446
    .end local v4    # "startTime":J
    .end local v6    # "duration":J
    :cond_d1
    :goto_d1
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 9447
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9448
    return-void
.end method

.method final blacklist performTopResumedActivityChanged(ZLjava/lang/String;)V
    .registers 5
    .param p1, "isTopResumedActivity"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2294
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 2296
    if-eqz p1, :cond_13

    .line 2297
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedGainedCalled(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 2300
    :cond_13
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedLostCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 2303
    :goto_20
    return-void
.end method

.method final greylist-max-o performUserLeaving()V
    .registers 2

    .line 9386
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 9388
    invoke-direct {p0}, Landroid/app/Activity;->isTvImplicitEnterPipProhibited()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9389
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9391
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 9392
    return-void
.end method

.method public whitelist postponeEnterTransition()V
    .registers 2

    .line 8981
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 8982
    return-void
.end method

.method public whitelist recreate()V
    .registers 3

    .line 7414
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_20

    .line 7417
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 7420
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    .line 7421
    return-void

    .line 7418
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7415
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1529
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1530
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    monitor-exit v0

    .line 1532
    return-void

    .line 1531
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1551
    const-wide/32 v0, 0xb84ba9c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-nez v0, :cond_14

    .line 1553
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 1555
    :cond_14
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_1e

    .line 1556
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_21

    .line 1558
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1560
    :goto_21
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 5074
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5075
    return-void
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 9838
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 9839
    return-void
.end method

.method public whitelist registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/Activity$ScreenCaptureCallback;

    .line 10034
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    if-nez v0, :cond_d

    .line 10035
    new-instance v0, Landroid/app/ScreenCaptureCallbackHandler;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/app/ScreenCaptureCallbackHandler;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    .line 10037
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ScreenCaptureCallbackHandler;->registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V

    .line 10038
    return-void
.end method

.method public whitelist releaseInstance()Z
    .registers 3

    .line 7568
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeDialog(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5358
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_18

    .line 5359
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5360
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_18

    .line 5361
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5362
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5365
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_18
    return-void
.end method

.method public whitelist reportFullyDrawn()V
    .registers 6

    .line 3008
    iget-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v0, :cond_47

    .line 3009
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFullyDrawn() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 3011
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3010
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3013
    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 3015
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-boolean v4, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityClient;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 3017
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->notifyStartupCompleted()V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_42

    .line 3019
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3020
    goto :goto_47

    .line 3019
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3020
    throw v2

    .line 3022
    :cond_47
    :goto_47
    return-void
.end method

.method public whitelist requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 9001
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    .line 9002
    .local v0, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9003
    return-object v0

    .line 9005
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist requestFullscreenMode(ILandroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "request"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3283
    .local p2, "approvalCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Throwable;>;"
    iget-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 3284
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 3283
    invoke-static {p1, p2, v0, v1}, Landroid/app/FullscreenRequestHandler;->requestFullscreenMode(ILandroid/os/OutcomeReceiver;Landroid/content/res/Configuration;Landroid/os/IBinder;)V

    .line 3285
    return-void
.end method

.method public final whitelist requestOpenInBrowserEducation()V
    .registers 3

    .line 1302
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->requestOpenInBrowserEducation(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1305
    goto :goto_b

    .line 1303
    :catch_a
    move-exception v0

    .line 1306
    :goto_b
    return-void
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;I)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 5707
    invoke-virtual {p0}, Landroid/app/Activity;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;II)V

    .line 5708
    return-void
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;II)V
    .registers 16
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "deviceId"    # I

    .line 5779
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 5780
    new-array v0, v2, [Ljava/lang/String;

    new-array v1, v2, [I

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 5783
    :cond_12
    if-ltz p2, :cond_d2

    .line 5787
    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    const-string v1, "Activity"

    if-eqz v0, :cond_27

    .line 5788
    const-string v0, "Can request only one set of permissions at a time"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    new-array v0, v2, [Ljava/lang/String;

    new-array v1, v2, [I

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 5791
    return-void

    .line 5794
    :cond_27
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 5795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    array-length v3, p1

    if-ge v0, v3, :cond_67

    .line 5796
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 5795
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 5797
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request renounced permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5803
    .end local v0    # "i":I
    :cond_67
    invoke-virtual {p0}, Landroid/app/Activity;->getDeviceId()I

    move-result v0

    if-ne v0, p3, :cond_6f

    move-object v0, p0

    goto :goto_73

    :cond_6f
    invoke-virtual {p0, p3}, Landroid/app/Activity;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    .line 5804
    .local v0, "context":Landroid/content/Context;
    :goto_73
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->permissionRequestShortCircuitEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_bd

    .line 5805
    invoke-direct {p0, v0, p1}, Landroid/app/Activity;->getPermissionRequestStates(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v3

    .line 5806
    .local v3, "permissionsState":[I
    const/4 v5, 0x0

    .line 5807
    .local v5, "hasRequestablePermission":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_80
    array-length v7, v3

    if-ge v6, v7, :cond_8c

    .line 5808
    aget v7, v3, v6

    if-ne v7, v4, :cond_89

    .line 5809
    const/4 v5, 0x1

    .line 5810
    goto :goto_8c

    .line 5807
    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 5814
    .end local v6    # "i":I
    :cond_8c
    :goto_8c
    if-nez v5, :cond_b8

    .line 5815
    iput-boolean v4, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5816
    const-string v4, "No requestable permission in the request."

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    array-length v1, v3

    new-array v10, v1, [I

    .line 5818
    .local v10, "results":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_99
    array-length v4, v3

    if-ge v1, v4, :cond_a9

    .line 5819
    aget v4, v3, v1

    if-nez v4, :cond_a3

    .line 5820
    aput v2, v10, v1

    goto :goto_a6

    .line 5822
    :cond_a3
    const/4 v4, -0x1

    aput v4, v10, v1

    .line 5818
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 5827
    .end local v1    # "i":I
    :cond_a9
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/app/Activity$$ExternalSyntheticLambda1;

    move-object v7, p0

    move-object v9, p1

    move v8, p2

    move v11, p3

    .end local p1    # "permissions":[Ljava/lang/String;
    .end local p2    # "requestCode":I
    .end local p3    # "deviceId":I
    .local v8, "requestCode":I
    .local v9, "permissions":[Ljava/lang/String;
    .local v11, "deviceId":I
    invoke-direct/range {v6 .. v11}, Landroid/app/Activity$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;I[Ljava/lang/String;[II)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5831
    return-void

    .line 5814
    .end local v8    # "requestCode":I
    .end local v9    # "permissions":[Ljava/lang/String;
    .end local v10    # "results":[I
    .end local v11    # "deviceId":I
    .restart local p1    # "permissions":[Ljava/lang/String;
    .restart local p2    # "requestCode":I
    .restart local p3    # "deviceId":I
    :cond_b8
    move-object v7, p0

    move-object v9, p1

    move v8, p2

    move v11, p3

    .end local p1    # "permissions":[Ljava/lang/String;
    .end local p2    # "requestCode":I
    .end local p3    # "deviceId":I
    .restart local v8    # "requestCode":I
    .restart local v9    # "permissions":[Ljava/lang/String;
    .restart local v11    # "deviceId":I
    goto :goto_c1

    .line 5804
    .end local v3    # "permissionsState":[I
    .end local v5    # "hasRequestablePermission":Z
    .end local v8    # "requestCode":I
    .end local v9    # "permissions":[Ljava/lang/String;
    .end local v11    # "deviceId":I
    .restart local p1    # "permissions":[Ljava/lang/String;
    .restart local p2    # "requestCode":I
    .restart local p3    # "deviceId":I
    :cond_bd
    move-object v7, p0

    move-object v9, p1

    move v8, p2

    move v11, p3

    .line 5835
    .end local p1    # "permissions":[Ljava/lang/String;
    .end local p2    # "requestCode":I
    .end local p3    # "deviceId":I
    .restart local v8    # "requestCode":I
    .restart local v9    # "permissions":[Ljava/lang/String;
    .restart local v11    # "deviceId":I
    :goto_c1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 5836
    .local p1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 5837
    .local p2, "intent":Landroid/content/Intent;
    const-string p3, "@android:requestPermissions:"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, p2, v8, v1}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5838
    iput-boolean v4, v7, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5839
    return-void

    .line 5784
    .end local v0    # "context":Landroid/content/Context;
    .end local v8    # "requestCode":I
    .end local v9    # "permissions":[Ljava/lang/String;
    .end local v11    # "deviceId":I
    .local p1, "permissions":[Ljava/lang/String;
    .local p2, "requestCode":I
    .restart local p3    # "deviceId":I
    :cond_d2
    move-object v9, p1

    move v8, p2

    .end local p1    # "permissions":[Ljava/lang/String;
    .end local p2    # "requestCode":I
    .restart local v8    # "requestCode":I
    .restart local v9    # "permissions":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "requestCode should be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist requestShowKeyboardShortcuts()V
    .registers 4

    .line 2812
    nop

    .line 2813
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2812
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2815
    .local v0, "sysuiComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2816
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2817
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2818
    return-void
.end method

.method public whitelist requestVisibleBehind(Z)Z
    .registers 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8549
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist requestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .line 5502
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3797
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3798
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_7

    .line 3801
    return-object v0

    .line 3799
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .registers 7

    .line 3533
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 3534
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 3535
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v2

    .line 3541
    .local v2, "fragments":Landroid/app/FragmentManagerNonConfig;
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 3542
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 3543
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3545
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_2d

    if-nez v1, :cond_2d

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    iget-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v4, :cond_2d

    .line 3547
    const/4 v4, 0x0

    return-object v4

    .line 3550
    :cond_2d
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 3551
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 3552
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 3553
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    .line 3554
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 3555
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_47

    .line 3556
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 3557
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 3559
    :cond_47
    return-object v4
.end method

.method public final whitelist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 8155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 8156
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 8158
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8160
    :goto_11
    return-void
.end method

.method public whitelist setActionBar(Landroid/widget/Toolbar;)V
    .registers 6
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .line 3831
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3832
    .local v0, "ab":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-nez v1, :cond_32

    .line 3840
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3843
    if-eqz v0, :cond_10

    .line 3844
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 3847
    :cond_10
    if-eqz p1, :cond_27

    .line 3848
    new-instance v1, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 3849
    .local v1, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3850
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3851
    .end local v1    # "tbab":Lcom/android/internal/app/ToolbarActionBar;
    goto :goto_2e

    .line 3852
    :cond_27
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3854
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3857
    :goto_2e
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3858
    return-void

    .line 3833
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setActivityRecordInputSinkEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 9890
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V

    .line 9891
    return-void
.end method

.method public whitelist setAllowCrossUidActivitySwitchFromBelow(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 9826
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V

    .line 9827
    return-void
.end method

.method public whitelist setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 3964
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 3965
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 3892
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 3893
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3894
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 3912
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 3913
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3914
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3928
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3929
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3930
    return-void
.end method

.method public final whitelist setDefaultKeyMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 4063
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 4067
    packed-switch p1, :pswitch_data_1e

    .line 4079
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4075
    :pswitch_b
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 4076
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4077
    goto :goto_1d

    .line 4070
    :pswitch_19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 4071
    nop

    .line 4081
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_b
        :pswitch_19
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 9725
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRecentsScreenshotEnabled(Z)V

    .line 9726
    return-void
.end method

.method public whitelist setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 8943
    if-nez p1, :cond_4

    .line 8944
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 8946
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 8947
    return-void
.end method

.method public whitelist setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 8959
    if-nez p1, :cond_4

    .line 8960
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 8962
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 8963
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 5526
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 5527
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 5534
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 5535
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 5510
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 5511
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 5518
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 5519
    return-void
.end method

.method public whitelist setFinishOnTouchOutside(Z)V
    .registers 3
    .param p1, "finish"    # Z

    .line 3984
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 3985
    return-void
.end method

.method public final blacklist setForceSendResultForMediaProjection()V
    .registers 3

    .line 7104
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V

    .line 7105
    return-void
.end method

.method public whitelist setImmersive(Z)V
    .registers 4
    .param p1, "i"    # Z

    .line 8650
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setImmersive(Landroid/os/IBinder;Z)V

    .line 8651
    return-void
.end method

.method public whitelist setInheritShowWhenLocked(Z)V
    .registers 4
    .param p1, "inheritShowWhenLocked"    # Z

    .line 9783
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9784
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Activity;->internalSetIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 1180
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 3
    .param p1, "newIntent"    # Landroid/content/Intent;
    .param p2, "newCaller"    # Landroid/app/ComponentCaller;

    .line 1224
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->internalSetIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 1225
    return-void
.end method

.method public whitelist setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1259
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1262
    goto :goto_10

    .line 1260
    :catch_c
    move-exception v0

    .line 1261
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1264
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_10
    if-eqz p1, :cond_15

    .line 1265
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V

    .line 1267
    :cond_15
    return-void
.end method

.method public final whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 8133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 8134
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 9660
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 9661
    return-void
.end method

.method final greylist-max-p setParent(Landroid/app/Activity;)V
    .registers 2
    .param p1, "parent"    # Landroid/app/Activity;

    .line 9012
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 9013
    return-void
.end method

.method public greylist setPersistent(Z)V
    .registers 2
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3757
    return-void
.end method

.method public whitelist setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .registers 4
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 3205
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3206
    return-void

    .line 3208
    :cond_7
    if-eqz p1, :cond_13

    .line 3211
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 3212
    return-void

    .line 3209
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setProgress(I)V
    .registers 5
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8059
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8060
    return-void
.end method

.method public final whitelist setProgressBarIndeterminate(Z)V
    .registers 5
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8041
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 8042
    if-eqz p1, :cond_8

    const/4 v1, -0x3

    goto :goto_9

    .line 8043
    :cond_8
    const/4 v1, -0x4

    .line 8041
    :goto_9
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8044
    return-void
.end method

.method public final whitelist setProgressBarIndeterminateVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8025
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 8026
    if-eqz p1, :cond_8

    const/4 v1, -0x1

    goto :goto_9

    :cond_8
    const/4 v1, -0x2

    .line 8025
    :goto_9
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8027
    return-void
.end method

.method public final whitelist setProgressBarVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8010
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, -0x1

    goto :goto_9

    .line 8011
    :cond_8
    const/4 v1, -0x2

    .line 8010
    :goto_9
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8012
    return-void
.end method

.method public whitelist setRecentsScreenshotEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 9747
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 9748
    return-void
.end method

.method public whitelist setRequestedOrientation(I)V
    .registers 4
    .param p1, "requestedOrientation"    # I

    .line 7720
    iget v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    if-ne p1, v0, :cond_5

    .line 7721
    return-void

    .line 7723
    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_13

    .line 7724
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRequestedOrientation(Landroid/os/IBinder;I)V

    goto :goto_18

    .line 7726
    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7728
    :goto_18
    iput p1, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    .line 7729
    return-void
.end method

.method public final whitelist setResult(I)V
    .registers 3
    .param p1, "resultCode"    # I

    .line 7087
    monitor-enter p0

    .line 7088
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 7089
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 7090
    monitor-exit p0

    .line 7091
    return-void

    .line 7090
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final whitelist setResult(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 7130
    monitor-enter p0

    .line 7131
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 7132
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 7133
    monitor-exit p0

    .line 7134
    return-void

    .line 7133
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final whitelist setSecondaryProgress(I)V
    .registers 5
    .param p1, "secondaryProgress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8078
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit16 v1, p1, 0x4e20

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8080
    return-void
.end method

.method public whitelist setShouldDockBigOverlays(Z)V
    .registers 4
    .param p1, "shouldDockBigOverlays"    # Z

    .line 3306
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 3307
    iput-boolean p1, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 3308
    return-void
.end method

.method public whitelist setShowWhenLocked(Z)V
    .registers 4
    .param p1, "showWhenLocked"    # Z

    .line 9764
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9765
    return-void
.end method

.method public whitelist setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 7979
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eq v0, p1, :cond_2b

    .line 7980
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V

    .line 7982
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 7983
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    .line 7984
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7986
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 7989
    .end local v0    # "size":I
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_2b
    iget v0, p0, Landroid/app/Activity;->mLastTaskDescriptionHashCode:I

    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 7993
    return-void

    .line 7995
    :cond_36
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/app/Activity;->mLastTaskDescriptionHashCode:I

    .line 7996
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 7997
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .line 5565
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 5566
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    .line 5567
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 3
    .param p1, "titleId"    # I

    .line 7921
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7922
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7906
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 7907
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 7909
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 7910
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 7912
    :cond_10
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7936
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 7937
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 7938
    return-void
.end method

.method public whitelist setTranslucent(Z)Z
    .registers 3
    .param p1, "translucent"    # Z

    .line 8405
    if-eqz p1, :cond_8

    .line 8406
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 8408
    :cond_8
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist setTurnScreenOn(Z)V
    .registers 4
    .param p1, "turnScreenOn"    # Z

    .line 9806
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 9807
    return-void
.end method

.method public whitelist setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 7353
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_16

    .line 7354
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 7355
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_16

    .line 7356
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    goto :goto_16

    .line 7357
    :cond_10
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7360
    :cond_16
    :goto_16
    return-void
.end method

.method greylist-max-o setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 7
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2306
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_21

    .line 2307
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v0

    .line 2308
    .local v0, "requests":[Landroid/app/VoiceInteractor$Request;
    if-eqz v0, :cond_21

    .line 2309
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 2310
    .local v4, "activeRequest":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->cancel()V

    .line 2311
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 2309
    .end local v4    # "activeRequest":Landroid/app/VoiceInteractor$Request;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2315
    .end local v0    # "requests":[Landroid/app/VoiceInteractor$Request;
    :cond_21
    if-nez p1, :cond_27

    .line 2316
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_32

    .line 2318
    :cond_27
    new-instance v0, Landroid/app/VoiceInteractor;

    .line 2319
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, p0, v1}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 2321
    :goto_32
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 8099
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 8100
    return-void
.end method

.method public whitelist setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "requestedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8709
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_d

    .line 8712
    return-void

    .line 8710
    :cond_d
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist shouldDockBigOverlays()Z
    .registers 2

    .line 3320
    iget-boolean v0, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    return v0
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 5915
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 5935
    invoke-virtual {p0}, Landroid/app/Activity;->getDeviceId()I

    move-result v0

    if-ne v0, p2, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_13

    .line 5936
    :cond_b
    invoke-virtual {p0, p2}, Landroid/app/Activity;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_13
    nop

    .line 5937
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist shouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 9
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 8816
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8817
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 8818
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_10

    .line 8819
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 8821
    :cond_10
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 8822
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v4, :cond_19

    .line 8823
    return v0

    .line 8825
    :cond_19
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityClient;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_25} :catch_26

    return v0

    .line 8826
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :catch_26
    move-exception v1

    .line 8827
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public whitelist showAssist(Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .line 2870
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final whitelist showDialog(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 5242
    return-void
.end method

.method public final whitelist showDialog(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5276
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 5277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 5279
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5280
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_31

    .line 5281
    new-instance v1, Landroid/app/Activity$ManagedDialog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity-IA;)V

    move-object v0, v1

    .line 5282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 5283
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2c

    .line 5284
    const/4 v1, 0x0

    return v1

    .line 5286
    :cond_2c
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5289
    :cond_31
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 5290
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 5291
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5292
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist showLockTaskEscapeMessage()V
    .registers 3

    .line 9636
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 9637
    return-void
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8724
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 8738
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 6474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6475
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6501
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v4, p0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "intents":[Landroid/content/Intent;
    .end local p2    # "options":Landroid/os/Bundle;
    .local v5, "intents":[Landroid/content/Intent;
    .local v6, "options":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6503
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6425
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6451
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/view/autofill/AutofillClientController;->onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 6452
    const/4 v0, -0x1

    if-eqz p2, :cond_10

    .line 6453
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_13

    .line 6457
    :cond_10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6459
    :goto_13
    return-void
.end method

.method public greylist-max-o startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .line 6262
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "options":Landroid/os/Bundle;
    .end local p3    # "ignoreTargetSecurity":Z
    .end local p4    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "options":Landroid/os/Bundle;
    .local v3, "ignoreTargetSecurity":Z
    .local v4, "userId":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V

    .line 6263
    return-void
.end method

.method public blacklist startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I
    .param p5, "requestCode"    # I

    .line 6273
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_35

    .line 6276
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 6277
    .end local p2    # "options":Landroid/os/Bundle;
    .local v7, "options":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6279
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6278
    move-object v4, p0

    move-object v1, p0

    move-object v5, p1

    move v8, p3

    move v9, p4

    move v6, p5

    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 6281
    move-object v8, v7

    .end local v7    # "options":Landroid/os/Bundle;
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    .local v8, "options":Landroid/os/Bundle;
    if-eqz v0, :cond_31

    .line 6282
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6283
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v6

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v7

    .line 6282
    move v5, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6285
    :cond_31
    invoke-direct {p0, v8}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6286
    return-void

    .line 6274
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    .end local v8    # "options":Landroid/os/Bundle;
    .restart local p2    # "options":Landroid/os/Bundle;
    :cond_35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t be called from a child"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 6229
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_37

    .line 6232
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 6233
    .end local p2    # "options":Landroid/os/Bundle;
    .local v7, "options":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6235
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6234
    const/4 v6, -0x1

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 6237
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_33

    .line 6238
    iget-object v8, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v9, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6239
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v12

    .line 6240
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v13

    .line 6238
    const/4 v11, -0x1

    invoke-virtual/range {v8 .. v13}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6242
    :cond_33
    invoke-direct {p0, v7}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6243
    return-void

    .line 6230
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    .end local v7    # "options":Landroid/os/Bundle;
    .restart local p2    # "options":Landroid/os/Bundle;
    :cond_37
    move-object/from16 v0, p2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t be called from a child"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 6209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6210
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 5954
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5955
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 5994
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v2, :cond_39

    .line 5995
    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 5996
    .end local p3    # "options":Landroid/os/Bundle;
    .local v7, "options":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5998
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5997
    move-object v4, p0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 6000
    move-object v9, v7

    .end local v7    # "options":Landroid/os/Bundle;
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    .local v9, "options":Landroid/os/Bundle;
    if-eqz v8, :cond_2f

    .line 6001
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6002
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    .line 6003
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    .line 6001
    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6005
    :cond_2f
    if-ltz p2, :cond_34

    .line 6013
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 6016
    :cond_34
    invoke-direct {p0, v9}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6018
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    move-object v0, v9

    goto :goto_47

    .line 6019
    .end local v9    # "options":Landroid/os/Bundle;
    .restart local p3    # "options":Landroid/os/Bundle;
    :cond_39
    if-eqz p3, :cond_41

    .line 6020
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_46

    .line 6024
    :cond_41
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 6027
    :goto_46
    move-object v0, p3

    .end local p3    # "options":Landroid/os/Bundle;
    .local v0, "options":Landroid/os/Bundle;
    :goto_47
    return-void
.end method

.method public greylist-max-r startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 15
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 6832
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6833
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 6834
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6836
    :cond_b
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 6837
    .end local p4    # "options":Landroid/os/Bundle;
    .local v9, "options":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6839
    invoke-virtual {p4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6838
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .end local p1    # "who":Ljava/lang/String;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "requestCode":I
    .local v6, "who":Ljava/lang/String;
    .local v7, "intent":Landroid/content/Intent;
    .local v8, "requestCode":I
    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    .line 6841
    move v7, v8

    move-object p3, v9

    .end local v8    # "requestCode":I
    .end local v9    # "options":Landroid/os/Bundle;
    .local v7, "requestCode":I
    .local p1, "ar":Landroid/app/Instrumentation$ActivityResult;
    .restart local p2    # "intent":Landroid/content/Intent;
    .local p3, "options":Landroid/os/Bundle;
    if-eqz p1, :cond_34

    .line 6842
    iget-object v4, v3, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v5, v3, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6844
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v8

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v9

    .line 6842
    invoke-virtual/range {v4 .. v9}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6846
    :cond_34
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6847
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6139
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "requestCode":I
    .end local p3    # "options":Landroid/os/Bundle;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v1, "intent":Landroid/content/Intent;
    .local v3, "requestCode":I
    .local v4, "options":Landroid/os/Bundle;
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6140
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6101
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6179
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_39

    .line 6182
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 6183
    .end local p4    # "options":Landroid/os/Bundle;
    .local v8, "options":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6184
    invoke-virtual {p4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6183
    move-object v2, p0

    move-object v6, p1

    move-object v5, p2

    move v7, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p4

    .line 6186
    move-object v0, v8

    .end local v8    # "options":Landroid/os/Bundle;
    .local v0, "options":Landroid/os/Bundle;
    .local p4, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz p4, :cond_30

    .line 6187
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6188
    invoke-virtual {p4}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    invoke-virtual {p4}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 6187
    move v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6190
    :cond_30
    if-ltz p3, :cond_35

    .line 6198
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 6201
    :cond_35
    invoke-direct {p0, v0}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6202
    return-void

    .line 6180
    .end local v0    # "options":Landroid/os/Bundle;
    .local p4, "options":Landroid/os/Bundle;
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6729
    return-void
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 16
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6755
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 6756
    .end local p4    # "options":Landroid/os/Bundle;
    .local v7, "options":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6758
    invoke-virtual {p4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6757
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p4

    .line 6760
    move-object v0, v7

    .end local v7    # "options":Landroid/os/Bundle;
    .local v0, "options":Landroid/os/Bundle;
    .local p4, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz p4, :cond_2b

    .line 6761
    iget-object v5, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6763
    invoke-virtual {p4}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v9

    invoke-virtual {p4}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v10

    .line 6761
    move v8, p3

    invoke-virtual/range {v5 .. v10}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6765
    :cond_2b
    invoke-direct {p0, v0}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6766
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6788
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6816
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6817
    return-void
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;I)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 6578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 6614
    move/from16 v8, p2

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_3b

    .line 6615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivity: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 6614
    :cond_3b
    move-object/from16 v11, p3

    .line 6618
    :goto_3d
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_89

    .line 6619
    const/4 v12, 0x1

    .line 6621
    .local v12, "result":I
    :try_start_42
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    move-object v13, v0

    .line 6622
    .local v13, "referrer":Landroid/net/Uri;
    if-eqz v13, :cond_4e

    .line 6623
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6625
    :cond_4e
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6626
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6627
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6628
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6629
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6630
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6628
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_79} :catch_7b

    move v12, v0

    .line 6634
    .end local v13    # "referrer":Landroid/net/Uri;
    goto :goto_7c

    .line 6632
    :catch_7b
    move-exception v0

    .line 6636
    :goto_7c
    invoke-static {v12, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6638
    const/4 v0, 0x1

    if-ltz p2, :cond_84

    .line 6646
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 6648
    :cond_84
    if-eq v12, v0, :cond_87

    goto :goto_88

    :cond_87
    const/4 v0, 0x0

    :goto_88
    return v0

    .line 6651
    .end local v12    # "result":I
    :cond_89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6522
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .local v1, "intent":Landroid/content/IntentSender;
    .local v2, "fillInIntent":Landroid/content/Intent;
    .local v3, "flagsMask":I
    .local v4, "flagsValues":I
    .local v5, "extraFlags":I
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6524
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6550
    if-eqz p6, :cond_f

    .line 6551
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_19

    .line 6556
    :cond_f
    const/4 v5, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6559
    :goto_19
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 15
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6307
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "requestCode":I
    .end local p3    # "fillInIntent":Landroid/content/Intent;
    .end local p4    # "flagsMask":I
    .end local p5    # "flagsValues":I
    .end local p6    # "extraFlags":I
    .local v1, "intent":Landroid/content/IntentSender;
    .local v2, "requestCode":I
    .local v3, "fillInIntent":Landroid/content/Intent;
    .local v4, "flagsMask":I
    .local v5, "flagsValues":I
    .local v6, "extraFlags":I
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6309
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6352
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_12

    .line 6353
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_2f

    .line 6355
    :cond_12
    if-eqz p7, :cond_23

    .line 6356
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_2f

    .line 6361
    :cond_23
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6364
    :goto_2f
    return-void
.end method

.method public blacklist startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6319
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6321
    return-void
.end method

.method public greylist-max-o startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6374
    move-object/from16 v4, p4

    move-object/from16 v1, p7

    :try_start_4
    invoke-direct {p0, v1}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_5a

    .line 6375
    .end local p7    # "options":Landroid/os/Bundle;
    .local v11, "options":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 6376
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 6377
    :try_start_b
    invoke-virtual {v4, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6378
    invoke-virtual {v4, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6379
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v5, v0

    goto :goto_1d

    .line 6376
    :cond_1c
    move-object v5, v0

    .line 6381
    .end local v0    # "resolvedType":Ljava/lang/String;
    .local v5, "resolvedType":Ljava/lang/String;
    :goto_1d
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6382
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 6383
    const/4 v12, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    goto :goto_30

    :cond_2f
    move-object v2, v12

    .line 6384
    :goto_30
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_38

    :cond_37
    move-object v3, v12

    :goto_38
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6382
    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    .line 6387
    .local v0, "result":I
    const/16 v1, -0x60

    if-eq v0, v1, :cond_52

    .line 6390
    invoke-static {v0, v12}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6392
    if-eqz v11, :cond_51

    .line 6395
    invoke-direct {p0, v11}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6398
    .end local v0    # "result":I
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_51
    goto :goto_5c

    .line 6388
    .restart local v0    # "result":I
    .restart local v5    # "resolvedType":Ljava/lang/String;
    :cond_52
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local v11    # "options":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/Activity;
    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "requestCode":I
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .end local p5    # "flagsMask":I
    .end local p6    # "flagsValues":I
    throw v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_58} :catch_58

    .line 6397
    .end local v0    # "result":I
    .end local v5    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "options":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/Activity;
    .restart local p1    # "intent":Landroid/content/IntentSender;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "requestCode":I
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local p5    # "flagsMask":I
    .restart local p6    # "flagsValues":I
    :catch_58
    move-exception v0

    goto :goto_5c

    .end local v11    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catch_5a
    move-exception v0

    move-object v11, v1

    .line 6399
    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v11    # "options":Landroid/os/Bundle;
    :goto_5c
    if-ltz p3, :cond_61

    .line 6407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 6409
    :cond_61
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 17
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6868
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6870
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6886
    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6888
    return-void
.end method

.method public whitelist startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "privateOptions"    # Landroid/os/Bundle;

    .line 2391
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2392
    return-void
.end method

.method public whitelist startLockTask()V
    .registers 3

    .line 9607
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9608
    return-void
.end method

.method public whitelist startManagingCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3713
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3714
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3715
    monitor-exit v0

    .line 3716
    return-void

    .line 3715
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6694
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_18

    .line 6696
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6697
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6698
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6699
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityTaskManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 6698
    return v0

    .line 6700
    :catch_15
    move-exception v0

    .line 6703
    const/4 v0, 0x0

    return v0

    .line 6706
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startPostponedEnterTransition()V
    .registers 2

    .line 8990
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 8991
    return-void
.end method

.method public whitelist startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .line 5459
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5460
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "initialQuery":Ljava/lang/String;
    .end local p2    # "selectInitialQuery":Z
    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .end local p4    # "globalSearch":Z
    .local v1, "initialQuery":Ljava/lang/String;
    .local v2, "selectInitialQuery":Z
    .local v4, "appSearchData":Landroid/os/Bundle;
    .local v5, "globalSearch":Z
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 5462
    return-void
.end method

.method public whitelist stopLocalVoiceInteraction()V
    .registers 3

    .line 2417
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 2418
    return-void
.end method

.method public whitelist stopLockTask()V
    .registers 3

    .line 9627
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9628
    return-void
.end method

.method public whitelist stopManagingCursor(Landroid/database/Cursor;)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3737
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3738
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3739
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_23

    .line 3740
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedCursor;

    .line 3741
    .local v3, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    if-ne v4, p1, :cond_20

    .line 3742
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3743
    goto :goto_23

    .line 3739
    .end local v3    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3746
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_23
    :goto_23
    monitor-exit v0

    .line 3747
    return-void

    .line 3746
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .line 5487
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 5488
    return-void
.end method

.method public whitelist triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .line 5475
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5476
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 5477
    return-void
.end method

.method public whitelist unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1544
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1545
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1546
    monitor-exit v0

    .line 1547
    return-void

    .line 1546
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1564
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_a

    .line 1565
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_d

    .line 1567
    :cond_a
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1569
    :goto_d
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 5085
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5086
    return-void
.end method

.method public blacklist unregisterRemoteAnimations()V
    .registers 3

    .line 9848
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 9849
    return-void
.end method

.method public whitelist unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Activity$ScreenCaptureCallback;

    .line 10046
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    if-eqz v0, :cond_9

    .line 10047
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    invoke-virtual {v0, p1}, Landroid/app/ScreenCaptureCallbackHandler;->unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V

    .line 10049
    :cond_9
    return-void
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 14
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 9858
    .local p4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-nez v0, :cond_f

    .line 9859
    new-instance v0, Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/translation/UiTranslationController;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    .line 9861
    :cond_f
    iget-object v2, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "state":I
    .end local p2    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local p3    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p4    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p5    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .local v3, "state":I
    .local v4, "sourceSpec":Landroid/view/translation/TranslationSpec;
    .local v5, "targetSpec":Landroid/view/translation/TranslationSpec;
    .local v6, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v7, "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual/range {v2 .. v7}, Landroid/view/translation/UiTranslationController;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 9863
    return-void
.end method
